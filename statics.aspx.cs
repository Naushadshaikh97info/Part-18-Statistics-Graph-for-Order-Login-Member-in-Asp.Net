using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class apanel_statics : System.Web.UI.Page
{
    cosmicDataContext linq_obj = new cosmicDataContext();
    static string page_no = "";
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
            page_no = "abc";
            var id = (from a in linq_obj.order_details
                      // join b in linq_obj.registration_msts on a.fk_memberid equals b.intglcode into j1
                      // from j2 in j1.DefaultIfEmpty()

                      group a by a.email into groups
                      orderby groups.Sum(x => Convert.ToInt32(x.total_amt))
                      //groups.First();
                      select new
                      {
                          date = groups.Key,
                          //  mobileno = groups.First().city,
                          amount = groups.Sum(x => Convert.ToInt32(x.total_amt))




                      }).ToList();

            grid_member.DataSource = id;
            grid_member.DataBind();

            //var id = (from a in linq_obj.order_details
            //          orderby a.intglcode descending
            //          select new

            //          {
            //              data = a.today_date.Value.Month +"-"+ a.today_date.Value.Day +"-"+ a.today_date.Value.Year,
            //              rs = "$" + a.total_amt 

            //          }).ToList();
            //cTestChart.DataSource = id;
            //cTestChart.DataBind();
        }
        catch (Exception ex)
        {
        }
    }
   
    private void with_search()
    {
        try
        {

            page_no = "xyz";
            if (ddl_month.SelectedIndex != 0 && ddl_year.SelectedIndex == 0)
            {
                var id = (from a in linq_obj.order_details
                          // join b in linq_obj.registration_msts on a.fk_memberid equals b.intglcode into j1
                          // from j2 in j1.DefaultIfEmpty()
                          where a.address == ddl_month.SelectedItem.Text
                          group a by a.email into groups
                          orderby groups.Sum(x => Convert.ToInt32(x.total_amt))
                          //groups.First();

                          select new
                          {
                              date = groups.Key,
                              //  mobileno = groups.First().city,
                              amount = groups.Sum(x => Convert.ToInt32(x.total_amt))




                          }).ToList();

                grid_member.DataSource = id;
                grid_member.DataBind();
            }
            else if (ddl_month.SelectedIndex == 0 && ddl_year.SelectedIndex != 0)
            {
                var id = (from a in linq_obj.order_details
                          // join b in linq_obj.registration_msts on a.fk_memberid equals b.intglcode into j1
                          // from j2 in j1.DefaultIfEmpty()
                          where a.country == ddl_year.SelectedItem.Text
                          group a by a.email into groups
                          orderby groups.Sum(x => Convert.ToInt32(x.total_amt))
                          //groups.First();

                          select new
                          {
                              date = groups.Key,
                              //  mobileno = groups.First().city,
                              amount = groups.Sum(x => Convert.ToInt32(x.total_amt))




                          }).ToList();

                grid_member.DataSource = id;
                grid_member.DataBind();
            }
            else if (ddl_month.SelectedIndex != 0 && ddl_year.SelectedIndex != 0)
            {
                var id = (from a in linq_obj.order_details
                          // join b in linq_obj.registration_msts on a.fk_memberid equals b.intglcode into j1
                          // from j2 in j1.DefaultIfEmpty()
                          where a.address == ddl_month.SelectedItem.Text && a.country == ddl_year.SelectedItem.Text
                          group a by a.email into groups
                          orderby groups.Sum(x => Convert.ToInt32(x.total_amt))
                          //groups.First();

                          select new
                          {
                              date = groups.Key,
                              //  mobileno = groups.First().city,
                              amount = groups.Sum(x => Convert.ToInt32(x.total_amt))




                          }).ToList();

                grid_member.DataSource = id;
                grid_member.DataBind();
            }


        }
        catch (Exception ex)
        {
        }
    }
    protected void grid_member_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            int total = 0, avg = 0;
            var id4 = (from a in linq_obj.order_details
                       select a).ToList();

            for (int i = 0; i < id4.Count(); i++)
            {
                total += Convert.ToInt32(id4[i].total_amt);
            }
            //  avg =     total  *    



            int uservalue = Convert.ToInt32(e.Row.Cells[1].Text);


            avg = uservalue * 100 / total;



            int lengthOfProgress = avg;
            Image progressImage = (Image)e.Row.FindControl("ProgressImage");
            progressImage.Width = lengthOfProgress;

            Label lbl_p = (Label)e.Row.FindControl("lbl_per");
            lbl_p.Text = lengthOfProgress.ToString() + "%";

        }
    }
    protected void grid_member_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grid_member.PageIndex = e.NewPageIndex;
        if (page_no == "abc")
        {
            fill_data();
        }
        else
        {
            with_search();
        }
    }
    protected void img_search_Click(object sender, ImageClickEventArgs e)
    {
        with_search();
    }
}