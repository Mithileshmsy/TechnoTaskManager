<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralZone.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>LogIn</title>
    <style>
        
        #login{
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
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
    <div id="login">
        <h2 style="text-align:center;background:black;color:white;border-radius:10px 10px 0px 0px;min-height:40px;line-height:40px;">LogIn <b style="color:#2bbbad">Here</b></h2>
        <table>
            <tr>
               <td>User ID</td>
                <td><asp:TextBox ID="TxtUID" runat="server" placeholder="UserId" CssClass="txt" required></asp:TextBox></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><asp:TextBox ID="TxtPass" runat="server" placeholder="Password" CssClass="txt" TextMode="Password" required></asp:TextBox></td>
            </tr>
            <tr>
                <td>User Type</td>
                <td>
                    <asp:DropDownList ID="DdlType" runat="server" CssClass="txt" style="height:38px;width:97%;" required>
                         <asp:ListItem>-Select User Type-</asp:ListItem>
                         <asp:ListItem>Employee</asp:ListItem>
                         <asp:ListItem>Admin</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td><asp:Button ID="btnLogin" runat="server" Text="Log In" CssClass="btnsubmit" style="" OnClick="btnLogin_Click"/></td>
                <td> <p style="text-align:right;">
        <a style="color:red;font-style:oblique;" href="#">Forgot Password?</a>
        </p></td>
            </tr>
        </table>
       
    </div>
    
</asp:Content>

