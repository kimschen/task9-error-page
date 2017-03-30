<%@ Page Title="" Language="VB" MasterPageFile="~/FrontEnd.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="theMainContent" Runat="Server">
    <div id="mainContent">
        <h1>Task 8 - Database testing</h1>
        <p>Records of products with the product name and price for each product.</p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                    <asp:BoundField DataField="Price" HeaderText="Price $" SortExpression="Price" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TestingDatabase1ConnectionString1 %>" DeleteCommand="DELETE FROM [Products] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Products] ([Id], [Title], [Author], [Price]) VALUES (@Id, @Title, @Author, @Price)" ProviderName="<%$ ConnectionStrings:TestingDatabase1ConnectionString1.ProviderName %>" SelectCommand="SELECT [Id], [Title], [Author], [Price] FROM [Products]" UpdateCommand="UPDATE [Products] SET [Title] = @Title, [Author] = @Author, [Price] = @Price WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="Author" Type="String" />
                    <asp:Parameter Name="Price" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="Author" Type="String" />
                    <asp:Parameter Name="Price" Type="Int32" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
    </div>
    <footer></footer>
</asp:Content>

