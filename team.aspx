<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralZone.master" AutoEventWireup="true" CodeFile="team.aspx.cs" Inherits="team" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #team {
            width:70%;
            min-height:400px;
            background:white;
            margin:10px auto;
            border-radius:5%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
    <div id="team">
         <h2 style="text-align:center;background:black;color:white;border-radius:10px 10px 0px 0px;min-height:40px;line-height:40px;">Our <b style="color:#2bbbad">Team</b></h2>
        
        <div style="height:400px;width:100%;overflow:scroll">
            <asp:GridView ID="g1" runat="server" Width="100%" GridLines="None" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" HeaderStyle-Font-Bold="true" CellPadding="4" ForeColor="#333333">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="EmpName" HeaderText="Our Member" SortExpression="EmpName" />
                    <%--<asp:BoundField DataField="Profile" HeaderText="Profile" SortExpression="Profile" />--%>
                    <asp:ImageField DataImageUrlField="Profile" HeaderText="Profile" DataImageUrlFormatString="~/UserPic/{0}" ControlStyle-Height="60px" ControlStyle-Width="60px">
<ControlStyle Height="60px" Width="60px"></ControlStyle>
                    </asp:ImageField>
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />

<HeaderStyle Font-Bold="True" BackColor="#2bbbad" Height="30px" ForeColor="White"></HeaderStyle>
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TechnoDBConnectionString %>" SelectCommand="SELECT [EmpName], [Profile] FROM [Tbl_EmpRegistration]"></asp:SqlDataSource>
        </div>
    </div>
</asp:Content>

