<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/Admin.master" AutoEventWireup="true" CodeFile="notificationmgmt.aspx.cs" Inherits="AdminZone_notificationmgmt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        #notification {
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
    <div id="notification">
         <h2 style="text-align:center;background:black;color:white;border-radius:10px 10px 0px 0px;min-height:40px;line-height:40px;">Notification <b style="color:#2bbbad">Management</b></h2>
        <br />
        <table>
            <tr>
                <td>Notification Here</td>
                <td><asp:TextBox ID="TxtNews" runat="server" TextMode="MultiLine" CssClass="txt" Height="59px" Width="178px" required></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Button ID="BtnSubmit" runat="server" Text="Add" OnClick="BtnSubmit_Click" CssClass="btnsubmit" /></td>
                <td><asp:Button ID="BtnCancel" runat="server" Text="Cancel" CssClass="btncancel" OnClick="BtnCancel_Click" /></td>
            </tr>
        </table>
        <div style="height:200px;width:100%;overflow:scroll"><asp:GridView ID="g1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="NID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="NID" HeaderText="NID" InsertVisible="False" ReadOnly="True" SortExpression="NID" />
                <asp:BoundField DataField="NMsg" HeaderText="NMsg" SortExpression="NMsg" />
                <asp:BoundField DataField="NDT" HeaderText="NDT" SortExpression="NDT" />
            </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TechnoDBConnectionString %>" DeleteCommand="DELETE FROM [Tbl_Notification] WHERE [NID] = @NID" InsertCommand="INSERT INTO [Tbl_Notification] ([NMsg], [NDT]) VALUES (@NMsg, @NDT)" SelectCommand="SELECT * FROM [Tbl_Notification]" UpdateCommand="UPDATE [Tbl_Notification] SET [NMsg] = @NMsg, [NDT] = @NDT WHERE [NID] = @NID">
                <DeleteParameters>
                    <asp:Parameter Name="NID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="NMsg" Type="String" />
                    <asp:Parameter Name="NDT" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="NMsg" Type="String" />
                    <asp:Parameter Name="NDT" Type="String" />
                    <asp:Parameter Name="NID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
         </div>
    </div>
</asp:Content>

