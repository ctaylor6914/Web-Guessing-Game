<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="highLow.aspx.cs" Inherits="HighLow_A05.highLow" %>

<!DOCTYPE html>
<!--
	Programmer: Colby Taylor 8466914
	Date: 11/15/2021
	Description: HI Low Game - have the user select a range of numbers to guess, randomly 
	generate a number within that range and have the user guess.  If the guessed number 
	is higher than the random number then the range is decreased to the range below the 
	guessed number.
    This page 3/4 of the highlow game gathers the guess from the user. With assistance from 
    the code behind on page highLow.aspx.cs the range validator min and max values are updated
    as well as the labels to show the user the acceptable range. 
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
    <form id="form3" runat="server">
        <div>
            <p> 
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                , Please enter a guess from <asp:Label ID="btmLimit" runat="server" Text="Label"></asp:Label> - <asp:Label ID="range" runat="server" Text="Label"></asp:Label>: <asp:TextBox ID="guess" runat="server" AutoFocus="True"></asp:TextBox>
            </p>
            <asp:RequiredFieldValidator 
                ID="RequiredFieldValidator3" 
                runat="server" 
                ErrorMessage="Guess Cannot Be Blank" 
                ControlToValidate="guess" 
                ForeColor="Red">
            </asp:RequiredFieldValidator>
            <asp:RangeValidator 
                ID="GuessValidator" 
                runat="server"
                ErrorMessage="Please Enter an Integer Value Within Range" 
                ControlToValidate="guess" 
                MaximumValue="100"
                MinimumValue="1"
                ForeColor="Red"
                Type="Integer"></asp:RangeValidator>
            <p><asp:Button ID="btnGuess" runat="server" Text="Enter Guess" OnClick="btnGuess_Click" /></p>
        </div>
    </form>
</body>
</html>
