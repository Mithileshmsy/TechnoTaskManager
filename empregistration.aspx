<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralZone.master" AutoEventWireup="true" CodeFile="empregistration.aspx.cs" Inherits="empregistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 75%;
            margin:0px auto;
            line-height:0px;
            margin-top:5px;
            
        }
        .auto-style2 {
            color: #000000;
            font-weight: bold;
        }
        #form {
            background-color:white;
            width:90%;
            margin:0px auto;
            border-radius:25px;
        }
        td {
            width:50%;
            margin:10%;
            padding:10px;
        }
        .txt {
            width:91%;
            border-radius:10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
    <div id="form">
        <h2 style="text-align:center;background:black;color:white;border-radius:10px 10px 0px 0px;min-height:40px;line-height:40px;">Registration <b style="color:#2bbbad">Here</b></h2>
    <div style="overflow:scroll;width: 100%;height:500px">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Employee Name:</td>
                <td><asp:TextBox runat="server" ID="TxtName" CssClass="txt" required></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style2">Gender:</td>
                <td><asp:RadioButton runat="server" ID="male" GroupName="a"/>Male <asp:RadioButton runat="server" GroupName="a" ID="female"/>Female</td>
            </tr>
            <tr>
                <td class="auto-style2">Designation:</td>
                <td>
                    <asp:DropDownList ID="DdlDesignation" runat="server" CssClass="txt">
                        <asp:ListItem>----Select----</asp:ListItem>
                        <asp:ListItem>Project Manager</asp:ListItem>
                        <asp:ListItem>Project Coordinator</asp:ListItem>
                        <asp:ListItem>Saftware Developer</asp:ListItem>
                        <asp:ListItem>Junior Saftware Developer</asp:ListItem>
                        <asp:ListItem>Web Designer</asp:ListItem>
                        <asp:ListItem>Junior Web Designer</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Date Of Joining:</td>
                <td><asp:TextBox runat="server" ID="TxtDOJ" CssClass="txt" required TextMode="Date"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style2">Qualification:</td>
                <td>
                    <asp:DropDownList ID="DdlQualification" runat="server" CssClass="txt">
                        <asp:ListItem>---Select---</asp:ListItem>
                        <asp:ListItem>MCA</asp:ListItem>
                        <asp:ListItem>BCA</asp:ListItem>
                        <asp:ListItem>M.Sc(CS/IT)</asp:ListItem>
                        <asp:ListItem>B.Sc(CS/IT)</asp:ListItem>
                        <asp:ListItem>M,Tech(CS/IT)</asp:ListItem>
                        <asp:ListItem>B.Tech(CS/IT)</asp:ListItem>
                        <asp:ListItem>DIploma(CS/IT)</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Contact No:</td>
                <td><asp:TextBox runat="server" ID="TxtContact" CssClass="txt required" required TextMode="Number"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style2">Email ID:</td>
                <td><asp:TextBox runat="server" ID="TxtEmail" CssClass="txt" required></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style2">Password:</td>
                <td><asp:TextBox runat="server" ID="TxtPass" CssClass="txt" TextMode="Password" required></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style2">Confirm Pasword:</td>
                <td><asp:TextBox runat="server" ID="TxtCPass" CssClass="txt" TextMode="Password" required></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style2">Profile Picture:</td>
                <td><asp:FileUpload runat="server" ID="FUPhoto" /></td>
            </tr>
            <tr>
                <td class="auto-style2">Address:</td>
                <td><asp:TextBox runat="server" ID="TxtAddress" CssClass="txt" required TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style2">Captcha:</td>
                <td>
                    <asp:Label ID="LblCaptha" runat="server" Font-Strikeout="True" Font-Size="Larger" ></asp:Label>
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/refresh.jpg" Width="45px" ToolTip="Refresh Code" style="border-radius:50%;" OnClick="ImageButton1_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Enter Captcha Code</td>
                <td><asp:TextBox runat="server" ID="TxtCaptcha" CssClass="txt"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center"><asp:Button runat="server" ID="btn1" CssClass="btnsubmit" Text="Register Now" OnClick="btn1_Click"/></td>
            </tr>
    </table>
    </div>
    </div>
</asp:Content>

