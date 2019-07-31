<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.Master" AutoEventWireup="true" CodeBehind="TestSearchBloodDonor.aspx.cs" Inherits="BloodDonation.com.TestSearchBloodDonor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">Blood Donors
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">

    <div class="sb">

        <h2>Select Blood Group : </h2>
        
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" >
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
        
    </div>


    <div class="sb">

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                <asp:BoundField DataField="Blood Group" HeaderText="Blood Group" SortExpression="Blood Group" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
            </Columns>
        </asp:GridView>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tempdbConnect %>" SelectCommand="SELECT * FROM [DonorRegistration]"></asp:SqlDataSource>


    </div>


</asp:Content>
