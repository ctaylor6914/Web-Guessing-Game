using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
/*
 * Programmer   : Colby Taylor 8466914
 * Course       : PROG2001 Web Design and Development 
 * Assignment   : A05-ASP.NET High Low Game
 * File         : Default.aspx.cx
 * Date         : 11/15/2021
 * Description  : page 1/4 This page gathers the users name and 
 *              : creates a session variable for use in the other
 *              : pages of the web app then directs the getRange.aspx
 */

namespace HighLow_A05
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnEnter_Click(object sender, EventArgs e)
        {
            Session["userName"] = name.Text;
            Response.Redirect("~/getRange.aspx");
        }
    }
}