<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/Admin.master" AutoEventWireup="true" CodeFile="sendsms.aspx.cs" Inherits="AdminZone_sendsms" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #sms {
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
    <div id="sms">
        <h2 style="text-align:center;background:black;color:white;border-radius:10px 10px 0px 0px;min-height:40px;line-height:40px;">SMS <b style="color:#2bbbad">Sender</b></h2>
        <br />
        <table>
            <tr>
                <td>Mobile No.</td>
                <td><asp:TextBox ID="TxtNumber" runat="server" CssClass="txt" required></asp:TextBox></td>
            </tr>
            <tr>
                <td>Message</td>
                <td><asp:TextBox ID="TxtMsg" runat="server" TextMode="MultiLine" CssClass="txt" Height="77px" Width="184px" required></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Button ID="BtnSend" runat="server" Text="Send SMS" OnClick="BtnSend_Click" CssClass="btnsubmit" /></td>
                <td><asp:Button ID="BtnCancel" runat="server" Text="Cancel" CssClass="btncancel" OnClick="BtnCancel_Click" /></td>
            </tr>
        </table>
    </div>
</asp:Content>

