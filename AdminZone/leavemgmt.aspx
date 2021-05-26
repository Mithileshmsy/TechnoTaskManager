<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/Admin.master" AutoEventWireup="true" CodeFile="leavemgmt.aspx.cs" Inherits="AdminZone_leavemgmt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style>
        #leave {
            width:80%;
            min-height:400px;
            background:white;
            margin:10px auto;
            border-radius:5%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CHPMain" Runat="Server">
    <div id="leave">
        <h2 style="text-align:center;background:black;color:white;border-radius:10px 10px 0px 0px;min-height:40px;line-height:40px;">Leave <b style="color:#2bbbad">Management</b></h2>
        <br />
        <div style="height:400px;width:100%;overflow:scroll">
            <asp:GridView ID="g1" runat="server" AutoGenerateColumns="False" DataKeyNames="Emp_Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Employee_Name" HeaderText="Employee_Name" SortExpression="Employee_Name" />
                    <asp:BoundField DataField="Emp_Id" HeaderText="Emp_Id" ReadOnly="True" SortExpression="Emp_Id" />
                    <asp:BoundField DataField="From_Date" HeaderText="From_Date" SortExpression="From_Date" />
                    <asp:BoundField DataField="To_Date" HeaderText="To_Date" SortExpression="To_Date" />
                    <asp:BoundField DataField="Total_days" HeaderText="Total_days" SortExpression="Total_days" />
                    <asp:BoundField DataField="ApplyDT" HeaderText="ApplyDT" SortExpression="ApplyDT" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TechnoDBConnectionString %>" SelectCommand="SELECT * FROM [Tbl_ApplyLeave]"></asp:SqlDataSource>
        </div>
    </div>
</asp:Content>

