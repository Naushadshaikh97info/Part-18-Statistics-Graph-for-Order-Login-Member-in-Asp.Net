using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class apanel_login_log : System.Web.UI.Page
{
    cosmicDataContext linq_obj = new cosmicDataContext();
    static string pageno = "1";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
            return;
        fill_data();
    }
    private void fill_data()
    {
        try
        {
            pageno = "1";
            GridView1.Visible = true;
            GridView2.Visible = false;
            LinkButton1.Visible = false;
            var id = from a in linq_obj.user_login_counts
                     orderby a.intglcode descending
                     group a by a.short_date into groups
                     select groups.First();
            //select new

            //{

            //    short_date = a.short_date,
            //    count = a.count
            //}).Distinct().ToList();

            GridView1.DataSource = id;
            GridView1.DataBind();

        }
        catch (Exception ex)
        {
        }
    }
    protected void lnk_view_click(object sender, EventArgs e)
    {
        try
        {
            GridView1.Visible = false;
            GridView2.Visible = true;
            LinkButton1.Visible = true;

            LinkButton lnk = (LinkButton)sender;
            DateTime code = Convert.ToDateTime(lnk.CommandArgument.ToString());
            //
            //  var id =(
            var id4 = (from a in linq_obj.user_login_counts
                       join b in linq_obj.registration_msts on a.userid equals b.intglcode
                       orderby a.intglcode descending
                       where a.short_date == code.ToShortDateString()
                       select new
                       {
                           phone = b.work_phone_no,
                           company = b.company_name,
                           user = b.user_id,
                           username = b.frist_name,
                           date = a.date
                       }).ToList();

            GridView2.DataSource = id4;
            GridView2.DataBind();



        }
        catch (Exception ex)
        {
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (pageno == "1")
        {
            fill_data();
        }
        else
        {
            fill_data_with_search();
        }
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            //var id4 = (from a in linq_obj.user_login_counts
            //           orderby a.intglcode descending
            //           where a.short_date == System.DateTime.Now.ToShortDateString()
            //           select a).ToList();
            int percentage = Convert.ToInt32(e.Row.Cells[1].Text);

            int lengthOfProgress = percentage;
            Image progressImage = (Image)e.Row.FindControl("ProgressImage");
            progressImage.Width = lengthOfProgress;

        }
    }
    
    private void fill_data_with_search()
    {
        try
        {
            pageno = "2";

            if (ddl_month.SelectedIndex != 0 && ddl_year.SelectedIndex == 0)
           {
                var id = from a in linq_obj.user_login_counts
                     where a.month == ddl_month.SelectedItem.Text 
                     // orderby a.short_date descending
                     group a by a.short_date into groups
                     select groups.First();
            //select new

            //{

            //    short_date = a.short_date,
            //    count = a.count
            //}).Distinct().ToList();

            GridView1.DataSource = id;
            GridView1.DataBind();
           }
           else if (ddl_month.SelectedIndex == 0 && ddl_year.SelectedIndex != 0)
           {

            var id = from a in linq_obj.user_login_counts
                     where a.year == ddl_year.SelectedItem.Text 
                     // orderby a.short_date descending
                     group a by a.short_date into groups
                     select groups.First();
            //select new

            //{

            //    short_date = a.short_date,
            //    count = a.count
            //}).Distinct().ToList();

            GridView1.DataSource = id;
            GridView1.DataBind();
           }
            else if(ddl_month.SelectedIndex != 0 && ddl_year.SelectedIndex != 0 )
           {
                  var id = from a in linq_obj.user_login_counts
                     where a.month == ddl_month.SelectedItem.Text && a.year ==ddl_year.SelectedItem.Text
                     // orderby a.short_date descending
                     group a by a.short_date into groups
                     select groups.First();
            //select new

            //{

            //    short_date = a.short_date,
            //    count = a.count
            //}).Distinct().ToList();

            GridView1.DataSource = id;
            GridView1.DataBind();
            }
        }
        catch (Exception ex)
        {
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        try
        {
            GridView1.PageIndex = e.NewPageIndex;
            if (pageno == "1")
            {

                fill_data();
            }
            else
            {
                fill_data_with_search();
            }
        }

        catch (Exception ex)
        {
        }
    }
    protected void img_search_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            fill_data_with_search();
        }
        catch (Exception ex)
        {
        }
    }
}