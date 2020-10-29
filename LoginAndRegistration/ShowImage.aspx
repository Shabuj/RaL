<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowImage.aspx.cs" Inherits="LoginAndRegistration.ShowImage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 18px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style1" DataKeyNames="id" DataSourceID="SqlDataSource1" GridLines="Vertical" Height="466px" HorizontalAlign="Center" OnRowDeleted="GridView1_RowDeleted" OnRowUpdated="GridView1_RowUpdated" Width="1191px">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="Image"    HeaderText="Image"    >
                        <ControlStyle Height="100px" Width="100px" />
                        <FooterStyle Height="100px" />
                        <HeaderStyle Height="100px" Width="100px" />
                        <ItemStyle HorizontalAlign="Center" height="100px" Width="100px" VerticalAlign="middle" />
                     
                    </asp:ImageField>
                    <asp:ImageField DataImageUrlField="Files" HeaderText="Files">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:ImageField>
                    <asp:CheckBoxField DataField="Gender" HeaderText="Gender" SortExpression="Gender">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:CheckBoxField>
                    <asp:BoundField DataField="BIrthDate" HeaderText="BIrthDate" SortExpression="BIrthDate">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CreateDate" HeaderText="CreateDate" SortExpression="CreateDate">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Active" HeaderText="Active" SortExpression="Active">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:CommandField HeaderText="Action" ShowDeleteButton="True" ShowEditButton="True">
                    <ControlStyle BackColor="#33CC33" ForeColor="White" />
                    <FooterStyle BackColor="#009933" BorderStyle="Solid" ForeColor="White" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:CommandField>
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <br />
            <asp:Label ID="msg" runat="server"></asp:Label>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CrewInformationConnectionString %>" DeleteCommand="DELETE FROM [FileUploads] WHERE [id] = @id" InsertCommand="INSERT INTO [FileUploads] ([Name], [Image], [Files], [Gender], [BIrthDate], [CreateDate], [Active]) VALUES (@Name, @Image, @Files, @Gender, @BIrthDate, @CreateDate, @Active)" SelectCommand="SELECT * FROM [FileUploads]" UpdateCommand="UPDATE [FileUploads] SET [Name] = @Name, [Image] = @Image, [Files] = @Files, [Gender] = @Gender, [BIrthDate] = @BIrthDate, [CreateDate] = @CreateDate, [Active] = @Active WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Image" Type="String" />
                    <asp:Parameter Name="Files" Type="String" />
                    <asp:Parameter Name="Gender" Type="Boolean" />
                    <asp:Parameter DbType="Date" Name="BIrthDate" />
                    <asp:Parameter DbType="Date" Name="CreateDate" />
                    <asp:Parameter Name="Active" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Image" Type="String" />
                    <asp:Parameter Name="Files" Type="String" />
                    <asp:Parameter Name="Gender" Type="Boolean" />
                    <asp:Parameter DbType="Date" Name="BIrthDate" />
                    <asp:Parameter DbType="Date" Name="CreateDate" />
                    <asp:Parameter Name="Active" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </div>
    </form>
</body>
</html>
