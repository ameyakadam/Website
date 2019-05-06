using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace KadamWebApplication3
{
    public partial class Order_Now : System.Web.UI.Page

    {
        private Product selectedProduct;

        private Product GetSelectedProduct()
        {

            DataView productsTable = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            productsTable.RowFilter = string.Format("Product = '{0}'", DropDownList1.SelectedValue);

            DataRowView row = productsTable[0];
            Product p = new Product();
            p.Name = row["Product"].ToString();
            p.ShortDescription = row["Discription"].ToString();
            p.UnitPrice = (int)row["Price"];
            p.ImageFile = row["Image"].ToString();
            return p;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cart.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {

                CartItemList cart = CartItemList.GetCart();


                CartItem cartItem = cart[selectedProduct.Name]; 






                if (cartItem == null)
                {
                    cart.AddItem(selectedProduct,
                                 Convert.ToInt32(TextBox1.Text));
                }

                else
                {
                    cartItem.AddQuantity(Convert.ToInt32(TextBox1.Text));
                }
                


            }

        }
            public void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
            {
                if (!IsPostBack) DropDownList1.DataBind();
                selectedProduct = this.GetSelectedProduct();

                Label3.Text = selectedProduct.ShortDescription;

                Label4.Text = selectedProduct.UnitPrice.ToString("c") + " each";
                Image1.ImageUrl = selectedProduct.ImageFile;
            }

        protected void Page_Load(object sender, EventArgs e)
        {
            selectedProduct = this.GetSelectedProduct();    
            selectedProduct = this.GetSelectedProduct();

            Label3.Text = selectedProduct.ShortDescription;

            Label4.Text = selectedProduct.UnitPrice.ToString("c") + " each";
            Image1.ImageUrl = selectedProduct.ImageFile;
        }
    }
}