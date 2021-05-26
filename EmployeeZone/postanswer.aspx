<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeeZone/Employee.master" AutoEventWireup="true" CodeFile="postanswer.aspx.cs" Inherits="EmployeeZone_postquestion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
         #pAnswer {
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
    <div id="pAnswer">
       <h2 style="text-align:;background:black;color:white;border-radius:10px 10px 0px 0px;min-height:40px;line-height:40px;">Post Your <b style="color:#2bbbad">Answer Here</b></h2>
       <br />
    <table>
       <tr>
           <td>Answer</td>
           <td><asp:TextBox ID="TxtAnswer" runat="server" Height="46px" TextMode="MultiLine" CssClass="txt" Width="167px" required></asp:TextBox></td>
       </tr>
       <tr>
                <td><asp:Button ID="BtnPost" runat="server" Text="Post Question" OnClick="BtnPost_Click" CssClass="btnsubmit"  /></td>
                <td><asp:Button ID="BtnCancel" runat="server" Text="Cancel" CssClass="btncancel" OnClick="BtnCancel_Click"  /></td>
            </tr>
       </table>
           </div>
</asp:Content>

