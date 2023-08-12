using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
public partial class _Default : System.Web.UI.Page
{
    iClass c = new iClass();
    public string rootPath, currentYear, nwsstr, testsstr, contstr;
    public string[] pageurl = new string[15];
    public string about, services, testimonials, contact, projects;
    protected void Page_Load(object sender, EventArgs e)
    {
        currentYear = DateTime.Now.Year.ToString();
        rootPath = c.ReturnHttp();

        if (!IsPostBack)
        {
            if (Request.QueryString["act"] != null)
            {
                if (Request.QueryString["act"] == "logout")
                {
                    Session["adminMaster"] = null;
                    Response.Redirect(rootPath , false);
                }

            }
        }
        GetTestData();
        GetNumbers();


        String activepage = Request.RawUrl;

        if (activepage.Contains("about-us"))
        {
            aboutus.Attributes.Add("class", "active");
            
        }
        //else if (activepage.Contains("Tests.aspx"))
        //{
        //    testslink.Attributes.Add("class", "active");
        //}
        //else if (activepage.Contains("Report.aspx"))
        //{
        //    reportlink.Attributes.Add("class", "active");
        //}









        // GetprojectsData();

        //string currenturl = "";

       // string activeurl = HttpContext.Current.Request.Url.AbsoluteUri;

       //// pageurl[0] = "about-us";
       // pageurl[0] = "about-us";
       // pageurl[1] = "services";
       // pageurl[2] = "projects";
       // pageurl[3] = "testimonials";
       // pageurl[4] = "career";
       // pageurl[5] = "contact-us";

       // if (activeurl == pageurl[0])
       // {
       //     pageurl[0] = "activeurl";
       // }


        //string[] splitUrl = activeurl.Split(normalurl.ToCharArray());
        //string credential = splitUrl[2].ToString();

        //string[] splitCredential = credential.Split(normalurl.ToCharArray());
        //string activemenu = splitCredential[0].ToString();

       // string finalurl = activemenu = "activeurl";


       // pageurl[6] = HttpContext.Current.Request.Url.AbsoluteUri;

    }

