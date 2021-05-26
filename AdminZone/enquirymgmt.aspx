<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/Admin.master" AutoEventWireup="true" CodeFile="enquirymgmt.aspx.cs" Inherits="AdminZone_enquirymgmt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #eqmgmt {
            width:80%;
            min-height:400px;
            background:white;
            margin:10px auto;
            border-radius:5%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CHPMain" Runat="Server">
    <div id="eqmgmt">
        <h2 style="text-align:center;background:black;color:white;border-radius:10px 10px 0px 0px;min-height:40px;line-height:40px;">Enquiry <b style="color:#2bbbad">Management</b></h2>
        <br />
        <div style="height:400px;width:100%;overflow:scroll">
            <asp:GridView ID="g1" runat="server" AutoGenerateColumns="False" DataKeyNames="Emp_Id" DataSourceID="SqlDataSource1" AllowPaging="True">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Emp_Id" HeaderText="Emp_Id" InsertVisible="False" ReadOnly="True" SortExpression="Emp_Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="EmailId" HeaderText="EmailId" SortExpression="EmailId" />
                    <asp:BoundField DataField="MobNo" HeaderText="MobNo" SortExpression="MobNo" />
                    <asp:BoundField DataField="Query" HeaderText="Query" SortExpression="Query" />
                    <asp:BoundField DataField="Enq_DT" HeaderText="Enq_DT" SortExpression="Enq_DT" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TechnoDBConnectionString %>" SelectCommand="SELECT * FROM [Tbl_Enquiry]" DeleteCommand="DELETE FROM [Tbl_Enquiry] WHERE [Emp_Id] = @Emp_Id" InsertCommand="INSERT INTO [Tbl_Enquiry] ([Name], [EmailId], [MobNo], [Query], [Enq_DT]) VALUES (@Name, @EmailId, @MobNo, @Query, @Enq_DT)" UpdateCommand="UPDATE [Tbl_Enquiry] SET [Name] = @Name, [EmailId] = @EmailId, [MobNo] = @MobNo, [Query] = @Query, [Enq_DT] = @Enq_DT WHERE [Emp_Id] = @Emp_Id">
                <DeleteParameters>
                    <asp:Parameter Name="Emp_Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="EmailId" Type="String" />
                    <asp:Parameter Name="MobNo" Type="String" />
                    <asp:Parameter Name="Query" Type="String" />
                    <asp:Parameter Name="Enq_DT" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="EmailId" Type="String" />
                    <asp:Parameter Name="MobNo" Type="String" />
                    <asp:Parameter Name="Query" Type="String" />
                    <asp:Parameter Name="Enq_DT" Type="String" />
                    <asp:Parameter Name="Emp_Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>

