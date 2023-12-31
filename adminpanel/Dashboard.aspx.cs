﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminpanel_Dashboard : System.Web.UI.Page
{
    iClass c = new iClass();
    public string[] arrCounts = new string[30];
    protected void Page_Load(object sender, EventArgs e)
    {
        GetCount();
    }

    protected void GetCount()
    {
        try
        {
            arrCounts[0] = c.returnAggregate("Select Count(projId) From ProjectsData where DelMark=0").ToString();

            arrCounts[1] = c.returnAggregate("Select Count(testId) From TestimonialsData where Delmark=0").ToString();

            arrCounts[2] = c.returnAggregate("Select Count(contId) From ContactNumbers").ToString();
            //arrcounts[4] = c.returnaggregate("select count(hosp_reqid) from hosprequirements where hosp_reqstatus=0 and delmark=0").tostring();
            //arrcounts[5] = c.returnaggregate("select count(imageid) from imagesdata where delmark=0 ").tostring();
            //arrcounts[6] = c.returnaggregate("select count(reqid) from requirementsdata where delmark=0").tostring();
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, GetType(), "myScript", "TostTrigger('error', 'Error Occoured While Processing');", true);
            c.ErrorLogHandler(this.ToString(), "GetCount", ex.Message.ToString());
            return;

        }
    }
}