    public string GetTestData()
    {
        try
        {
            StringBuilder strMarkup = new StringBuilder();
            using (DataTable dttest = c.GetDataTable("select TOP 3 testId, testName, testPlace, testData from TestimonialsData where Delmark=0 AND isvedio=0 order by testId DESC"))
            {
                if (dttest.Rows.Count > 0)
                {
                    string className = "";
                    int i = 0;
                    strMarkup.Append("<div class=\"carousel-inner\">");
                    foreach (DataRow row in dttest.Rows)
                    {
                        i++;
                        if (i == 1)
                        {
                            className = "active";
                        }
                        else 
                        {
                            className = "";
                        }
                       
                        strMarkup.Append("<li>");
                        strMarkup.Append("<div class=\"carousel-item " + className + "\">");
                        strMarkup.Append("<div class=\"p-3\">");
                        strMarkup.Append("<span class=\"space30\"></span>");
                        string testinfo = row["testData"].ToString().Length >= 350 ? row["testData"].ToString().Substring(0, 350) + "..." : row["testData"].ToString();
                        strMarkup.Append("<p class=\"fontRegular semiBold regular colorWhite line-ht-5 mb-4\">" + testinfo + "</p>");
                        strMarkup.Append("<span class=\"bold semiMedium colorWhite\">" + row["testName"].ToString() + "</span>");
                        strMarkup.Append("<span class=\"space5\"></span>");
                        strMarkup.Append("<span class=\"semiBold regular colorWhite\">" + row["testPlace"].ToString() + "</span>");
                        strMarkup.Append("<span class=\"space10\"></span>");
                        strMarkup.Append("</div>");
                        strMarkup.Append("<span class=\"space20\"></span>");
                        strMarkup.Append("<a href=\"testimonials#" + row["testId"] + " \" class=\"text-decoration-none colorWhite readMore\">Read More</a>");
                        strMarkup.Append("<span class=\"space20\"></span>");
                        strMarkup.Append("</div>");
                        strMarkup.Append("</li>");
                       

                    }   
                    strMarkup.Append("</div>");
                   
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


    public string GetprojectsData()
    {
        try
        {
            StringBuilder strMarkup = new StringBuilder();
            using (DataTable dttest = c.GetDataTable("select TOP 2 projId, LEFT(projName, 35) as projName, LEFT(projDesc, 80) as projDesc, projCoverPhoto, projCategory from ProjectsData where DelMark=0 Order By projId DESC"))
            {
                if (dttest.Rows.Count > 0)
                {
                    
                    
                    foreach (DataRow row in dttest.Rows)
                    {
                        //strMarkup.Append("<div class=\"swiper-slide\">");
                        //strMarkup.Append("<div class=\"row justify-content-center\">");
                        //strMarkup.Append("<div class=\"col-lg-8 position-relative\">");
                        //strMarkup.Append("<a href=\"projects\" class=\"text-decoration-none\">");
                        //if (row["projCoverPhoto"] != DBNull.Value && row["projCoverPhoto"].ToString() != "" && row["projCoverPhoto"].ToString() != "no-photo.png" && row["projCoverPhoto"] != null)
                        //{
                        //    strMarkup.Append("<div class=\"mainprojht\">");
                        //    strMarkup.Append("<img src=\"" + rootPath + "upload/projects/" + row["projCoverPhoto"].ToString() + "\" alt=\"" + row["projName"].ToString() + "\" class=\"d-block w-100 img-fluid\" />");
                        //    strMarkup.Append("</div>");
                        //}

                        //strMarkup.Append("<div class=\"row\">");
                        //strMarkup.Append("<div class=\"col-12\">");
                        //strMarkup.Append("<div class=\"px-5\">");
                        //strMarkup.Append("<div class=\"projectbox\">");
                        //strMarkup.Append("<div class=\"p-3\">");
                        //strMarkup.Append("<p class=\"fontRegular clrdarkgrey mb-2\">" + row["projCategory"].ToString() + "</p>");

                        //string nUrl = rootPath + "projects/" + c.UrlGenerator(row["projName"].ToString().ToLower() + "-" + row["projId"].ToString());

                        //strMarkup.Append("<p class=\"semiBold semiMedium mb-2 colorBlack text-uppercase\">" + row["projName"].ToString() + "<a herf=\""+ nUrl + "\" class=\"btnview float-end \">View Project</a>" + "</p>");

                        //string projDesc = row["projDesc"].ToString().Length >= 65 ? row["projDesc"].ToString().Substring(0, 65) + "..." : row["projDesc"].ToString();

                        //strMarkup.Append("<p class=\"fontRegular clrdarkgrey mb-2\">" + projDesc + "</p>");

                        //strMarkup.Append("</div>");
                        //strMarkup.Append("</div>");
                        //strMarkup.Append("</div>");
                        //strMarkup.Append("</div>");
                        //strMarkup.Append("</div>");
                        //strMarkup.Append("</a>");
                        //strMarkup.Append("</div>");
                        //strMarkup.Append("</div>");
                        //strMarkup.Append("</div>");




                       // strMarkup.Append("<div class=\"row\">");
                        strMarkup.Append("<div class=\"width50 position-relative \" id=\"projectsdt\" data-aos=\"zoom-in\" data-aos-duration=\"1000\">");
                        strMarkup.Append("<div class=\"p-3\">");
                        string nUrl = rootPath + "projects/" + c.UrlGenerator(row["projName"].ToString().ToLower() + "-" + row["projId"].ToString());
                        strMarkup.Append("<a href=\""+ nUrl + "\" class=\"text-decoration-none projectsdt\">");

                        if (row["projCoverPhoto"] != DBNull.Value && row["projCoverPhoto"].ToString() != "" && row["projCoverPhoto"].ToString() != "no-photo.png" && row["projCoverPhoto"] != null)
                        {
                            strMarkup.Append("<div class=\"mainprojht\">");
                            strMarkup.Append("<img src=\"" + rootPath + "upload/projects/" + row["projCoverPhoto"].ToString() + "\" alt=\"" + row["projName"].ToString() + "\" class=\"d-block w-100 img-fluid\" />");
                            strMarkup.Append("</div>");
                        }
                        strMarkup.Append("<div class=\"row\">");
                        strMarkup.Append("<div class=\"col-12\">");
                        strMarkup.Append("<div class=\"px-5\">");
                        strMarkup.Append("<div class=\"projectbox\">");
                        strMarkup.Append("<div class=\"p-3\">");
                        strMarkup.Append("<div id=\"CatProj\">");
                        strMarkup.Append("<p class=\"fontRegular clrdarkgrey small mb-2\">" + row["projCategory"].ToString() + "</p>");
                        strMarkup.Append("</div>");
                       // string nUrl = rootPath + "projects/" + c.UrlGenerator(row["projName"].ToString().ToLower() + "-" + row["projId"].ToString());
                        strMarkup.Append("<h4 class=\"semiBold  colorBlack semiMedium mb-2 text-uppercase\">" + row["projName"].ToString() + "<a href=\""+ nUrl + "\" class=\"btnview text-decoration-none float-end\">View Project</a>" + "</h4>");

                        string projDesc = row["projDesc"].ToString().Length >= 65 ? row["projDesc"].ToString().Substring(0, 65) + "..." : row["projDesc"].ToString();

                        strMarkup.Append("<div id=\"Descproj\">");
                        strMarkup.Append("<p class=\"fontRegular small clrdarkgrey mb-2\">" + projDesc + "</p>");
                        strMarkup.Append("</div>");
                        strMarkup.Append("</div>");
                        strMarkup.Append("</div>");
                        strMarkup.Append("</div>");
                        strMarkup.Append("</div>");
                        strMarkup.Append("</div>");
                        strMarkup.Append("</a>");
                        strMarkup.Append("</div>");
                        strMarkup.Append("</div>");
                        //strMarkup.Append("</div>");

                      //  strMarkup.Append("</div>");


                    }
                    //strMarkup.Append("<div class=\"float_clear\"></div>");
                    //strMarkup.Append("</div>");
                    //strMarkup.Append("</div>");
                    return strMarkup.ToString();
                }
                else
                {
                    return "No projects to display";
                }
            }

                    }
        catch (Exception ex)
        {
            return ex.Message.ToString();
        }
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


    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtName.Text == "" || txtEmail.Text == "" || txtPhone.Text == "" || txtMsg.Text == "" || ddrServices.SelectedIndex == 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('warning', 'All * marked fields are mandatory');", true);
                return;
            }

            if (c.EmailAddressCheck(txtEmail.Text) == false)
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('warning', 'Enter Valid Email Address');", true);
                return;
            }
            if (c.ValidateMobile(txtPhone.Text) == false)
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('warning', 'Enter Valid Mobile No.');", true);
                return;
            }


            StringBuilder strMail = new StringBuilder();

            strMail.Append("Dear Sir, <br/>");
            strMail.Append("You have a new enquiry at Archi Design.org, <br/>");
            strMail.Append("Details are given below, <br/><br/>");
            strMail.Append("Name : <b>" + txtName.Text + "</b> <br/>");
            strMail.Append("Email : <b>" + txtEmail.Text + "</b> <br/>");
            strMail.Append("Mobile : <b>" + txtPhone.Text + "</b> <br/>");
            strMail.Append("Services : <b>" + ddrServices.SelectedItem.Text + "</b> <br/>");
            strMail.Append("Message : <b>" + txtMsg.Text + "</b>");

            //c.SendMail("info@intellect-systems.com", "Eibenstock Positron", "prajaktap204@gmail.com", strMail.ToString(), "New Feedback at PositronSolutions", "", true, "", "");

            c.SendMail("info@intellect-systems.com", "Archi Interior And Architects", "armaheshk@gmail.com", strMail.ToString(), "New Feedback at Archi Design", "", true, "", "");

            //c.SendMail("info@mtsts.org", "MTSTS Education", "pallavidhadake20@gmail.com", strMail.ToString(), "New Feedback at MTSTS Education", "", true, "", "");

            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('success', 'Thank you for your enquiry. We will contact you soon.');", true);

            //ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('success', 'Thank you for your enquiry. We will contact you soon.');", true);

            txtName.Text = txtEmail.Text = txtPhone.Text = txtMsg.Text = "";
            //errMsg = c.ErrNotification(1, "Thank you for your Feedback..!! We'll get back to you soon..!!");
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('error', 'Error Occoured While Processing');", true);
            c.ErrorLogHandler(this.ToString(), "btnSubmit_Click", ex.Message.ToString());
            return;
        }
    }
}