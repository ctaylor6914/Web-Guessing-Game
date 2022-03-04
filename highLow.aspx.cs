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
 * File         : highlow.aspx.cx
 * Date         : 11/15/2021
 * Description  : page 3/4 This page gathers the users guess
 *              : the page labels are updated to ensure proper
 *              : guesses and to make sure the text box isnt submitted blank.
 *              : the game logic is conducted in btnGuess_click
 */
namespace HighLow_A05
{
    public partial class highLow : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            
            Label2.Text = Session["userName"].ToString();
            btmLimit.Text = Session["btmLim"].ToString();
            range.Text = Session["range"].ToString();
            

            int newRange = Int32.Parse(Session["range"].ToString()) - 1;
            int newBtmLim = Int32.Parse(Session["btmLim"].ToString()) + 1;
            GuessValidator.MaximumValue = newRange.ToString();
            GuessValidator.MinimumValue = newBtmLim.ToString();
        }
        protected void btnGuess_Click(object sender, EventArgs e)
        {
            // Label1.Text = name.Text;
            int guessNum = Int32.Parse(guess.Text);
            int ans = Int32.Parse(Session["ans"].ToString());
            
            if (guessNum == ans)
            {
                Response.Redirect("~/win.aspx");
            }
            else if (guessNum > ans)
            {
                Session["range"] = guess.Text;
                guess.Text = "";
                Response.Redirect("~/highLow.aspx");
            }
            else if (guessNum < ans)
            {
                Session["btmLim"] = guess.Text;
                guess.Text = "";
                Response.Redirect("~/highLow.aspx");
            }
        }

        
    }
}