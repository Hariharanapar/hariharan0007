using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Billing_software
{
    public partial class Prouducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                loadrecord();
            }
            

        }
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-9P8GSKU;Initial Catalog=Billing_software;Integrated Security=True");
        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("insert into customer1 values('" + TextBox5.Text + "','" +int.Parse(TextBox6.Text)+ "','" + TextBox7.Text + "')", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Coustmer Deatails added');", true);
            loadrecord();
        }

            void loadrecord()
            {
                SqlCommand comm = new SqlCommand("select * from customer1", con);
                SqlDataAdapter adr = new SqlDataAdapter(comm);
                DataTable dt = new DataTable();
                adr.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();

            }

            protected void Button1_Click(object sender, EventArgs e)
            {
                con.Open();
                int a =int.Parse (TextBox2.Text) * int.Parse (TextBox3.Text);
                TextBox4.Text = a.ToString();
                SqlCommand comm = new SqlCommand("insert into prouducts values('"+ int.Parse(TextBox1.Text) + "','" + TextBox8.Text + "','" + int.Parse(TextBox2.Text) + "','" + int.Parse(TextBox3.Text) + "','" + int.Parse(TextBox4.Text) + "')", con);
                comm.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Added');", true);
                loadrecord1();
            }
            void loadrecord1()
            {
                SqlCommand comm = new SqlCommand("select * from prouducts", con);
                SqlDataAdapter adr = new SqlDataAdapter(comm);
                DataTable dt = new DataTable();
                adr.Fill(dt);
                GridView2.DataSource = dt;
                GridView2.DataBind();

            }

           
            
            
    }


    }
