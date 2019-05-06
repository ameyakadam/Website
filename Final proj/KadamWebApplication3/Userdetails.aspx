<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Userdetails.aspx.cs" Inherits="KadamWebApplication3.Sign_up" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Caleen-Gaming-Console-User-Details</title>
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
        <section id="signup">
       <table id="signuptable">
           <tr>
               <td colspan="2" style ="text-align: center;">
               Sign up
                   </td>
           </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
           <tr>
               <td>
                   <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
               </td>
               <td>
                   <textarea id="TextArea1" cols="20" rows="2"></textarea>
               </td>
           </tr>
           <tr>
               <td>
                   <asp:Label ID="Label4" runat="server" Text="Contact"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td colspan ="2"  style ="text-align: center">
                   <asp:Button ID="Button1" runat="server" Text="Sign up" />
           </td>
                   </tr>
        </table>
            </section>
         <footer id="signupfooter">
            contact us at (967) 675-4532
        </footer>
    </form>
</body>
</html>
