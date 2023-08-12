using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.Drawing;
public partial class projects : System.Web.UI.Page
{
    iClass c = new iClass();
    public string projstr;
    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {
            Page.Header.DataBind();
            if (!IsPostBack)
            {
                if (String.IsNullOrEmpty(Page.RouteData.Values["projId"].ToString()))
                {
                    GetProjectData();
                }
                else
                {
                    string[] arrLinks = Page.RouteData.Values["projId"].ToString().Split('-');
                    GetprojDetails(Convert.ToInt32(arrLinks[arrLinks.Length - 1]));

                }
            }
        }
        catch (Exception ex)
        {
            projstr = c.ErrNotification(3, ex.Message.ToString());
            return;
        }
       
    }

    public void GetProjectData()
    {
        try
        {
            StringBuilder strMarkup = new StringBuilder();
            using (DataTable dttest = c.GetDataTable("select projId, LEFT(projName, 35) as projName, LEFT(projDesc, 154) as projDesc, projCoverPhoto from ProjectsData where DelMark=0 Order By projId DESC"))
            {

                if (dttest.Rows.Count > 0)
                {
                    strMarkup.Append("<div class=\"row gy-3\">");

                    using (DataTable dtproducts = c.GetDataTable("select projId, LEFT(projName, 35) as projName, LEFT(projDesc, 154) as projDesc, projCoverPhoto from ProjectsData where DelMark=0 AND projType=1 Order By projId DESC"))
                    {
                        
                        strMarkup.Append("<div class=\"col-md-6\">");
                        strMarkup.Append("<h2 class=\"semiBold semiMedium\">Architecture</h2>");
                        strMarkup.Append("<span class=\"space20\"></span>");
                        foreach (DataRow row in dtproducts.Rows)
                        {
                            if (row["projCoverPhoto"] != DBNull.Value && row["projCoverPhoto"].ToString() != "" && row["projCoverPhoto"].ToString() != "no-photo.png" && row["projCoverPhoto"] != null)
                            {
                                strMarkup.Append("<div class=\"imgheight\">");
                                strMarkup.Append("<img src=\"" + Master.rootPath + "upload/projects/" + row["projCoverPhoto"].ToString() + "\" alt=\"" + row["projName"].ToString() + "\" class=\"img-fluid width100 \" />");
                                strMarkup.Append("</div>");

                            }
                           strMarkup.Append("<span class=\"space15\"></span>");

                            string nUrl = Master.rootPath + "projects/" + c.UrlGenerator(row["projName"].ToString().ToLower() + "-" + row["projId"].ToString());

                            string projTitle = row["projName"].ToString().Length >= 35 ? row["projName"].ToString().Substring(0, 35) + "..." : row["projName"].ToString();

                            strMarkup.Append("<a href=\"" + nUrl + "\" class=\"semiBold colorBlack medium text-decoration-none text-uppercase\">" + projTitle + "</a>");

                            strMarkup.Append("<span class=\"space10\"></span>");

                            string projDesc = row["projDesc"].ToString().Length >= 100 ? row["projDesc"].ToString().Substring(0, 100) + "..." : row["projDesc"].ToString();

                            strMarkup.Append("<span class=\"clrmediumgrey fontRegular\">" + projDesc + "</span>");
                            strMarkup.Append("<span class=\"space10\"></span>");
                            strMarkup.Append("<a href=\"" + nUrl + "\" class=\"linkbtn\">View Project</a>");
                            strMarkup.Append("<span class=\"space30\"></span>");
                        }

                        strMarkup.Append("</div>");
                    }

                    using (DataTable dtproducts = c.GetDataTable("select projId, LEFT(projName, 35) as projName, LEFT(projDesc, 154) as projDesc, projCoverPhoto from ProjectsData where DelMark=0 AND projType=2 Order By projId DESC"))
                    {
                        
                        strMarkup.Append("<div class=\"col-md-6\">");
                        strMarkup.Append("<h2 class=\"semiBold semiMedium\">Interior</h2>");
                        strMarkup.Append("<span class=\"space20\"></span>");
                        foreach (DataRow row in dtproducts.Rows)
                        {
                            if (row["projCoverPhoto"] != DBNull.Value && row["projCoverPhoto"].ToString() != "" && row["projCoverPhoto"].ToString() != "no-photo.png" && row["projCoverPhoto"] != null)
                            {
                                strMarkup.Append("<div class=\"imgheight\">");
                                strMarkup.Append("<img src=\"" + Master.rootPath + "upload/projects/" + row["projCoverPhoto"].ToString() + "\" alt=\"" + row["projName"].ToString() + "\" class=\"img-fluid width100 \" />");
                                strMarkup.Append("</div>");
                            }
                            strMarkup.Append("<span class=\"space15\"></span>");

                            string nUrl = Master.rootPath + "projects/" + c.UrlGenerator(row["projName"].ToString().ToLower() + "-" + row["projId"].ToString());

                            string projTitle = row["projName"].ToString().Length >= 35 ? row["projName"].ToString().Substring(0, 35) + "..." : row["projName"].ToString();

                            strMarkup.Append("<a href=\"" + nUrl + "\" class=\"semiBold colorBlack medium text-decoration-none text-uppercase\">" + projTitle + "</a>");

                            strMarkup.Append("<span class=\"space10\"></span>");

                            string projDesc = row["projDesc"].ToString().Length >= 100 ? row["projDesc"].ToString().Substring(0, 100) + "..." : row["projDesc"].ToString();

                            strMarkup.Append("<span class=\"clrmediumgrey fontRegular\">" + projDesc + "</span>");
                            strMarkup.Append("<span class=\"space10\"></span>");
                            strMarkup.Append("<a href=\"" + nUrl + "\" class=\"linkbtn\">View Project</a>");
                            strMarkup.Append("<span class=\"space30\"></span>");
                        }

                        strMarkup.Append("</div>");
                    }



                    //strMarkup.Append("<h2 class=\"semiBold semiMedium\">ArchiTecture</h2>");
                    //foreach (DataRow row in dttest.Rows)
                    //{
                    //    strMarkup.Append("<div class=\"col-md-6\">");
                    //    strMarkup.Append("<span class=\"space20\"></span>");
                    //    if (row["projCoverPhoto"] != DBNull.Value && row["projCoverPhoto"].ToString() != "" && row["projCoverPhoto"].ToString() != "no-photo.png" && row["projCoverPhoto"] != null)
                    //    {
                    //        strMarkup.Append("<div class=\"imgheight\">");
                    //        strMarkup.Append("<img src=\"" + Master.rootPath + "upload/projects/" + row["projCoverPhoto"].ToString() + "\" alt=\"" + row["projName"].ToString() + "\" class=\"img-fluid width100 \" />");
                    //        strMarkup.Append("</div>");
                    //    }
                    //    strMarkup.Append("<span class=\"space20\"></span>");

                    //    string nUrl = Master.rootPath + "projects/" + c.UrlGenerator(row["projName"].ToString().ToLower() + "-" + row["projId"].ToString());

                    //    string projTitle = row["projName"].ToString().Length >= 35 ? row["projName"].ToString().Substring(0, 35) + "..." : row["projName"].ToString();

                    //    strMarkup.Append("<a href=\"" + nUrl + "\" class=\"semiBold colorBlack medium text-decoration-none text-uppercase\">" + projTitle + "</a>");

                    //    strMarkup.Append("<span class=\"space10\"></span>");

                    //    string projDesc = row["projDesc"].ToString().Length >= 100 ? row["projDesc"].ToString().Substring(0, 100) + "..." : row["projDesc"].ToString();

                    //    strMarkup.Append("<span class=\"clrmediumgrey fontRegular\">" + projDesc + "</span>");
                    //    strMarkup.Append("<span class=\"space10\"></span>");
                    //    strMarkup.Append("<a href=\""+ nUrl + "\" class=\"linkbtn\">View Project</a>");
                    //    strMarkup.Append("</div>");

                    strMarkup.Append("</div>");
                }
                else
                {
                    projstr = "No projects to display";
                }
                projstr = strMarkup.ToString();
                }
               
            }
        
        catch (Exception ex)
        {
            projstr = c.ErrNotification(3, ex.Message.ToString());
            return;
        }
    }


    private void GetprojDetails(int projIdx)
    {
        try
        {
            data.Visible = false;
            using (DataTable dtproj = c.GetDataTable("Select * From ProjectsData Where projId=" + projIdx))
            {
                if (dtproj.Rows.Count > 0)
                {
                    DataRow row = dtproj.Rows[0];
                    StringBuilder strMarkup = new StringBuilder();



                    this.Title = row["projName"].ToString() + "| Latest Projects of Archi Design.";

                    strMarkup.Append("<h2 class=\"pageH2 themeClrPrime mb-4 capitalize text-uppercase\">" + row["projName"].ToString() + "</h2>");
                    //strMarkup.Append("<span class=\"space5\"></span>");

                    strMarkup.Append("<div class=\"row\">");
                    strMarkup.Append("<div class=\"col-md-8\">");

                    
                    if (row["projCoverPhoto"] != DBNull.Value && row["projCoverPhoto"].ToString() != "" && row["projCoverPhoto"].ToString() != "no-photo.png" && row["projCoverPhoto"] != null)
                    {
                        strMarkup.Append("<div>");
                        strMarkup.Append("<img src=\"" + Master.rootPath + "upload/projects/" + row["projCoverPhoto"].ToString() + "\" alt=\"" + row["projName"].ToString() + "\" class=\"img-fluid w-100\" />");
                        strMarkup.Append("</div>");
                    }
                    
                    strMarkup.Append("</div>");

                   // strMarkup.Append("<span class=\"space15\"></span>");
                    
                    strMarkup.Append("<div class=\"col-md-4\">");
                    strMarkup.Append("<h2 class=\"large themeClrPrime mrg_B_5 capitalize text-uppercase\">About Project</h2>");
                    strMarkup.Append("<span class=\"space10\"></span>");
                    //strMarkup.Append("<span class=\"\">Location: Sangli</span>");
                    //strMarkup.Append("<span class=\"space10\"></span>");
                    //strMarkup.Append("<span class=\"\">Year: 2023</span>");
                    strMarkup.Append("<p class=\"clrmediumgrey fontRegular\">" + row["projDesc"].ToString() + "</p>");
                    strMarkup.Append("<span class=\"space30\"></span>");
                    strMarkup.Append("</div>");

                    strMarkup.Append("</div>");
                    strMarkup.Append("</div>");

                    

                    using (DataTable dttest = c.GetDataTable("select projPhotoId, FK_projId, projPhoto  from ProjectsPhotos Where FK_projId=" + projIdx + ""))
                    {
                        if (dttest.Rows.Count > 0)
                        {
                            //strMarkup.Append("<span class=\"space30\"></span>");
                            strMarkup.Append("<div class=\"p-5\">");
                            strMarkup.Append("<h2 class=\"large themeClrPrime capitalize text-uppercase mb-5\">Project Gallery</h2>");
                            //strMarkup.Append("<span class=\"space5\"></span>");
                            //strMarkup.Append("<div class=\"masonry\">");
                            //strMarkup.Append("<div class=\"masonry_item\">");
                            strMarkup.Append("<div class=\"grid-wrapper\">");
                            foreach (DataRow prow in dttest.Rows)
                            {
                                if (prow["projPhoto"] != DBNull.Value && prow["projPhoto"].ToString() != "" && prow["projPhoto"].ToString() != "no-photo.png" && prow["projPhoto"] != null)
                                {
                                    string origImgPath = "~/upload/projects/" + prow["projPhoto"].ToString();
                                    string filePathInfo = Server.MapPath(origImgPath);

                                    Bitmap bitmap = new Bitmap(filePathInfo);
                                    int iWidth = bitmap.Width;
                                    int iHeight = bitmap.Height;

                                    if (iWidth < iHeight)
                                    {
                                        strMarkup.Append("<div class=\"tall\">");
                                    }
                                    else
                                    {
                                        strMarkup.Append("<div>");
                                    }


                                    //strMarkup.Append("<a href=\"" + Master.rootPath + "upload/projects/" + prow["projPhoto"].ToString() + "\"  data-fancybox=\"imggroup1\">");
                                    strMarkup.Append("<img src=\"" + Master.rootPath + "upload/projects/" + prow["projPhoto"].ToString() + "\" alt=\"" + prow["projPhoto"].ToString() + "\" data-action=\"zoom\" />");


                                    //strMarkup.Append("<a href=\"" + Master.rootPath + "upload/projects/" + prow["projPhoto"].ToString() + "\"  data-fancybox=\"imggroup1\">");
                                    //strMarkup.Append("<img src=\"" + Master.rootPath + "upload/projects/" + prow["projPhoto"].ToString() + "\" alt=\"" + prow["projPhoto"].ToString() + "\" data-aos=\"zoom-in\" data-aos-duration=\"1000\" /></a>");

                                    strMarkup.Append("</div>");
                                }
                            }
                            strMarkup.Append("</div>");

                            //strMarkup.Append("</div>");
                            strMarkup.Append("</div>");

                        }
                    }

                        projstr = strMarkup.ToString();
                }
               
            }
                }
        catch (Exception ex)
        {
            projstr = c.ErrNotification(3, ex.Message.ToString());
            return;
        }

    }
}