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
 * File         : win.aspx.cx
 * Date         : 11/15/2021
 * Description  : page 4/4 This page displays that the user has won
 *              : the game and displays a button "Play Again?"
 *              : if play again is pressed the page is changed to 2/4 
 *              : to gather the users desired range. 
 */
namespace HighLow_A05
{
    public partial class win : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPlayAgain_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/getRange.aspx");
        }
    }
}