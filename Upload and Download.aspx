<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Upload and Download.aspx.cs" Inherits="CloudWebStorage.Upload_and_Download" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Upload and Download</title>

     <meta charset="utf-8" />
    <meta name="viewport" content ="width=device-width", initialscale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE-edge" />
    <link href="css/Custome.css" rel="stylesheet" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        
             
              <div class="navbar navbar-default navbar-fixed-top" role ="navigation">
            <div class ="container">
                <div class="navbar-header">
                  <button type="button" class ="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class ="sr-only">Toggle Navigation</span>
                    <span class ="icon-bar"></span>
                    <span class ="icon-bar"></span>
                    <span class ="icon-bar"></span>
                      </button>
                    <a class="navbar-brand" href ="Default.aspx"><span><img src="images/logo.png" alt="Cloud Web Storage" height="30" /></span>Cloud Web Storage</a>
                </div>

                <div class ="navbar-collapse collapse">
                    <ul class ="nav navbar-nav navbar-right">
                        <li ><a href ="Default.aspx">Home</a></li>
                         <li class="active"> <a href ="Upload and Download.aspx">Upload and Download</a> </li>
                        
                        <li> <a href ="SignIn.aspx">Sign In</a> </li>
                        <li> <a href ="SignUp.aspx">Sign Up</a> </li>
                         <li>
                            
                             <asp:Button ID="btnlogout2" CssClass ="btn btn-default navabar-btn" runat="server" Text="Sign out" OnClick="btnlogout2_Click" />

                        </li>
                    </ul>
                   
                   
                </div>
                </div>
        </div>
        <br />
        <br />
        <br />
        <div class ="center-page">
            <div style="font-family:Arial">
                <br />
                <br />
                <br />
                <br />
            <asp:FileUpload ID="FileUpload1" runat="server" />
                <br />
                <br />
            <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
                <Columns>
                    <asp:TemplateField HeaderText="File">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("File") %>' Text='<%# Eval("File") %>'></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Size" HeaderText="Size In Bytes" />
                    <asp:BoundField DataField="Type" HeaderText="File Type" />
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
        </div>
            
        </div>
    </form>
</body>
</html>
