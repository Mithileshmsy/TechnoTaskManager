<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/Admin.master" AutoEventWireup="true" CodeFile="employeemgmt.aspx.cs" Inherits="AdminZone_employeemgmt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #empmgmt {
            width:80%;
            min-height:400px;
            background:white;
            margin:10px auto;
            border-radius:5%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CHPMain" Runat="Server">
    <div id="empmgmt">
        <h2 style="text-align:center;background:black;color:white;border-radius:10px 10px 0px 0px;min-height:40px;line-height:40px;">Employee <b style="color:#2bbbad">Management</b></h2>
        <br />
        <div style="height:400px;width:100%;overflow:scroll">
        <asp:GridView ID="g1" runat="server" AutoGenerateColumns="False" DataKeyNames="EmailId" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="EmpName" HeaderText="EmpName" SortExpression="EmpName" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
                <asp:BoundField DataField="DOJ" HeaderText="DOJ" SortExpression="DOJ" />
                <asp:BoundField DataField="Qualification" HeaderText="Qualification" SortExpression="Qualification" />
                <asp:BoundField DataField="MobNo" HeaderText="MobNo" SortExpression="MobNo" />
                <asp:BoundField DataField="EmailId" HeaderText="EmailId" ReadOnly="True" SortExpression="EmailId" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:ImageField DataImageUrlField="Profile" DataImageUrlFormatString="~/UserPic/{0}" ControlStyle-Height="60px" ControlStyle-Width="60px"></asp:ImageField>
            </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TechnoDBConnectionString %>" SelectCommand="SELECT [EmpName], [Gender], [Designation], [DOJ], [Qualification], [MobNo], [EmailId], [Address], [Profile] FROM [Tbl_EmpRegistration]"></asp:SqlDataSource>
        </div>
    </div>
</asp:Content>

