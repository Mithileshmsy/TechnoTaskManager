<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/Admin.master" AutoEventWireup="true" CodeFile="feedbackmgmt.aspx.cs" Inherits="AdminZone_feedbackmgmt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #feedback {
            width:80%;
            min-height:400px;
            background:white;
            margin:10px auto;
            border-radius:5%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CHPMain" Runat="Server">
    <div id="feedback">
        <h2 style="text-align:center;background:black;color:white;border-radius:10px 10px 0px 0px;min-height:40px;line-height:40px;">Feedback <b style="color:#2bbbad">Management</b></h2>
        <br />
        <div style="height:400px;width:100%;overflow:scroll">
            <asp:GridView ID="g1" runat="server" AutoGenerateColumns="False" DataKeyNames="Fid" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Fid" HeaderText="Fid" InsertVisible="False" ReadOnly="True" SortExpression="Fid" />
                    <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" />
                    <asp:BoundField DataField="FeedBack_Sub" HeaderText="FeedBack_Sub" SortExpression="FeedBack_Sub" />
                    <asp:BoundField DataField="Msg" HeaderText="Msg" SortExpression="Msg" />
                    <asp:BoundField DataField="MsgDT" HeaderText="MsgDT" SortExpression="MsgDT" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TechnoDBConnectionString %>" SelectCommand="SELECT * FROM [Tbl_FeedBack]"></asp:SqlDataSource>
        </div>
    </div>
</asp:Content>

