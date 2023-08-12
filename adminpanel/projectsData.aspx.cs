using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class adminpanel_projectsData : System.Web.UI.Page
{
    iClass c = new iClass();
    public string pgTitle, projPhoto;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            pgTitle = Request.QueryString["action"] == "new" ? "Add Projects" : "Edit Projects";
            btnSave.Attributes.Add("onclick", " this.disabled = true; this.value='Processing...'; " + ClientScript.GetPostBackEventReference(btnSave, null) + ";");
            btnDelete.Attributes.Add("onclick", " this.disabled = true; this.value='Processing...'; " + ClientScript.GetPostBackEventReference(btnDelete, null) + ";");
            btnCancel.Attributes.Add("onclick", " this.disabled = true; this.value='Processing...'; " + ClientScript.GetPostBackEventReference(btnCancel, null) + ";");

            if (!IsPostBack)
            {
                if (Request.QueryString["action"] != null)
                {
                    editinfo.Visible = true;
                    viewinfo.Visible = false;

                    if (Request.QueryString["action"] == "new")
                    {
                        btnSave.Text = "Save Info";
                        btnDelete.Visible = false;
                        txtDate.Text = DateTime.Now.ToString("dd/MM/yyyy");
                    }
                    else
                    {
                        btnSave.Text = "Modify Info";
                        btnDelete.Visible = true;
                        GetData(Convert.ToInt32(Request.QueryString["id"]));
                    }
                }
                else
                {
                    editinfo.Visible = false;
                    viewinfo.Visible = true;
                    FillGrid();
                }
            }
            lblId.Visible = false;
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('error', 'Error Occoured While Processing');", true);
            c.ErrorLogHandler(this.ToString(), "Page_Load", ex.Message.ToString());
            return;
        }

        
    }

    private void FillGrid()
    {
        try
        {
            using (DataTable dtNws = c.GetDataTable("Select projId, Convert(varchar(20), projDate , 103) as projDate, projName From ProjectsData Where Delmark=0"))
            {
                gvProjects.DataSource = dtNws;
                gvProjects.DataBind();  

                if (dtNws.Rows.Count > 0)
                {
                    gvProjects.UseAccessibleHeader = true;
                    gvProjects.HeaderRow.TableSection = TableRowSection.TableHeader;
                }
            }

        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('error', 'Error Occoured While Processing');", true);
            c.ErrorLogHandler(this.ToString(), "FillGrid", ex.Message.ToString());
            return;
        }
    }




    protected void gvProjects_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        try
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Literal litAnch = (Literal)e.Row.FindControl("litAnch");
                litAnch.Text = "<a href=\"projectsData.aspx?action=edit&id=" + e.Row.Cells[0].Text + "\"class=\"gAnch\" title=\"View/Edit\"></a>";

                Literal litAnchphto = new Literal();
                litAnchphto = (Literal)e.Row.FindControl("litAnchphto");
                litAnchphto.Text = "<a href=\"add-photos.aspx?albumId=" + e.Row.Cells[0].Text + "\" class=\"addPhoto\" title=\"Add Photos \"></a>";
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('error', 'Error Occoured While Processing');", true);
            c.ErrorLogHandler(this.ToString(), "gvTestimonials_RowDataBound", ex.Message.ToString());
            return;
        }
    }


    public void GetAllControls(ControlCollection ctrs)
    {
        foreach (Control c in ctrs)
        {
            if (c is System.Web.UI.WebControls.TextBox)
            {
                TextBox tt = c as TextBox;
                tt.Text = tt.Text.Trim().Replace("'", "");
            }
            if (c.HasControls())
            {
                GetAllControls(c.Controls);
            }
        }
    }

    public void GetData(int ProjIdx)
    {
        try
        {
            using (DataTable dtproj = c.GetDataTable("select * from ProjectsData where projId=" + ProjIdx))
            {
                if (dtproj.Rows.Count > 0)
                {
                    DataRow row = dtproj.Rows[0];
                    lblId.Text = ProjIdx.ToString();

                    txtProjCat.Text = row["projCategory"].ToString();
                    txtProjDesc.Text = row["projDesc"].ToString();
                    txtProjName.Text = row["projName"].ToString();
                    txtDate.Text = Convert.ToDateTime(row["projDate"]).ToString("dd/MM/yyyy");
                    ddrProjType.SelectedValue = row["projType"].ToString();

                    if (row["projCoverPhoto"] != DBNull.Value && row["projCoverPhoto"] != null && row["projCoverPhoto"].ToString() != "" && row["projCoverPhoto"].ToString() != "no-photo.png")
                    {
                        projPhoto = "<img src=\"" + Master.rootPath + "upload/projects/" + row["projCoverPhoto"].ToString() + "\" width=\"200\" />";
                        btnRemove.Visible = true;
                    }
                    else
                    {
                        btnRemove.Visible = false;
                    }

                }
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('error', 'Error Occoured While Processing');", true);
            c.ErrorLogHandler(this.ToString(), "GetData", ex.Message.ToString());
            return;
        }
    }



    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            GetAllControls(this.Controls);
            //Empty Validations
            if (txtProjName.Text == "" || txtProjDesc.Text == "" || ddrProjType.SelectedIndex==0)
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('warning', 'All Fields are mandatory');", true);
                return;
            }

            int maxId = lblId.Text == "[New]" ? c.NextId("ProjectsData", "projId") : Convert.ToInt32(lblId.Text);


            string projPhoto = "";
            if (fuImage.HasFile)
            {
                string fExt = Path.GetExtension(fuImage.FileName).ToString().ToLower();

                if (fExt == ".jpg" || fExt == ".jpeg" || fExt == ".png" || fExt == ".pdf")
                {
                    projPhoto = "project-photo-" + maxId + DateTime.Now.ToString("ddMMyyyyHHmmss") + fExt;
                    ImageUploadProcess(projPhoto);
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('warning', 'Only .jpg, .jpeg .png .pdf  or  files are allowed');", true);
                    return;

                }
            }
            else if(fuImage.HasFile && lblId.Text == "[New]")
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('warning', 'Select project image ');", true);
            }

            //Insert Update data
            if (lblId.Text == "[New]")
            {
                c.ExecuteQuery("Insert into ProjectsData(projId, projDate, projName, projCoverPhoto, projCategory, projDesc, projType, DelMark)Values(" + maxId + ", '" + DateTime.Now + "',  '" + txtProjName.Text + "', '" + projPhoto + "', '" + txtProjCat.Text + "', '" + txtProjDesc.Text + "',  '"+ ddrProjType.SelectedValue +"', 0)");


                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('success', 'Projects Added');", true);
            }
            else
            {
                c.ExecuteQuery("Update ProjectsData set projId=" + maxId + ", projDate='" + DateTime.Now + "', projName='" + txtProjName.Text + "', projCategory='" + txtProjCat.Text + "', projDesc='" + txtProjDesc.Text + "', projType='"+ ddrProjType.SelectedValue + "' where projId=" + maxId);


                if (fuImage.HasFile)
                {
                    c.ExecuteQuery("Update ProjectsData Set projCoverPhoto='" + projPhoto + "' where projId=" + maxId + "");
                }


                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('success', 'Projects Updated');", true);
            }

            ScriptManager.RegisterClientScriptBlock(this, GetType(), "CallMyFunction", "waitAndMove('projectsData.aspx', 2000);", true);

            txtProjCat.Text = txtProjDesc.Text = txtProjName.Text =  "";
            ddrProjType.SelectedIndex = 0;

        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('error', 'Error Occoured While Processing');", true);
            c.ErrorLogHandler(this.ToString(), "btnSave_Click", ex.Message.ToString());
            return;
        }
    }

    private void ImageUploadProcess(string prodPhoto)
    {
        try
        {

            string origImgPath = "~/upload/projects/original/";
            //string thumbImgPath = "~/upload/projects/thumb/";
            string normalImgPath = "~/upload/projects/";

            fuImage.SaveAs(Server.MapPath(origImgPath) + prodPhoto);
            c.ImageOptimizer(prodPhoto, origImgPath, normalImgPath, 800, true);
            //c.ImageOptimizer(prodPhoto, normalImgPath, thumbImgPath, 480, true);


            //Delete rew image from server
            File.Delete(Server.MapPath(origImgPath) + prodPhoto);

        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('error', 'Error Occoured While Processing');", true);
            c.ErrorLogHandler(this.ToString(), "ImageUploadProcess", ex.Message.ToString());
            return;
        }
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        try
        {
            c.ExecuteQuery("update ProjectsData set DelMark=1 where projId=" + Request.QueryString["id"]);
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('success', 'Project Deleted');", true);
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "CallMyFunction", "waitAndMove('projectsData.aspx', 2000);", true);
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('error', 'Error Occoured While Processing');", true);
            c.ErrorLogHandler(this.ToString(), "btnDelete_Click", ex.Message.ToString());
            return;
        }
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("projectsData.aspx");
    }

    protected void btnRemove_Click(object sender, EventArgs e)
    {
        try
        {
            c.ExecuteQuery("Update ProjectsData set projCoverPhoto='no-photo.png' where projId=" + Request.QueryString["id"]);

            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('success', 'Photo Removed');", true);

            ScriptManager.RegisterClientScriptBlock(this, GetType(), "CallMyFunction", "waitAndMove('projectsData.aspx', 2000);", true);
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('error', 'Error Occoured While Processing');", true);
            c.ErrorLogHandler(this.ToString(), "btnRemove_Click", ex.Message.ToString());
            return;

        }
    }
}