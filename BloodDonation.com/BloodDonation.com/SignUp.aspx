<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="BloodDonation.com.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">SignUp
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        input[type=text], imput[type=password], input[type=number]
        {
            width : 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        .container1
        {
            padding: 20px;
            border: outset;
            width: 35%;
            height: 100%;
            margin-left: 1%;
        }

        #btnSubmit
        {
            float: left;
            width: 20%;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
        }

        .a1{
            float: left;
        }

        .l1{
            width: 390px;
            height: 1350px;
            margin: 7px;
        }

    </style>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <div class="a1">
        <img class="l1" src="assets/img/leftImg.jpg" />
    </div>

    <div class="container1 a1">

        Name :

        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        
        <br />
        <br />

        Email :
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <br />
        <br />

        Mobile :
        <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
        <br />
        <br />

        Gender : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:RadioButton ID="rbMale" runat="server" GroupName="gen" Text="Male" Checked="true"/>

        &nbsp;&nbsp;
        <asp:RadioButton ID="rbFemale" runat="server" GroupName="gen" Text="Female" />

        <br />
        <br />
        <br />

        Age : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:DropDownList ID="ddAge" runat="server" AutoPostBack="true">
            <asp:ListItem>(Select Age)</asp:ListItem> 
            <asp:ListItem>above 18</asp:ListItem>
            <asp:ListItem>below 18</asp:ListItem>
        </asp:DropDownList>

        <br />
        <br />
        <br />

        Blood Group : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:DropDownList ID="ddBg" runat="server" AutoPostBack="true">
            <asp:ListItem>(Select Blood Group)</asp:ListItem> 
            <asp:ListItem>A+</asp:ListItem>
            <asp:ListItem>A-</asp:ListItem>
            <asp:ListItem>B+</asp:ListItem>
            <asp:ListItem>B-</asp:ListItem>
            <asp:ListItem>O+</asp:ListItem>
            <asp:ListItem>O-</asp:ListItem>
            <asp:ListItem>AB+</asp:ListItem>
            <asp:ListItem>AB-</asp:ListItem>
            
        </asp:DropDownList>

        <br /><br /><br />

        Weight (in KG) : <asp:TextBox ID="txtWeight" TextMode="Number" runat="server"></asp:TextBox>

        <br /> <br />

        Height (in cm) : <asp:TextBox ID="txtHeight" TextMode="Number" runat="server"></asp:TextBox>

        <br /> <br />

        Select Image : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:FileUpload ID="FileUpload1" runat="server" />

        <br />
        <br />
        <br />

        Password : <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>
        
        <br /><br /><br />

        Address : <asp:TextBox ID="txtAddress" TextMode="Multiline" runat="server"></asp:TextBox>

        <br /><br />
        
        
        
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />

    </div>

    <div class="a1">
        <img class="l1" src="assets/img/rImg.jpg" />
    </div>
</asp:Content>