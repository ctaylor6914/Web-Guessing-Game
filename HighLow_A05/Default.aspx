<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HighLow_A05.Default" %>

<!DOCTYPE html>
<!--
	Programmer: Colby Taylor 8466914
	Date: 11/15/2021
	Description: HI Low Game - have the user select a range of numbers to guess, randomly 
	generate a number within that range and have the user guess.  If the guessed number 
	is higher than the random number then the range is decreased to the range below the 
	guessed number.
    This page 1/4 of the highlow game gathers the users Name they want to play with
    and validates that the name textbox is not empty. Other then that the name can be 
    anything
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
    <form id="form1" runat="server">
        <div>
            <p>Please enter your name: <asp:TextBox ID="name" runat="server" AutoFocus="True"></asp:TextBox>
            <asp:RequiredFieldValidator 
                ID="RequiredFieldValidator1" 
                runat="server" 
                ErrorMessage="Name Cannot Be Blank" 
                ControlToValidate="name" 
                ForeColor="Red">
            </asp:RequiredFieldValidator>
            </p>
            <p><asp:Button ID="btnEnter" runat="server" Text="Enter" OnClick="btnEnter_Click" /></p>
        </div>
    </form>
</body>
</html>
