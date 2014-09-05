using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kometaauto
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (User.Identity.IsAuthenticated)
                {
                    if (User.Identity.Name == "Цех")
                    {
                        GridView1.Columns[3].Visible = false;
                    }
                    string t = User.Identity.Name;
                    GridView1.Visible = true;
                    int[] idz = new int[GridView1.Rows.Count];
                    string[] sos = new string[GridView1.Rows.Count];
                    for (int i = 0; i < GridView1.Rows.Count; i++)
                    {
                        idz[i] = Int32.Parse(GridView1.Rows[i].Cells[1].Text);
                        sos[i] = GridView1.Rows[i].Cells[2].Text;
                    }
                    GridView1.Columns[1].Visible = false;
                    GridView1.Columns[2].Visible = false;
                    GridView1.DataBind();
                    for (int i = 0; i < GridView1.Rows.Count; i++)
                    {

                        using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["autorepConnectionString"].ConnectionString))
                        {
                            using (SqlCommand cmd = new SqlCommand())
                            {
                                cmd.Connection = conn;
                                cmd.CommandText = "SELECT * FROM Zamechht where id=" + idz[i] + " and Sost=0";
                                conn.Open();
                                using (SqlDataReader sdr = cmd.ExecuteReader())
                                {
                                    int f1 = 0;
                                    int f2 = 0;
                                    while (sdr.Read())
                                    {
                                        if (sdr["Tipe"].ToString() == "Для приемщика") f1 = 1;
                                        if (sdr["Tipe"].ToString() == "Для запчастей") f2 = 1;
                                    }
                                    if (f1 == 1 && f2 == 1)
                                    {
                                        for (int j = 0; j < GridView1.Rows[i].Cells.Count; j++)
                                        {
                                            if (j < GridView1.Rows[i].Cells.Count / 2) GridView1.Rows[i].Cells[j].BackColor = System.Drawing.Color.Red;
                                            else GridView1.Rows[i].Cells[j].BackColor = System.Drawing.Color.Pink;
                                        }
                                    }
                                    else
                                    {
                                        if (f1 == 1) GridView1.Rows[i].BackColor = System.Drawing.Color.Red;
                                        else if (f2 == 1) GridView1.Rows[i].BackColor = System.Drawing.Color.Pink;
                                    }

                                }

                                conn.Close();
                            }
                        }
                        if (sos[i] == "Выполнено")
                        {
                            for (int j = 0; j < GridView1.Rows[i].Cells.Count; j++) GridView1.Rows[i].Cells[j].BackColor = System.Drawing.Color.Green;
                        }
                    }

                }

            }
        }
    }
}