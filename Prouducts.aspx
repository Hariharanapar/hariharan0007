<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prouducts.aspx.cs" Inherits="Billing_software.Prouducts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .container{
            height:100vh;
            /*display:inline-flexbox;
            justify-content:center;
            align-items:center;
            flex-direction:column;*/
            background-image:url('https://images.pexels.com/photos/3728311/pexels-photo-3728311.jpeg') ;
            background-attachment:fixed;
            background-position:bottom;
            /*background-size:5000px;*/
            /*background-position:center;*/
            background-repeat:no-repeat;
            }
        .auto-style1 {
            width: 100%;
            font-family:Verdana;
            color:black;
            font-size:18px;
            font-style:normal;
            font-weight:bold;
            margin-left:250px;
            margin-right: 0px;
        }
        .auto-style2 {
            width: 51px;
        }
        .auto-style3 {
            width: 188px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            height: 23px;
            width: 118px;
        }
        .auto-style6 {
            width: 118px;
        }
        .auto-style7 {
            height: 23px;
            width: 162px;
        }
        .auto-style8 {
            width: 162px;
        }
        h1
        {
            text-align:center;
        }
        .newStyle1 {
            font-size: large;
            font-style: normal;
        }
        .grid{
            margin-left:200px;
        }
        .buttonclass{
            cursor:pointer;
        }
        .auto-style9 {
            width: 51px;
            height: 26px;
        }
        .auto-style10 {
            width: 188px;
            height: 26px;
        }
        </style>   
    
    
</head>
<body style="background-color:#a0b282">
    <div class ="container">
    <form id="form1" runat="server">
    <div>
        <div style="height: 35px; margin-bottom: 11px;"><h1>Product</h1></div>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Prouduct Code:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Prouduct Name:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Qty:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Price:</td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Total:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" BackColor="#00CC00" Text="Submit" OnClick="Button1_Click" CssClass ="buttonclass"/>
&nbsp;
                    <asp:Button ID="Button2" runat="server" BackColor="Red" Text="Cancel" />
                </td> 
                </tr>
        </table>     
                <div class="grid">
        <asp:GridView ID="GridView2" runat="server" Width="719px" BackColor="White" BorderColor="Black" BorderWidth="5px" CellPadding="5" CellSpacing="4">
            <EditRowStyle BorderWidth="8px" ForeColor="Black" />
        </asp:GridView>
        </div>
        
                    
          <h1>Coustmer Details</h1>
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">Coustmer Name:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style6">Phone:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">Email:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Button ID="Button3" runat="server" BackColor="#33CC33" Text="Submit" OnClick="Button3_Click" />
&nbsp;
                    <asp:Button ID="Button4" runat="server" BackColor="Red" Text="Cancel" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div class="grid">
        <asp:GridView ID="GridView1" runat="server" Width="719px" BackColor="White" BorderColor="Black" BorderWidth="5px" CellPadding="5" CellSpacing="4">
            <EditRowStyle BorderWidth="8px" ForeColor="Black" />
        </asp:GridView>
        </div>
            
    </form>
        </div>
</body>
</html>
