using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
public partial class contact_us : System.Web.UI.Page
{
    iClass c = new iClass();
    public string contstr;
    protected void Page_Load(object sender, EventArgs e)
    {
        btnSubmit.Attributes.Add("onclick", "this.disabled=true; this.value='Processing...';" + ClientScript.GetPostBackEventReference(btnSubmit, null) + ";");
        GetNumbers();
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtName.Text == "" || txtEmail.Text == "" || txtPhone.Text == "" ||  txtMsg.Text == "" || ddrServices.SelectedIndex==0)
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
            strMail.Append("You have a new feedback at Archi Design.org, <br/>");
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

           // ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('success', 'Thank you for your enquiry. We will contact you soon.');", true);

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

    public void GetNumbers()
    {
        try
        {
            StringBuilder strMarkup = new StringBuilder();
            using (DataTable dtcont = c.GetDataTable("select * from ContactNumbers"))
            {

                if (dtcont.Rows.Count > 0)
                {
                    foreach (DataRow row in dtcont.Rows)
                    {
                        strMarkup.Append("<a href=\"tel:"+ row["contNumber"].ToString() + "\" class=\"con_call line-ht-5 fontRegular colorWhite txtDecNone\">"+row["contNumber"].ToString()+"</a>");
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