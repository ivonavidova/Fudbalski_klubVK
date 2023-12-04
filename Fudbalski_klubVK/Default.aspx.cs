using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fudbalski_klubVK
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                try
                {
                    string queryRequest = "INSERT INTO Igrac VALUES ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "'," + TextBox4.Text + ",'" + TextBox5.Text + "','" + TextBox6.Text + "')";
                    SqlConnection conn = new SqlConnection(Konekcija.conn);
                    conn.Open();
                    SqlCommand cmd = new SqlCommand(queryRequest, conn);
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
                catch(Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
            }
            
        }
    }
}