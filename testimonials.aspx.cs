using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;


public partial class testimonials : System.Web.UI.Page
{
    iClass c = new iClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        GetTestData();
    }

    public string GetTestData()
    {
        try
        {
            StringBuilder strMarkup = new StringBuilder();
            using (DataTable dttest = c.GetDataTable("select * from TestimonialsData where Delmark=0 AND isvedio=0 order by testId DESC"))
            {
                if (dttest.Rows.Count > 0)
                {
                  
                    foreach (DataRow row in dttest.Rows)
                    {
                        strMarkup.Append("<div class=\"co-md-12 borderbx position-relative\" >");
                        strMarkup.Append("<div class=\"namebox\" id=\"" + row["testId"] + "\">");
                        strMarkup.Append("<div class=\"p-3\">");
                        strMarkup.Append("<p class=\"mb-1\">"+row["testName"].ToString()+"</p>");
                        strMarkup.Append("<span>"+row["testPlace"].ToString()+"</span>");
                        strMarkup.Append("</div>");
                        strMarkup.Append("</div>");
                        strMarkup.Append("<div class=\"p-3\">");
                        strMarkup.Append("<p class=\"clrmediumgrey fontRegular line-ht-5 mt-5\"><span class=\"semiMedium bold colorBlack\">  &#34;</span> " + row["testData"].ToString()+ "  <span class=\"semiMedium bold colorBlack\">  &#34;</span> </p>");
                        strMarkup.Append("</div>");
                        strMarkup.Append("</div>");
                        strMarkup.Append("<span class=\"space5\"></span>");
                    }
                    return strMarkup.ToString();
                }
                else
                {
                    return "No testimonials to display";
                }
            }
        }
        catch (Exception ex)
        {
            return ex.Message.ToString();
        }
    }


    public string GetVidTestData()
    {
        try
        {
            StringBuilder strMarkup = new StringBuilder();
            using (DataTable dttestdata = c.GetDataTable("Select * From TestimonialsData where isvedio=1 AND delMark=0 Order By testId DESC"))
            {
                if (dttestdata.Rows.Count > 0)
                {
                    strMarkup.Append("<div id=\"videoreview\">");
                    strMarkup.Append("<div class=\"row\">");
                    foreach (DataRow row in dttestdata.Rows)
                    {
                        
                        strMarkup.Append("<div class=\"col-md-4\">");
                        strMarkup.Append("<div class=\"pad_15\">");
                        strMarkup.Append("<div class=\"testName\"><span class=\"medium capitalize semiBold themeClrPrime\">" + row["testName"].ToString() + "</span> <br /><span class=\"fontRegular tiny bold themeClrPrime\">" + row["testPlace"].ToString() + "</span>");
                        strMarkup.Append("</div>");
                        //strMarkup.Append("<div class=\"testName medium capitalize bold themeClrPrime\">" + row["testPerson"].ToString() + "</div>");
                        strMarkup.Append("<span class=\"space20\"></span>");

                        strMarkup.Append("<a data-fancybox href=\"https://www.youtube.com/watch?v=" + row["testVideolink"] + "\">");
                        strMarkup.Append("<img src=\"http://img.youtube.com/vi/" + row["testVideolink"] + "/0.jpg\"alt=\"" + row["testVideolink"].ToString() + "\"class=\"width100\">");
                        strMarkup.Append("</a>");
                        strMarkup.Append("</div>");
                        strMarkup.Append("</div>");
                    }
                    strMarkup.Append("</div>");
                    strMarkup.Append("</div>");
                    return strMarkup.ToString();
                }
                else
                {
                    return "<div class=\"themeBgPrime\"><div class=\"pad_10\"><span class=\"clrWhite semiMedium fontRegular\">No Video testimonials to display.</span></div></div>";
                }
            }
        }
        catch (Exception ex)
        {
            return ex.Message.ToString();
        }
    }


}