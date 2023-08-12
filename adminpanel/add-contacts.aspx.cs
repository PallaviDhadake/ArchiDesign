using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

public partial class adminpanel_add_contacts : System.Web.UI.Page
{
    iClass c = new iClass();
    public string pgTitle;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            btnSave.Attributes.Add("onclick", "this.disabled=true; this.value='Processing...';" + ClientScript.GetPostBackEventReference(btnSave, null) + ";");
            // btnDelete.Attributes.Add("onclick", " this.disabled = true; this.value='Processing...'; " + ClientScript.GetPostBackEventReference(btnDelete, null) + ";");
            btnCancel.Attributes.Add("onclick", "this.disabled=true; this.value='Processing...';" + ClientScript.GetPostBackEventReference(btnCancel, null) + ";");
           

            if (!IsPostBack)
            {
                FillGrid();
                GetData(Convert.ToInt32(Request.QueryString["id"]));

                if (lblId.Text == "[New]")
                {
                    btnSave.Text = "Add";
                }
                else
                {
                    btnSave.Text = "Update";

                }

            }

            pgTitle = lblId.Text == "[New]" ? "Add Contact Numbers " : "Edit Contact Numbers";
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
            using (DataTable dtcontact = c.GetDataTable("Select * From ContactNumbers Where DelMark=0"))
            {
                gvContacts.DataSource = dtcontact;
                gvContacts.DataBind();

                if (dtcontact.Rows.Count > 0)
                {
                    gvContacts.UseAccessibleHeader = true;
                    gvContacts.HeaderRow.TableSection = TableRowSection.TableHeader;
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


    protected void gvContacts_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        try
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Literal litAnch = (Literal)e.Row.FindControl("litAnch");
                litAnch.Text = "<a href=\"add-contacts.aspx?action=edit&id=" + e.Row.Cells[0].Text + "\"class=\"gAnch\" title=\"View/Edit\"></a>";
            }
        }
        catch(Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('error', 'Error Occoured While Processing');", true);
            c.ErrorLogHandler(this.ToString(), "gvContacts_RowDataBound", ex.Message.ToString());
            return;
        }
    }


    public void GetData(int ConIdx)
    {
        try
        {
            using (DataTable dtproj = c.GetDataTable("select * from ContactNumbers where contId=" + ConIdx))
            {
                if (dtproj.Rows.Count > 0)
                {
                    DataRow row = dtproj.Rows[0];
                    lblId.Text = ConIdx.ToString();

                    txtConNum.Text = row["contNumber"].ToString();
                   
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
            if (txtConNum.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('warning', 'All * Fields are mandatory');", true);
                return;
            }

            int maxId = lblId.Text == "[New]" ? c.NextId("ContactNumbers", "contId") : Convert.ToInt32(lblId.Text);


            if (c.ValidateMobile(txtConNum.Text)==false)
            {
                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('warning', 'Please add valid contact number');", true);
                return;
            }


            if (lblId.Text == "[New]")
            {

                if (c.IsRecordExist("Select contId from ContactNumbers where contNumber='" + txtConNum.Text + "' And DelMark=0"))
                {

                    ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('warning', 'Entered contact number is already exist');", true);
                    return;
                }

                c.ExecuteQuery("Insert into ContactNumbers(contId, contNumber, DelMark)Values(" + maxId + ", '" + txtConNum.Text + "', 0)");


                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('success', 'Contact Number Added');", true);

            }
            else
            {
                if (c.IsRecordExist("Select contId from ContactNumbers where contNumber='" + txtConNum.Text + "' And DelMark=0"))
                {

                    ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('warning', 'Entered contact number is already exist');", true);
                    return;
                }

                c.ExecuteQuery("Update ContactNumbers set contId=" + maxId + ", contNumber='" + txtConNum.Text + "' where contId=" + maxId);


                ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('success', 'Contact Number Updated');", true);

               
            }

            FillGrid();

            //ScriptManager.RegisterClientScriptBlock(this, GetType(), "CallMyFunction", "waitAndMove('projectsData.aspx', 2000);", true);

            txtConNum.Text = "";

        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('error', 'Error Occoured While Processing');", true);
            c.ErrorLogHandler(this.ToString(), "btnSave_Click", ex.Message.ToString());
            return;
        }
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtConNum.Text = "";
    }

    
    protected void gvContacts_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            GridViewRow gRow = (GridViewRow)((Button)e.CommandSource).NamingContainer;
            if (e.CommandName == "Update")
            {
               

                c.ExecuteQuery("Delete From ContactNumbers where contId=" + gRow.Cells[0].Text);
                //c.ExecuteQuery("Update ContactNumbers set contNumber='8888888888' where contId=" + gRow.Cells[0].Text);

                //ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('success', 'Contact Number Updated');", true);

                //FillGrid();

                // ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('success', 'Record Deleted');", true);
                Response.Redirect("add-contacts.aspx");
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('error', 'Error Occoured While Processing');", true);
            c.ErrorLogHandler(this.ToString(), "gvContacts_RowCommand", ex.Message.ToString());
            return;
        }
    }

       
}