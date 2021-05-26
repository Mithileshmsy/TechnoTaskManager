<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeeZone/Employee.master" AutoEventWireup="true" CodeFile="discussionboard.aspx.cs" Inherits="EmployeeZone_discussionboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style>
        #discussion {
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
    <div id="discussion">
       <div><h2 style="text-align:center;background:black;color:white;border-radius:10px 10px 0px 0px;min-height:40px;line-height:40px;">Discussion <b style="color:#2bbbad">Board</b></h2>
       <br />
    <table>
       <tr>
           <td>Question Topic</td>
           <td><asp:TextBox ID="TxtQuestion" runat="server" Height="46px" TextMode="MultiLine" CssClass="txt" Width="167px" required></asp:TextBox></td>
       </tr>
       <tr>
                <td><asp:Button ID="BtnPost" runat="server" Text="Post Question" OnClick="BtnPost_Click" CssClass="btnsubmit" /></td>
                <td><asp:Button ID="BtnCancel" runat="server" Text="Cancel" OnClick="BtnCancel_Click" CssClass="btncancel" /></td>
            </tr>
       </table>
           </div>
       <br /><br />
       <div style="width:100%;height:250px;overflow:scroll">
           <asp:GridView ID="g1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="QuesId" AllowPaging="True">
               <Columns>
                   <asp:BoundField DataField="QuesId" HeaderText="QuesId" SortExpression="QuesId" InsertVisible="False" ReadOnly="True" />
                   <asp:BoundField DataField="Question" HeaderText="Question" SortExpression="Question" />
                   <asp:BoundField DataField="AskedBy" HeaderText="AskedBy" SortExpression="AskedBy" />
                   <asp:BoundField DataField="QDT" HeaderText="QDT" SortExpression="QDT" />
                   <asp:HyperLinkField DataNavigateUrlFields="QuesId" DataNavigateUrlFormatString="postanswer.aspx?QuesId={0}" HeaderText="Answer" Text="Click Here To Answer" />
                   <asp:HyperLinkField DataNavigateUrlFields="QuesId" DataNavigateUrlFormatString="viewanswer.aspx?QuesId={0}" HeaderText="Answer View" Text="View" />
               </Columns>
           </asp:GridView>
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TechnoDBConnectionString %>" SelectCommand="SELECT [QuesId], [Question], [AskedBy], [QDT] FROM [Tbl_Question] ORDER BY [QuesId] DESC"></asp:SqlDataSource>
       </div>
       </div>
</asp:Content>

