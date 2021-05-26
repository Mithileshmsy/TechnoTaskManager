<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeeZone/Employee.master" AutoEventWireup="true" CodeFile="viewanswer.aspx.cs" Inherits="EmployeeZone_viewanswer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #vAnswer {
            width:70%;
            min-height:400px;
            background:white;
            margin:10px auto;
            border-radius:5%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CHPMain" Runat="Server">
    <div id="vAnswer">
    <div>
        <h2 style="text-align:center;background:black;color:white;border-radius:10px 10px 0px 0px;min-height:40px;line-height:40px;">View <b style="color:#2bbbad">Answer</b></h2>
    </div>
    <div style="margin:50px auto;width:80%;height:200px;overflow:scroll">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" HeaderStyle-BackColor="#2BBBAD" DataKeyNames="AnsId" >
            <Columns>
                <asp:BoundField DataField="AnsId" HeaderText="AnsId" SortExpression="AnsId" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="Answer" HeaderText="Answer" SortExpression="Answer" />
                <asp:BoundField DataField="QuesId" HeaderText="QuesId" SortExpression="QuesId" />
                <asp:BoundField DataField="AnsweredBy" HeaderText="AnsweredBy" SortExpression="AnsweredBy" />
                <asp:BoundField DataField="AnsDT" HeaderText="AnsDT" SortExpression="AnsDT" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TechnoDBConnectionString %>" SelectCommand="SELECT [AnsId], [Answer], [QuesId], [AnsweredBy], [AnsDT] FROM [Tbl_Answer] WHERE ([QuesId] = @QuesId) ORDER BY [AnsId] DESC">
            <SelectParameters>
                <asp:QueryStringParameter Name="QuesId" QueryStringField="QuesId" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        </div>
</div>
</asp:Content>

