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
 * File         : getRange.aspx.cx
 * Date         : 11/15/2021
 * Description  : page 2/4 This page gathers the users desired
 *              : range to guess numbers from. Label1 displays the
 *              : user name. Once the range is gathered Session variables 
 *              : are created to maintain the state of the game.  
 *              : btmlim, range and ans are created.  Then highLow.aspx
 *              : is directed to play the game. 
 */
namespace HighLow_A05
{
    public partial class getRange : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (IsPostBack == false)
            {
                Label1.Text = Session["userName"].ToString();
            }
        }

        protected void btnRange_Click(object sender, EventArgs e)
        {
            Session["range"] = range.Text;
            Session["btmLim"] = 0;
            Random rand = new Random();
            int ans = rand.Next(Int32.Parse(Session["range"].ToString()));
            Session["ans"] = ans.ToString();
            Response.Redirect("~/highlow.aspx");
        }
    }
}