<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/Admin.master" AutoEventWireup="true" CodeFile="workreport.aspx.cs" Inherits="AdminZone_workreport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #workreport {
            width:80%;
            min-height:400px;
            background:white;
            margin:10px auto;
            border-radius:5%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CHPMain" Runat="Server">
    <div id="workreport">
        <h2 style="text-align:center;background:black;color:white;border-radius:10px 10px 0px 0px;min-height:40px;line-height:40px;">Work <b style="color:#2bbbad">Report</b></h2>
        <br />
        <div style="height:400px;width:100%;overflow:scroll">
            <asp:GridView ID="g1" runat="server" AutoGenerateColumns="False" DataKeyNames="wid" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="wid" HeaderText="wid" InsertVisible="False" ReadOnly="True" SortExpression="wid" />
                    <asp:BoundField DataField="Workname" HeaderText="Workname" SortExpression="Workname" />
                    <asp:BoundField DataField="Userid" HeaderText="Userid" SortExpression="Userid" />
                    <asp:BoundField DataField="details" HeaderText="details" SortExpression="details" />
                    <asp:BoundField DataField="wdate" HeaderText="wdate" SortExpression="wdate" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TechnoDBConnectionString %>" SelectCommand="SELECT * FROM [Tbl_Mywork]"></asp:SqlDataSource>
        </div>
    </div>
</asp:Content>

