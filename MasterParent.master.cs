using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

public partial class MasterParent : System.Web.UI.MasterPage
{
    iClass c = new iClass();
    public string currentYear, rootPath, contstr;
    public string[] pageurl = new string[15];
    public string[] activeMenu = new string[6];
    protected void Page_Load(object sender, EventArgs e)
    {
        currentYear = DateTime.Now.Year.ToString();
        rootPath = c.ReturnHttp();
        GetNumbers();

        String activepage = Request.RawUrl;

        switch (activepage)
        {
            case "/about-us":
                // code block
                activeMenu[0] = "active";
                break;
            case "/services":
                activeMenu[1] = "active";
                // code bloc   
                break;
            case "/projects":
                // code bloc   
                activeMenu[2] = "active";
                break;
            case "/testimonials":
                // code bloc    
                activeMenu[3] = "active";
                break;
            case "/career":
                // code bloc   
                activeMenu[4] = "active";
                break;
            case "/contact-us":
                // code bloc    
                activeMenu[5] = "active";
                break;
            default:
                // code block
                break;
        }

    }
    protected void Page_Init(object sender, EventArgs e)
    {
        //currentYear = DateTime.Now.Year.ToString();
        rootPath = c.ReturnHttp();
    }


    public void GetNumbers()
    {
        try
        {
            StringBuilder strMarkup = new StringBuilder();
            using (DataTable dtcont = c.GetDataTable("Select top 2 contNumber from ContactNumbers"))
            {

                if (dtcont.Rows.Count > 0)
                {
                    foreach (DataRow row in dtcont.Rows)
                    {
                        strMarkup.Append("<a href=\"tel:" + row["contNumber"].ToString() + "\" class=\"foo_call line-ht-5 small txtDecNone\">" + row["contNumber"].ToString() + "</a>");
                        strMarkup.Append("<span class=\"space10\"></span>");
                    }

                }
                else
                {

                }
                contstr = strMarkup.ToString();
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('error', 'Error Occoured While Processing');", true);
            c.ErrorLogHandler(this.ToString(), "GetNumbers", ex.Message.ToString());
            return;
        }
    }

}
