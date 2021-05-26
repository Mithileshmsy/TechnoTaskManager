<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeeZone/Employee.master" AutoEventWireup="true" CodeFile="complain.aspx.cs" Inherits="EmployeeZone_complain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #complain {
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
    <div id="complain">
        <h2 style="text-align:center;background:black;color:white;border-radius:10px 10px 0px 0px;min-height:40px;line-height:40px;">Complain <b style="color:#2bbbad">Here</b></h2>
        <br />
        <table>
            <tr>
                <td>Name</td>
                <td><asp:TextBox ID="TxtName" runat="server" CssClass="txt" required></asp:TextBox></td>
            </tr>
            <tr>
                <td>Topic</td>
                <td><asp:TextBox ID="TxtTopic" runat="server" CssClass="txt" required></asp:TextBox></td>
            </tr>
            <tr>
                <td>Detail</td>
                <td><asp:TextBox ID="TxtDes" runat="server" TextMode="MultiLine" Height="74px" Width="172px" CssClass="txt" required></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Button ID="BtnSubmit" runat="server" Text="Submit Complain" OnClick="BtnSubmit_Click" CssClass="btnsubmit"/></td>
                <td><asp:Button ID="BtnCancel" runat="server" Text="Cancel" OnClick="BtnCancel_Click" CssClass="btncancel" /></td>
            </tr>
        </table>
    </div>
</asp:Content>

