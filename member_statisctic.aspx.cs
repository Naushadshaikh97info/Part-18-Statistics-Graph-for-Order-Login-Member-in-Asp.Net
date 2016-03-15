using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class apanel_member_statisctic : System.Web.UI.Page
{
    cosmicDataContext linq_obj = new cosmicDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
            return;
        fill_data();
        fill_total(); 
    }
    private void fill_total()
    {
        int total = 0, avg = 0;
        var id4 = (from a in linq_obj.order_details
                   select a).ToList();

        for (int i = 0; i < id4.Count(); i++)
        {
            total += Convert.ToInt32(id4[i].total_amt);
        }
        lbl_total.Text = total.ToString();
    }
    private void fill_data()
    {
        try
        {
          //  var id1 = linq_obj.order_details.GroupBy(p => p.fk_memberid, p => p.mobileno, (key, g) => new { fk_memberid = key, mobileno = g.ToList() });

            var id = (from a in linq_obj.order_details
                       // join b in linq_obj.registration_msts on a.fk_memberid equals b.intglcode into j1
                       // from j2 in j1.DefaultIfEmpty()

                      group a by a.fk_memberid into groups
                      orderby groups.Sum(x => Convert.ToInt32(x.total_amt))
                      //groups.First();
                      select new
                      {
                          fk_memberid = groups.Key,
                          mobileno=groups.First().city,
                          total_amt = groups.Sum(x => Convert.ToInt32(x.total_amt))



                      
                      }).ToList();

            grid_member.DataSource = id;
            grid_member.DataBind();

        }
        catch (Exception ex)
        {
        }
    }
    protected void grid_member_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
             int total = 0,avg=0;
            var id4 = (from a in linq_obj.order_details
                       select a).ToList();

            for (int i = 0;  i< id4.Count(); i++)
            {
                total += Convert.ToInt32(id4[i].total_amt);
            }
            //  avg =     total  *    
                       
           

            int uservalue = Convert.ToInt32(e.Row.Cells[2].Text);


            avg = uservalue * 100 / total;

            int lengthOfProgress = avg;
            Image progressImage = (Image)e.Row.FindControl("ProgressImage");
            progressImage.Width = lengthOfProgress;

        }
    }
}