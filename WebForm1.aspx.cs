using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BAL;
using DAL;

namespace FindProductsDemo
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btn_find_Click(object sender, EventArgs e)
        {
            string id = TextBox1.Text;
            Products pb = new Products();
            ProductsDAL pd = new ProductsDAL(); 
            pb = pd.FindProduct(Convert.ToInt32(id));
            TextBox2.Text = pb.ProductName;
            TextBox3.Text = pb.QtyPerUnit;
            TextBox4.Text = pb.SupplierID.ToString();
            TextBox5.Text = pb.CategoryID.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            List<Products> fl = new List<Products>();
            Products pb = new Products();
            ProductsDAL pd = new ProductsDAL();
            fl = pd.GetProducts();
            GridView1.DataSource = fl;
            GridView1.DataBind();
        }
    }
}