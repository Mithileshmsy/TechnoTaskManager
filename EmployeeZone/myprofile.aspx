<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeeZone/Employee.master" AutoEventWireup="true" CodeFile="myprofile.aspx.cs" Inherits="EmployeeZone_myprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #profile{
            width:90%;
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
            margin-left:2%;
            padding-left:20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CHPMain" Runat="Server">
    <div id="profile">
        <h2 style="text-align:center;background:black;color:white;border-radius:10px 10px 0px 0px;min-height:40px;line-height:40px;">Edit <b style="color:#2bbbad">Profile</b></h2>
        <br />
    <table>
        <tr>
            <td>Name</td>
            <td>
                <asp:TextBox ID="TxtEmpName" runat="server" CssClass="txt"></asp:TextBox>
            </td>
            <td rowspan="4">
                <asp:Image ID="UserPic" runat="server" Height="100px" Width="100px" />
            </td>
        </tr>
        <tr>
            <td>Gander</td>
            <td>
                <asp:RadioButton ID="RdbMale" runat="server" GroupName="gender" Text="Male" />
                <asp:RadioButton ID="RdbFemale" runat="server" GroupName="gender" Text="Female" />
            </td>
        </tr>
        <tr>
            <td>Designation</td>
            <td>
                <asp:TextBox ID="TxtDesignation" runat="server" CssClass="txt"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>DOB</td>
            <td>
                <asp:TextBox ID="TxtDOJ" runat="server" CssClass="txt"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Qualification</td>
            <td>
                <asp:TextBox ID="TxtQualification" runat="server" CssClass="txt"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Contact No</td>
            <td>
                <asp:TextBox ID="TxtMobNo" runat="server" CssClass="txt"></asp:TextBox>
            </td>
            <td>
                <asp:FileUpload ID="FUFile" runat="server" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td rowspan="3">
                <asp:TextBox ID="TxtAddress" runat="server" TextMode="MultiLine" CssClass="txt" Height="57px" Width="175px"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="LblEmail" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Address</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="BtnEdit" runat="server" Text="Edit Profile" OnClick="BtnEdit_Click" CssClass="btnsubmit" />
                <asp:Button ID="BtnUpdate" runat="server" Text="Update Profile" OnClick="BtnUpdate_Click" CssClass="btnsubmit" />
            </td>
            <td>
                <asp:Button ID="BtnCancel" runat="server" OnClick="BtnCancel_Click" Text="Cancel" CssClass="btncancel" />
            </td>
        </tr>
    </table>
  </div>
</asp:Content>

