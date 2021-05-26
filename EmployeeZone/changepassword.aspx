<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeeZone/Employee.master" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="EmployeeZone_changepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #pass {
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
        .fa {
            font-size:80px;
            text-align:center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CHPMain" Runat="Server">
    <div id="pass">
       <h2 style="text-align:center;background:black;color:white;border-radius:10px 10px 0px 0px;min-height:40px;line-height:40px;">Change <b style="color:#2bbbad">Password</b></h2>
        <br />
        <table>
            <center> <i class="fa fa-gears" ></i></center>
            <tr>
                <td>Current Password</td>
       <td> <asp:TextBox ID="TxtCurPass" runat="server" CssClass="txt" TextMode="Password" required></asp:TextBox></td>
                </tr>
            <tr>
                <td>New Password</td>
        <td><asp:TextBox ID="TxtNewPass" runat="server" CssClass="txt"  TextMode="Password" required></asp:TextBox></td>
            </tr>
            <tr>
                <td>Confirm Password</td>
        <td><asp:TextBox ID="TxtConfPass" runat="server" CssClass="txt"  TextMode="Password" required></asp:TextBox>
            </tr>
            <tr>
                <td><asp:Button ID="BtnChange" runat="server" Text="Change Password" OnClick="BtnChange_Click1" CssClass="btnsubmit" /></td>
                 <td><asp:Button ID="BtnReset" runat="server" Text="Reset" OnClick="BtnReset_Click" CssClass="btncancel" /></td>
            </tr>
            </table>
    </div>
</asp:Content>

