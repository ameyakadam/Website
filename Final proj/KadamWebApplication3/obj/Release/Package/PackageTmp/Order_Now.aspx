
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order_Now.aspx.cs" Inherits="KadamWebApplication3.Order_Now" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Caleen-Gaming-Store-Order-Now</title>
     <meta name="description" content="We are worlds leading company in manufacturing of gaming consoles based in USA. Our innovative consoles such as the latest Caleen MX 800 and accessories has made us one of the most desirable products in the gaming world. It's a pride for our customers to own one of our latest products. We are committed to implementing new technologies to enhance the gaming experience. We always work hard for customer satisfaction which is one of the reasons for our popularity. We also develop world class games which are only compatible with our consoles and its associated accessories."/>
<meta name="keywords" content="Gaming, Console, Accessories, VR, Keypad, Services, Support, Greviences, Caleen, Latest, USA"/>
    <link href="Design.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <img src="Images/brand.gif"  height="80" class="headerimage"/>
            <h1>Caleen Gaming Store</h1>
            <h3>Heart Of Perfect Gaming</h3>
        </header>
        <nav>
           <a href="Default.aspx">Home</a>
            <a href="Game%20store.aspx">Game store</a>
            <a href="Support.aspx">Support</a>
            <a href="Order_Now.aspx">Order Now</a>
        </nav>
        <section id="ordernow">
        <table id="ordernowtable">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Please select a product"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Product" DataValueField="Product" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CaleenConnectionstring %>" SelectCommand="SELECT [Product], [Price], [Discription], [Image] FROM [Table] ORDER BY [Product]"></asp:SqlDataSource>
                    </td>
            </tr>
            <tr>
                <td>
                   <h3> 
                       <asp:Image ID="Image1" runat="server" Height="100" Width="100" />
                    </h3>
                </td>
            </tr>
            <tr>
                <td>
                     <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                     <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Enter Quantity"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Please enter range between 1 to 10" Type="Integer" MaximumValue="10" MinimumValue="1" ControlToValidate="TextBox1"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Add to cart" OnClick="Button1_Click" />
                    </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Go to cart" OnClick="Button2_Click" />
                </td>
            </tr>
        </table>
        </section>
        <footer id="ordernowfooter">
            contact us at (967) 675-4532
        </footer>
    </form>
</body>
</html>
