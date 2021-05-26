<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeeZone/Employee.master" AutoEventWireup="true" CodeFile="todaytask.aspx.cs" Inherits="EmployeeZone_todaytask" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #todaytask {
            width:70%;
            min-height:400px;
            background:white;
            margin:10px auto;
            border-radius:5%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CHPMain" Runat="Server">
    <div id="todaytask">
        <h2 style="text-align:center;background:black;color:white;border-radius:10px 10px 0px 0px;min-height:40px;line-height:40px;">Today's <b style="color:#2bbbad">Task</b></h2>
        <br />
        <div style="height:400px;width:100%;overflow:scroll">
            <asp:GridView ID="g1" runat="server" AutoGenerateColumns="False" DataKeyNames="Emp_Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Employee_Name" HeaderText="Employee_Name" SortExpression="Employee_Name" />
                    <asp:BoundField DataField="Emp_Id" HeaderText="Emp_Id" ReadOnly="True" SortExpression="Emp_Id" />
                    <asp:BoundField DataField="Task_Name" HeaderText="Task_Name" SortExpression="Task_Name" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:BoundField DataField="Finishing_DT" HeaderText="Finishing_DT" SortExpression="Finishing_DT" />
                    <asp:BoundField DataField="Allot_DT" HeaderText="Allot_DT" SortExpression="Allot_DT" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TechnoDBConnectionString %>" SelectCommand="SELECT * FROM [Tbl_WorkAllot] WHERE ([Emp_Id] = @Emp_Id)">
                <SelectParameters>
                    <asp:SessionParameter Name="Emp_Id" SessionField="User" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>

