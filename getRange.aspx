<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="getRange.aspx.cs" Inherits="HighLow_A05.getRange" %>

<!DOCTYPE html>
<!--
	Programmer: Colby Taylor 8466914
	Date: 11/15/2021
	Description: HI Low Game - have the user select a range of numbers to guess, randomly 
	generate a number within that range and have the user guess.  If the guessed number 
	is higher than the random number then the range is decreased to the range below the 
	guessed number.
    This page 2/4 of the highlow game gathers the range of which the user would like to 
    guess from. This page validates that the range is an integer value over the value 1.
    it also has a validator that ensures the text box isnt empty
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        High Low Game
    </title>
    <style>
        body 
        {
            background-color: powderblue;
        }
        h1   
        {
            color: blue;
        }
    </style>
</head>
<body>
    <h1>Welcome to The High-Low Game</h1>
    <h3>Test Your Skills</h3>
    <form id="form2" runat="server">
        <div>
            <p> 
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
               , Please enter a Maximum Range: <asp:TextBox ID="range" runat="server" AutoFocus="True"></asp:TextBox>
            <asp:RequiredFieldValidator 
                ID="RequiredFieldValidator2" 
                runat="server" 
                ErrorMessage="Range Cannot Be Blank" 
                ControlToValidate="range" 
                ForeColor="Red">
            </asp:RequiredFieldValidator>
            <asp:RangeValidator 
                ID="RangeCheck" 
                runat="server" 
                ErrorMessage="Please Enter an Integer Value Greater Than 1"
                ControlToValidate="range"
                Type="Integer" 
                MinimumValue="2"
                MaximumValue="1000000"
                ForeColor="Red">
            </asp:RangeValidator>
               
            </p>
            <p><asp:Button ID="btnRange" runat="server" Text="Submit Range" OnClick="btnRange_Click" /></p>
        </div>
    </form>
</body>
</html>
