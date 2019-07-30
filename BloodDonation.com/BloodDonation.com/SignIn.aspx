<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="BloodDonation.com.SignIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">Sign In
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .container2 {
            border : outset;
            width : 400px;
            height : 360px;
            padding : 7px;
            margin-left : 35%;
            margin-top : 15%;
            background-color : coral;
            margin-top : 40px;
        }

        input[type=text], input[type=password]
        {
            width : 100%;
            padding : 12px 20px;
            margin : 8px 0;
            display : inline-block;
            border : 1px solid #ccc;
            box-sizing : border-box;
        }

        .btn1 {
            float : left;
            width : 20%;
            height : 100%;
            background-color : #4CAF50;
            color : white;
            margin-top : 10px;
            border : none;
            cursor : pointer;
        }

    </style>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <div class="container2">
        Email :
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        Password :
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
        <a href="SignUp.aspx">
            <h4 style="color:red;">New User?</h4>

        </a>
        <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn-1" OnClick="Button1_Click" />
    </div>
</asp:Content>
