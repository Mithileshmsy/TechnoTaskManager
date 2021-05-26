<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeeZone/Employee.master" AutoEventWireup="true" CodeFile="mywork.aspx.cs" Inherits="EmployeeZone_mywork" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #work{
            width:70%;
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
     <div id="work">
         <h2 style="text-align:center;background:black;color:white;border-radius:10px 10px 0px 0px;min-height:40px;line-height:40px;">My <b style="color:#2bbbad">Work</b></h2>
        <br /><br />
         <table>
            <tr>
                <td>Work Name</td>
                <td><asp:TextBox ID="TxtWork" runat="server" CssClass="txt" required></asp:TextBox></td>
            </tr>
            <tr>
                <td>Detail</td>
                <td><asp:TextBox ID="TxtDetail" runat="server" TextMode="MultiLine" CssClass="txt" Height="74px" Width="172px" required></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Button ID="BtnSubmit" runat="server" Text="Submit Work" OnClick="BtnSubmit_Click" CssClass="btnsubmit" /></td>
                <td><asp:Button ID="BtnCancel" runat="server" Text="Cancel" OnClick="BtnCancel_Click" CssClass="btncancel" /></td>
            </tr>
        </table>
    </div>
</asp:Content>

