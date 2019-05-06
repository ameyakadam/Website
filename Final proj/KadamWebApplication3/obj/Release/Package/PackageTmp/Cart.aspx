<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="KadamWebApplication3.Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Design.css" rel="stylesheet" />
    <title>Caleen-Gaming-Store-Cart</title>
    <meta name="description" content="We are worlds leading company in manufacturing of gaming consoles based in USA. Our innovative consoles such as the latest Caleen MX 800 and accessories has made us one of the most desirable products in the gaming world. It's a pride for our customers to own one of our latest products. We are committed to implementing new technologies to enhance the gaming experience. We always work hard for customer satisfaction which is one of the reasons for our popularity. We also develop world class games which are only compatible with our consoles and its associated accessories."/>
<meta name="keywords" content="Gaming, Console, Accessories, VR, Keypad, Services, Support, Greviences, Caleen, Latest, USA"/>
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
          
        <div>
            <div class="row"><%-- row 1 --%>
                <div class="col-sm-12"><h1>Your shopping cart</h1></div>
                <div class="col-sm-6"><%-- cart display column --%>
                    <div class="form-group">
                        <div class="col-sm-12"><asp:ListBox ID="lstCart" runat="server" CssClass="form-control"></asp:ListBox></div>
                    </div>
                    <div class="form-group"><%-- message label --%>
                        <asp:Label ID="lblMessage" runat="server" EnableViewState="False"
                            CssClass="text-info col-sm-12"></asp:Label>
                    </div>
                </div>
                <div class="col-sm-12"><%-- cart edit buttons column --%>
                    <div class="form-group">
                        
                    </div>
                </div>
            </div><%-- end of row 1 --%>

            <div class="row"><%-- row 2 --%>
                <div class="col-sm-12">
                    
                    <div class="form-group"><%-- buttons --%>
                        <div class="col-sm-12">
                            <asp:Button ID="btnRemove" runat="server" 
                            Text="Remove Item" onclick="btnRemove_Click"  />
                        <asp:Button ID="btnEmpty" runat="server" 
                            Text="Empty Cart" onclick="btnEmpty_Click"  />
                            <asp:Button ID="btnContinue" runat="server"
                                PostBackUrl="~/Order_Now.aspx" Text="Continue Shopping" />
                            <asp:Button ID="btnCheckOut" runat="server" Text="Check Out"  
                                onclick="btnCheckOut_Click"  />
                        </div>
                    </div>
                </div>
            </div><%-- end of row 2 --%>

        </div>
               
      </section>
    </form>
               
          <footer id="cartfooter">
            contact us at (967) 675-4532
        </footer>
    </body>
</html>
