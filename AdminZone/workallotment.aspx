<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/Admin.master" AutoEventWireup="true" CodeFile="workallotment.aspx.cs" Inherits="AdminZone_workallotment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #wallot {
            width:80%;
            min-height:400px;
            background:white;
            margin:10px auto;
            border-radius:5%;
        }
        table {
            margin:0 10% auto;
        }
        td {
            width:50%;
            margin:10%;
            padding:10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CHPMain" Runat="Server">
    <div id="wallot">
        <h2 style="text-align:center;background:black;color:white;border-radius:10px 10px 0px 0px;min-height:40px;line-height:40px;">Work <b style="color:#2bbbad">Allotment</b></h2>
        <br />
    <table>
        <tr>
            <td>Employee Name</td>
            <td>
                <asp:DropDownList ID="DdlEmployeeName" runat="server" CssClass="txt" DataSourceID="SqlDataSource1" DataTextField="EmpName" DataValueField="EmpName">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TechnoDBConnectionString %>" SelectCommand="SELECT [EmpName] FROM [Tbl_EmpRegistration]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>Employee Id</td>
            <td>
                <asp:DropDownList ID="DdlEmployeeId" runat="server" CssClass="txt" DataSourceID="SqlDataSource2" DataTextField="EmailId" DataValueField="EmailId">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TechnoDBConnectionString %>" SelectCommand="SELECT [EmailId] FROM [Tbl_EmpRegistration]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>Task Name</td>
            <td>
                <asp:TextBox ID="TxtTask" runat="server" CssClass="txt" required></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Task Description</td>
            <td>
                <asp:TextBox ID="TxtTDes" runat="server" CssClass="txt" required></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Finishing Date</td>
            <td>
                <asp:TextBox ID="TxtFDate" runat="server" CssClass="txt" required></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="BtnSubmit" runat="server" OnClick="BtnSubmit_Click" Text="Submit" CssClass="btnsubmit" />
            </td>
            <td>
                <asp:Button ID="BtnCancel" runat="server" Text="Cancel" CssClass="btncancel" OnClick="BtnCancel_Click" />
            </td>
        </tr>
    </table>
    </div>
</asp:Content>

