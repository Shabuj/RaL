<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FileUpload.aspx.cs" Inherits="LoginAndRegistration.FileUpload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 35%;
            border-left-style: solid;
            border-left-width: 1px;
            border-right: 1px solid #C0C0C0;
            border-top-style: solid;
            border-top-width: 1px;
            border-bottom: 1px solid #C0C0C0;
            margin-right: 0px;
            background-color:coral;
        }
        .auto-style2 {
            width: 595px;
        }
        .auto-style3 {
            width: 1002px;
        }
        .auto-style4 {
            width: 1002px;
            height: 23px;
        }
        .auto-style5 {
            width: 595px;
            height: 23px;
        }
        .auto-style7 {
            width: 1002px;
            height: 30px;
        }
        .auto-style8 {
            width: 595px;
            height: 30px;
        }
        .auto-style9 {
            margin-left: 0px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server" enctype="multipart/form-data">
        <div>
              

            <table class="auto-style1" border="1"  >
                <tr>
                    <td class="auto-style3">Name</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style9" Width="232px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Image</td>
                    <td class="auto-style2">
                        <asp:FileUpload ID="FileUpload2" runat="server" Width="239px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">File</td>
                    <td class="auto-style5">
                        <asp:FileUpload ID="FileUpload1" runat="server" Width="241px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Gender</td>
                    <td class="auto-style2">
                        <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" />
                        <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Birth Date</td>
                    <td class="auto-style2">
                       <input type="date" id="Date" runat="server"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Active</td>
                    <td class="auto-style2">
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" style="background-color: #FFFFFF; font-family: 'Agency FB'">
                        Action</td>
                    <td class="auto-style8" style="background-color: #FFFFFF; font-family: 'Agency FB'">
                        <asp:Button ID="Button1" runat="server" Text="Save" BackColor="#009900" Width="245px" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="id" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" OnItemInserted="DetailsView1_ItemInserted" Width="337px">
                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
                    <asp:BoundField DataField="Files" HeaderText="Files" SortExpression="Files" />
                    <asp:CheckBoxField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="BIrthDate" HeaderText="BIrthDate" SortExpression="BIrthDate" />
                    <asp:BoundField DataField="CreateDate" HeaderText="CreateDate" SortExpression="CreateDate" />
                    <asp:BoundField DataField="Active" HeaderText="Active" SortExpression="Active" />
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFCC66" ForeColor="#8C4510" />
            </asp:DetailsView>
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
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ShowImage.aspx">Show Details</asp:HyperLink>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#009900"></asp:Label>
            <br />
            <br />
            <br />
              

        </div>
    </form>
</body>
</html>
