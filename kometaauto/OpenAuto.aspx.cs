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
    public partial class OpenAuto : System.Web.UI.Page
    {
        int idzayavlr = 0, idviprab = 0, idzapvl = 0, idzapm = 0, idkvip = 0, idzamecc=0, idsprab = 0, idspzap = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["autorepConnectionString"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = conn;
                    //
                    cmd.CommandText = "SELECT * FROM Settings where id=1";
                    conn.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        while (sdr.Read())
                        {
                            normhourss.Text = sdr["Value"].ToString();
                        }
                    }
                    conn.Close();
                }
            }
            for (int i = 0; i < addedRowsCount; i++) AddNewRow(i);
            for (int i = 0; i < addedRowsCount1; i++) AddNewRow1(i);
            if (!Page.IsPostBack)
            {
                part2.Visible = false;
                part3.Visible = false;
                part4.Visible = false;
            }
            if (!IsPostBack)
            {
                Session["returnedprd"] = true;
            }
            else
            {
                Session["returnedprd"] = false;
            }
            if (Request.Params["paramstoreq"] != null)
            {
                if (Request.Params.Count > 0 && (bool)Session["returnedprd"] == true)
                {
                    RegisterStartupScript("BackW", "<script language=\"javascript\"> setInterval(function () { window.location.href = \" / \" }, 100000);</script>");
                    string pararam = Request.Params["paramstoreq"];
                    using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["autorepConnectionString"].ConnectionString))
                    {
                        using (SqlCommand cmd = new SqlCommand())
                        {
                            cmd.Connection = conn;
                            cmd.CommandText = "SELECT * FROM zakazi where id=" + pararam;
                            conn.Open();
                            using (SqlDataReader sdr = cmd.ExecuteReader())
                            {
                                while (sdr.Read())
                                {
                                    Zakazchik.Text = sdr["Zakazchik"].ToString();
                                    Adress.Text = sdr["Adres"].ToString();
                                    Phone.Text = sdr["Tel"].ToString();
                                    Model.Text = sdr["Model"].ToString();
                                    Godv.Text = sdr["God"].ToString();
                                    Dvig.Text = sdr["Dvigat"].ToString();
                                    Probeg.Text = sdr["Probeg"].ToString();
                                    Nomernz.Text = sdr["Numznak"].ToString();
                                    KuzNamb.Text = sdr["NumKuz"].ToString();

                                    ZakazchikA.Text = Zakazchik.Text;
                                    AdressA.Text = Adress.Text;
                                    PhoneA.Text = Phone.Text;
                                    ModelA.Text = Model.Text;
                                    GodvA.Text = Godv.Text;
                                    DvigA.Text = Dvig.Text;
                                    ProbegA.Text = Probeg.Text;
                                    NomernzA.Text = Nomernz.Text;
                                    KuzNambA.Text = KuzNamb.Text;

                                    ZakazchikB.Text = Zakazchik.Text;
                                    AdressB.Text = Adress.Text;
                                    
                                    ModelB.Text = Model.Text;
                                    GodvB.Text = Godv.Text;
                                    DvigB.Text = Dvig.Text;
                                    ProbegB.Text = Probeg.Text;
                                    NomernzB.Text = Nomernz.Text;
                                    KuzNambB.Text = KuzNamb.Text;

                                    markaval.Text = Model.Text;
                                    gossnumval.Text = Nomernz.Text;
                                    Volumevall.Text = Dvig.Text;

                                    srok.Text = sdr["SrokIsp"].ToString();
                                    date.Text = sdr["DataDob"].ToString();
                                    username.Text = sdr["Dobavil"].ToString();
                                    dateotd.Text = sdr["Datapred"].ToString();
                                    zamecc.Text = sdr["Zamech"].ToString();
                                    idzayavlr = Int32.Parse(sdr["Idzayavlr"].ToString());
                                    idviprab = Int32.Parse(sdr["Idrabot"].ToString());
                                    idzapvl = Int32.Parse(sdr["Idzapvl"].ToString());
                                    idzapm = Int32.Parse(sdr["Idzapm"].ToString());
                                    idkvip = Int32.Parse(sdr["idrabkvip"].ToString());
                                    idzamecc = Int32.Parse(sdr["idzamech"].ToString());
                                    idsprab = Int32.Parse(sdr["idspr"].ToString());
                                    idspzap = Int32.Parse(sdr["idspz"].ToString());
                                }
                            }
                            conn.Close();
                            int t = 0;
                            cmd.Connection = conn;
                            cmd.CommandText = "SELECT * FROM zayavlr where id=" + idzayavlr;
                            conn.Open();
                            using (SqlDataReader sdr = cmd.ExecuteReader())
                            {
                                while (sdr.Read())
                                {
                                    ((Label)part1.FindControl("Zrab" + t.ToString())).Text = sdr["Name"].ToString();
                                    t++;
                                }
                            }
                            conn.Close();

                            t = 0;
                            cmd.Connection = conn;
                            cmd.CommandText = "SELECT * FROM rabkvip where id=" + idkvip;
                            conn.Open();
                            using (SqlDataReader sdr = cmd.ExecuteReader())
                            {
                                while (sdr.Read())
                                {
                                    ((Label)part1.FindControl("Vrab" + t.ToString())).Text = sdr["Name"].ToString();
                                    t++;
                                }
                            }
                            conn.Close();

                            t = 1;
                            cmd.Connection = conn;
                            cmd.CommandText = "SELECT * FROM zapvl where id=" + idzapvl;
                            conn.Open();
                            using (SqlDataReader sdr = cmd.ExecuteReader())
                            {
                                while (sdr.Read())
                                {
                                    string s = sdr["Zapvl"].ToString();
                                    ((Label)part2.FindControl("zch" + t.ToString())).Text = s;
                                    ((Label)part2.FindControl("zapvlsp3" + t.ToString())).Text = s;
                                    t++;
                                }
                            }
                            conn.Close();

                            t = 1;
                            cmd.Connection = conn;
                            cmd.CommandText = "SELECT * FROM zapauto where id=" + idzapm;
                            conn.Open();
                            float summz = 0;
                            using (SqlDataReader sdr = cmd.ExecuteReader())
                            {
                                while (sdr.Read())
                                {
                                    ((Label)part2.FindControl("zchnew" + t.ToString())).Text = sdr["Zapauto"].ToString();
                                    ((Label)part2.FindControl("zchnew" + t.ToString()+ "date")).Text = sdr["DataDob"].ToString();
                                    string temp;
                                    temp = sdr["Cena"].ToString();
                                    ((Label)part2.FindControl("zchnewval" + t.ToString())).Text = temp;
                                    summz += float.Parse(temp);
                                    t++;
                                }
                            }
                            conn.Close();

                            t = 1;
                            cmd.Connection = conn;
                            cmd.CommandText = "SELECT * FROM SPrabot where id=" + idsprab;
                            conn.Open();
                            using (SqlDataReader sdr = cmd.ExecuteReader())
                            {
                                while (sdr.Read())
                                {
                                    ((Label)part4.FindControl("SPrabName" + t.ToString())).Text = sdr["Name"].ToString();
                                    ((Label)part4.FindControl("SPrabNorm" + t.ToString())).Text = sdr["Norm"].ToString();
                                    ((Label)part4.FindControl("SPrabPrice" + t.ToString())).Text = sdr["Price"].ToString();
                                    t++;
                                }
                            }
                            conn.Close();
                            SPrabPrice_TextChanged(this, e);

                            t = 1;
                            cmd.Connection = conn;
                            cmd.CommandText = "SELECT * FROM SPzap where id=" + idspzap;
                            conn.Open();
                            using (SqlDataReader sdr = cmd.ExecuteReader())
                            {
                                while (sdr.Read())
                                {
                                    ((Label)part4.FindControl("SPzapName" + t.ToString())).Text = sdr["Name"].ToString();
                                    ((Label)part4.FindControl("SPzapED" + t.ToString())).Text = sdr["ed"].ToString();
                                    ((Label)part4.FindControl("SPzapCount" + t.ToString())).Text = sdr["Count"].ToString();
                                    ((Label)part4.FindControl("SPzapSost" + t.ToString())).Text = sdr["Sost"].ToString();
                                    t++;
                                }
                            }
                            conn.Close();

                            t = 1;
                            cmd.Connection = conn;
                            //
                            cmd.CommandText = "SELECT * FROM Zamechht where id=" + idzamecc;
                            conn.Open();
                            using (SqlDataReader sdr = cmd.ExecuteReader())
                            {
                                while (sdr.Read())
                                {
                                    int cool = Int16.Parse(sdr["Sost"].ToString());
                                    AddNewRow1(addedRowsCount1);
                                    if (cool == 1)
                                    {
                                        ((CheckBox)part2.FindControl("ZamecSot" + t.ToString())).Checked = true;
                                        ((TableRow)Zamechaniat.FindControl("NewZamRowID_" + t.ToString())).BackColor = System.Drawing.Color.Green;
                                    }
                                    
                                    ((Label)part2.FindControl("Zamechanie" + t.ToString())).Text = sdr["Zamech"].ToString();
                                    ((Label)part2.FindControl("Tipe" + t.ToString())).Text = sdr["Tipe"].ToString();
                                    ((Label)part2.FindControl("DataDob" + t.ToString())).Text = sdr["DataDob"].ToString();
                                    
                                    addedRowsCount1++;
                                    t++;
                                }
                            }
                            conn.Close();

                            cmd.Connection = conn;
                            //
                            cmd.CommandText = "SELECT * FROM Settings where id=1";
                            conn.Open();
                            using (SqlDataReader sdr = cmd.ExecuteReader())
                            {
                                while (sdr.Read())
                                {
                                    normhourss.Text = sdr["Value"].ToString();
                                }
                            }
                            conn.Close();
                            t = 1;
                            cmd.Connection = conn;
                            //
                            cmd.CommandText = "SELECT * FROM raboti where id=" + idviprab;
                            conn.Open();
                            float summr = 0;
                            using (SqlDataReader sdr = cmd.ExecuteReader())
                            {
                                while (sdr.Read())
                                {
                                   using (SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["autorepConnectionString"].ConnectionString))
                                    {
                                        using (SqlCommand cmd1 = new SqlCommand())
                                        {
                                            cmd1.Connection = conn1;
                                            cmd1.CommandText = "SELECT Sotrudnik from [autorep].[dbo].[sotrudniki] where id=" + sdr["Vipolnil"].ToString();
                                            conn1.Open();
                                            using (SqlDataReader sdr1 = cmd1.ExecuteReader())
                                            {
                                                while (sdr1.Read())
                                                {
                                                    string vvv =  sdr1["Sotrudnik"].ToString();
                                                    ((Label)part2.FindControl("isp" + t.ToString())).Text = vvv;
                                                }
                                            }
                                            conn1.Close();
                                        }
                                    }
                                    ((Label)part2.FindControl("rab" + t.ToString())).Text = sdr["Name"].ToString();
                                    string temp = "";
                                    temp = sdr["Time"].ToString();
                                    summr += float.Parse(temp);
                                    for (int l = 0; l < temp.Length - 1; l++)
                                        ((Label)part2.FindControl("rabval" + t.ToString())).Text += temp[l];
                                    ((Label)part2.FindControl("rabval1" + t.ToString())).Text += temp[temp.Length - 1];
                                    AddNewRow(addedRowsCount);
                                    addedRowsCount++;
                                    t++;

                                }
                            }
                            conn.Close();
                            summnorm.Text += " " + summr ;
                            summzap.Text += " " + summz;
                        }

                    }
                }
            }
            //
            if(!String.IsNullOrEmpty(SPrabPriceItog.Text))
            {
                float it = float.Parse(SPrabPriceItog.Text);
                string sss = Converter.RuDateAndMoneyConverter.CurrencyToTxt(it, false);
                char ccc = char.ToUpper(sss[0]);
                sss = sss.Remove(0, 1).Insert(0,ccc.ToString());
                itogvtext.Text = sss;
            }
        }


        protected void Model_TextChanged(object sender, EventArgs e)
        {
            markaval.Text = Model.Text;
        }

        protected void Godv_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Dvig_TextChanged(object sender, EventArgs e)
        {
            Volumevall.Text = Dvig.Text;
        }

        protected void Nomernz_TextChanged(object sender, EventArgs e)
        {
            gossnumval.Text = Nomernz.Text;
        }


        
        int addedRowsCount
        {
            get { return ViewState["addedRowsCount"] == null ? 3 : (int)ViewState["addedRowsCount"]; }
            set { ViewState["addedRowsCount"] = value; }
        }

        int addedRowsCount1
        {
            get { return ViewState["addedRowsCount1"] == null ? 1 : (int)ViewState["addedRowsCount1"]; }
            set { ViewState["addedRowsCount1"] = value; }
        }
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            AddNewRow(addedRowsCount);
            addedRowsCount++;
            //WebFormHelper.DoPostBack(this);
        }

        void AddNewRow(int i)
        {
            var row = new TableRow();
            var Cell1 = new TableCell { ID = "Cell1" + i, BorderWidth = 1, BorderStyle = BorderStyle.Solid };
            var Cell2 = new TableCell { ID = "Cell2" + i, BorderWidth = 1, BorderStyle = BorderStyle.Solid };
            var Cell3 = new TableCell { ID = "Cell3" + i, BorderWidth = 1, BorderStyle = BorderStyle.Solid };
            var Cell4 = new TableCell { ID = "Cell4" + i, BorderWidth = 1, BorderStyle = BorderStyle.Solid };
            row.ID = "NewRabRowID_" + i.ToString();
            if (i == 0)
            {
                Cell1.Controls.Add(new Label { Text = "Исполнитель" });
                Cell2.Controls.Add(new Label { Text = "Работа" });
                Cell3.Controls.Add(new Label { Text = "Нормочасы" });
                Cell3.ColumnSpan = 2;
                row.Cells.Add(Cell1);
                row.Cells.Add(Cell2);
                row.Cells.Add(Cell3);
            }
            else
            {
                Cell1.Controls.Add(new Label { ID = "isp" + i, Width = 170, Height = 7 });
                if (i >= 2)
                {
                    var Text1 = new Label { ID = "rab" + i, Height = 7, Width = 350 };
                    Cell2.Controls.Add(Text1);
                }
                else Cell2.Controls.Add(new Label { ID = "rab" + i, Height = 7, Width = 350 });
                Cell3.Controls.Add(new Label { ID = "rabval" + i, Height = 7, Width = 35 });
                Cell4.Controls.Add(new Label { ID = "rabval1" + i, Height = 7, Width = 35 });
                row.Cells.Add(Cell1);
                row.Cells.Add(Cell2);
                row.Cells.Add(Cell3);
                row.Cells.Add(Cell4);
            }
            SPRabot.Rows.Add(row);
            part2.DataBind();
        }


        void finish(int i)
        {
            ((Label)part2.FindControl("rabvals" + i)).Text = "1";
        }

        void AddNewRow1(int i)
        {
            var row = new TableRow();
            var Cell1 = new TableCell { ID = "Cell1Zam" + i, BorderWidth = 1, BorderStyle = BorderStyle.Solid };
            var Cell2 = new TableCell { ID = "Cell2Zam" + i, BorderWidth = 1, BorderStyle = BorderStyle.Solid, Visible = false };
            var Cell3 = new TableCell { ID = "Cell3Zam" + i, BorderWidth = 1, BorderStyle = BorderStyle.Solid };
            var Cell4 = new TableCell { ID = "Cell4Zam" + i, BorderWidth = 1, BorderStyle = BorderStyle.Solid };
            row.ID = "NewZamRowID_" + i.ToString();
            if (i == 0)
            {
                Cell1.Controls.Add(new Label { Text = "Замечание" });
                Cell2.Controls.Add(new Label { Text = "Тип" });
                Cell3.Controls.Add(new Label { Text = "Дата" });
                Cell4.Controls.Add(new Label { Text = "Готово" });
            }
            else
            {
                Cell1.Controls.Add(new Label { ID = "Zamechanie" + i, Width = 350 });
                Label dr = new Label { ID = "Tipe" + i, Width = 170};
                Cell2.Controls.Add(dr);
                Cell3.Controls.Add(new Label { ID = "DataDob" + i});
                Cell4.Controls.Add(new CheckBox { ID = "ZamecSot" + i, Visible = false });
                Button b = new Button { ID = "ZamecB" + i, Text = "Готово", CommandArgument = i.ToString(), CommandName = "di" };
                b.Command += B_Click;
                Cell4.Controls.Add(b);
            }
            row.Cells.Add(Cell1);
            row.Cells.Add(Cell2);
            row.Cells.Add(Cell3);
            row.Cells.Add(Cell4);
            Zamechaniat.Rows.Add(row);
          //  part2.DataBind();
        }

//
        protected void B_Click(object sender, CommandEventArgs e)
        {
            ((TableRow)Zamechaniat.FindControl("NewZamRowID_" + e.CommandArgument)).BackColor = System.Drawing.Color.Green;
            ((CheckBox)Zamechaniat.FindControl("ZamecSot" + e.CommandArgument)).Checked = true;
            newautoSave_Click(this, e);
        }




        protected void newautoIns_Click(object sender, EventArgs e)
        {
            
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["autorepConnectionString"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    
                    
                    cmd.Connection = conn;
                    cmd.CommandText = "SELECT MAX(id) FROM zapauto";
                    conn.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        while (sdr.Read())
                        {
                            idzapm = Int32.Parse(sdr[0].ToString());
                        }
                    }

                    conn.Close();
                    for (int i = 1; i < 11; i++)
                    {
                        if (!String.IsNullOrEmpty(((Label)part2.FindControl("zchnew" + i.ToString())).Text))
                        {
                            cmd.CommandText = "INSERT INTO [autorep].[dbo].[zapauto] ([id],[Zapauto],[Cena],[DataDob]) VALUES (" + (idzapm + 1) + ",'" + ((Label)part2.FindControl("zchnew" + i.ToString())).Text + "'," + ((Label)part2.FindControl("zchnewval" + i.ToString())).Text.Replace(',', '.') + ",GETDATE())";
                            conn.Open();
                            cmd.ExecuteNonQuery();
                            conn.Close();
                        }
                    }

                    cmd.Connection = conn;
                    cmd.CommandText = "SELECT MAX(id) FROM zapvl";
                    conn.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        while (sdr.Read())
                        {
                            idzapvl = Int32.Parse(sdr[0].ToString());
                        }
                    }

                    conn.Close();
                    for (int i = 1; i < 9; i++)
                    {
                        if (!String.IsNullOrEmpty(((Label)part3.FindControl("zapvlsp3" + i.ToString())).Text))
                        {
                            cmd.CommandText = "INSERT INTO [autorep].[dbo].[zapvl] ([id],[Zapvl]) VALUES (" + (idzapvl + 1) + ",'" + ((Label)part3.FindControl("zapvlsp3" + i.ToString())).Text + "')";
                            conn.Open();
                            cmd.ExecuteNonQuery();
                            conn.Close();
                        }
                    }


                    cmd.Connection = conn;
                    cmd.CommandText = "SELECT MAX(id) FROM Zamechht";
                    conn.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        while (sdr.Read())
                        {
                            idzamecc = Int32.Parse(sdr[0].ToString());
                        }
                    }

                    conn.Close();
                    for (int i = 1; i < addedRowsCount1; i++)
                    {
                        if (!String.IsNullOrEmpty(((Label)part2.FindControl("Zamechanie" + i.ToString())).Text))
                        {
                            int sq=0;
                            if (((CheckBox)part2.FindControl("ZamecSot" + i.ToString())).Checked == true) sq = 1;
                            cmd.CommandText = "INSERT INTO Zamechht ([id],[Zamech],[Tipe],[Sost],[DataDob]) VALUES (" + (idzamecc + 1) + ",'" + ((Label)part2.FindControl("Zamechanie" + i.ToString())).Text + "','" + ((Label)part2.FindControl("Tipe" + i.ToString())).Text + "',"+sq+",GETDATE())";
                            conn.Open();
                            cmd.ExecuteNonQuery();
                            conn.Close();
                        }
                    }

                    cmd.Connection = conn;
                    cmd.CommandText = "SELECT MAX(id) FROM zayavlr";
                    conn.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        while (sdr.Read())
                        {
                           idzayavlr = Int32.Parse(sdr[0].ToString()); 
                        }
                    }
                    
                    conn.Close();
                    for (int i = 0; i < 10; i++)
                    {
                        if (!String.IsNullOrEmpty(((Label)part1.FindControl("Zrab" + i.ToString())).Text))
                        {
                            cmd.CommandText = "INSERT INTO [autorep].[dbo].[zayavlr] ([id],[Name]) VALUES (" + (idzayavlr + 1) + ",'" + ((Label)part1.FindControl("Zrab" + i.ToString())).Text + "')";
                            conn.Open();
                            cmd.ExecuteNonQuery();
                            conn.Close();
                        }
                    }


                    cmd.Connection = conn;
                    cmd.CommandText = "SELECT MAX(id) FROM rabkvip";
                    conn.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        while (sdr.Read())
                        {
                            idkvip = Int32.Parse(sdr[0].ToString());
                        }
                    }

                    conn.Close();
                    for (int i = 0; i < 10; i++)
                    {
                        if (!String.IsNullOrEmpty(((Label)part1.FindControl("Vrab" + i.ToString())).Text))
                        {
                            cmd.CommandText = "INSERT INTO [autorep].[dbo].[rabkvip] ([id],[Name]) VALUES (" + (idkvip + 1) + ",'" + ((Label)part1.FindControl("Vrab" + i.ToString())).Text + "')";
                            conn.Open();
                            cmd.ExecuteNonQuery();
                            conn.Close();
                        }
                    }



                    cmd.CommandText = "SELECT MAX(id) FROM raboti";
                    conn.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        while (sdr.Read())
                        {
                            idviprab = Int32.Parse(sdr[0].ToString());
                        }
                    }
                    conn.Close();
                    
                    for (int i = 1; i < addedRowsCount; i++)
                    {
                        if (!String.IsNullOrEmpty(((Label)part2.FindControl("rab" + i.ToString())).Text))
                        {
                            cmd.CommandText = "INSERT INTO [raboti] ([id],[Name],[Vipolnil],[Time],[DataDob],[Dobavil]) VALUES (" + (idviprab + 1) + ",'" + ((Label)part2.FindControl("rab" + i.ToString())).Text + "', convert(bigint, (SELECT id from sotrudniki where Sotrudnik='" + ((Label)part2.FindControl("isp" + i.ToString())).Text + "'))," + (((Label)part2.FindControl("rabval" + i.ToString())).Text.Replace(',', '.') + ((Label)part2.FindControl("rabval1" + i.ToString())).Text.Replace(',', '.')) + ", GETDATE(),'" + User.Identity.Name.ToString() + "')";
                            conn.Open();
                            cmd.ExecuteNonQuery();
                            conn.Close();
                        }
                    }

                    cmd.CommandText = "SELECT MAX(id) FROM SPrabot";
                    conn.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        while (sdr.Read())
                        {
                            idsprab = Int32.Parse(sdr[0].ToString());
                        }
                    }
                    conn.Close();

                    for (int i = 1; i < 7; i++)
                    {
                        if (!String.IsNullOrEmpty(((Label)part4.FindControl("SPrabName" + i.ToString())).Text))
                        {
                            cmd.CommandText = "INSERT INTO [autorep].[dbo].[SPrabot] ([id],[Name],[Norm],[Price]) VALUES (" + (idsprab + 1) + ",'" + ((Label)part4.FindControl("SPrabName" + i.ToString())).Text + "','" + ((Label)part4.FindControl("SPrabNorm" + i.ToString())).Text.Replace(',', '.') + "'," + ((Label)part4.FindControl("SPrabPrice" + i.ToString())).Text.Replace(',', '.') + ")";
                            conn.Open();
                            cmd.ExecuteNonQuery();
                            conn.Close();
                        }
                    }

                    cmd.CommandText = "SELECT MAX(id) FROM SPzap";
                    conn.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        while (sdr.Read())
                        {
                            idspzap = Int32.Parse(sdr[0].ToString());
                        }
                    }
                    conn.Close();

                    for (int i = 1; i < 7; i++)
                    {
                        if (!String.IsNullOrEmpty(((Label)part4.FindControl("SPzapName" + i.ToString())).Text))
                        {
                            cmd.CommandText = "INSERT INTO [autorep].[dbo].[SPzap] ([id],[Name],[ed],[Count],[Sost]) VALUES (" + (idspzap + 1) + ",'" + ((Label)part4.FindControl("SPzapName" + i.ToString())).Text + "','" + ((Label)part4.FindControl("SPzapED" + i.ToString())).Text + "'," + ((Label)part4.FindControl("SPzapCount" + i.ToString())).Text + ",'" + ((Label)part4.FindControl("SPzapSost" + i.ToString())).Text + "')";
                            conn.Open();
                            cmd.ExecuteNonQuery();
                            conn.Close();
                        }
                    }


                    cmd.CommandText = "INSERT INTO [zakazi] ([Idzayavlr],[Idrabot],[Idzapvl],[Idzapm],[Zakazchik],[Adres],[Tel],[Model],[God],[Dvigat],[Probeg],[Numznak],[NumKuz],[SrokIsp],[DataDob],[Dobavil],[Dataof],[Datapred],[Datapodp],[Zamech],[Sost],[idrabkvip],[idzamech],[idspr],[idspz]) VALUES (" + (idzayavlr + 1) + "," + (idviprab + 1) + "," + (idzapvl + 1) + "," + (idzapm + 1) + ",'" + Zakazchik.Text + "','" + Adress.Text + "','" + Phone.Text + "','" + Model.Text + "','" + Godv.Text + "','" + Dvig.Text + "','" + Probeg.Text + "','" + Nomernz.Text + "','" + KuzNamb.Text + "'," + srok.Text.Replace(',', '.') + ",GETDATE(),'" + username.Text + "',GETDATE(),GETDATE(),GETDATE(),'" + zamecc.Text + "','Добавленно'," + (idkvip + 1) + "," + (idzamecc + 1) + "," + (idsprab + 1) + "," + (idspzap + 1) + ")";
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();

                }
            }
            RegisterStartupScript("OpenNewWindow", "<script language=\"javascript\">window.open(\"/\", \"_self\");</script>"); 
        }


        protected void zakazstr_Click(object sender, EventArgs e)
        {
                part2.Visible = false;
                part1.Visible = true;
                part3.Visible = false;
                part4.Visible = false;
        }

        protected void raboti_Click(object sender, EventArgs e)
        {
            part2.Visible = true;
            part1.Visible = false;
            part3.Visible = false;
            part4.Visible = false;
        }

        protected void aktstr_Click(object sender, EventArgs e)
        {
            part2.Visible = false;
            part1.Visible = false;
            part3.Visible = true;
            part4.Visible = false;
        }

        protected void IPCh_CheckedChanged(object sender, EventArgs e)
        {
            if (IPCh.Checked)
            {
                Ispoln11.Text = "ИП Елисеев Александр Генадьевич, г.Гомель, ул. Лепешинского, 2Б, к. 1";
                Ispoln12.Text = "р/с 3013265130015 в Ф/ле ОАО \"БАПБ\" ГОУ, МФО 151501912";
                Ispoln21.Text = Ispoln11.Text;
                Ispoln22.Text = Ispoln12.Text;
                Ispoln31.Text = Ispoln11.Text;
                Ispoln32.Text = Ispoln12.Text;

            }
            else
            {
                Ispoln11.Text = "\"Комета авто\", г. Гомель, ул. Лепешинского, 2б к.1 ";
                Ispoln12.Text = "УНП 490859920 р/счет 3012267170016 в Ф/ле ОАО«БАПБ» ГОУ,  МФО 151501912";
                Ispoln21.Text = Ispoln11.Text;
                Ispoln22.Text = Ispoln12.Text;
                Ispoln31.Text = Ispoln11.Text;
                Ispoln32.Text = Ispoln12.Text;

            }

        }

        protected void aktvrab_Click(object sender, EventArgs e)
        {
            part2.Visible = false;
            part1.Visible = false;
            part3.Visible = false;
            part4.Visible = true;
        }


        protected void Zakazchik_TextChanged(object sender, EventArgs e)
        {
            clientn.Text = Zakazchik.Text;
        }

        protected void newautoSave_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["autorepConnectionString"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    if (Request.Params["paramstoreq"] != null)
                    {
                        cmd.Connection = conn;
                        cmd.CommandText = "SELECT * FROM zakazi where id=" + Request.Params["paramstoreq"];
                        conn.Open();
                        using (SqlDataReader sdr = cmd.ExecuteReader())
                        {
                            while (sdr.Read())
                            {
                                idzayavlr = Int32.Parse(sdr["Idzayavlr"].ToString());
                                idviprab = Int32.Parse(sdr["Idrabot"].ToString());
                                idzapvl = Int32.Parse(sdr["Idzapvl"].ToString());
                                idzapm = Int32.Parse(sdr["Idzapm"].ToString());
                                idkvip = Int32.Parse(sdr["idrabkvip"].ToString());
                                idzamecc = Int32.Parse(sdr["idzamech"].ToString());
                                idsprab = Int32.Parse(sdr["idspr"].ToString());
                                idspzap = Int32.Parse(sdr["idspz"].ToString());
                            }
                        }
                        conn.Close();


                        cmd.Connection = conn;
                        cmd.CommandText = "DELETE FROM [autorep].[dbo].[zapauto] WHERE [id]=" + idzapm;
                        conn.Open();
                        cmd.ExecuteNonQuery();
                        conn.Close();



                        cmd.CommandText = "DELETE FROM [autorep].[dbo].[zapvl] WHERE [id]=" + idzapvl;
                        conn.Open();
                        cmd.ExecuteNonQuery();
                        conn.Close();


                        cmd.CommandText = "DELETE FROM [autorep].[dbo].[zayavlr] WHERE [id]=" + idzayavlr;
                        conn.Open();
                        cmd.ExecuteNonQuery();
                        conn.Close();


                        cmd.CommandText = "DELETE FROM [autorep].[dbo].[rabkvip] WHERE [id]=" + idkvip;
                        conn.Open();
                        cmd.ExecuteNonQuery();
                        conn.Close();

                        cmd.CommandText = "DELETE FROM [raboti] WHERE [id]=" + idviprab;
                        conn.Open();
                        cmd.ExecuteNonQuery();
                        conn.Close();

                        cmd.CommandText = "DELETE FROM Zamechht WHERE [id]=" + idzamecc;
                        conn.Open();
                        cmd.ExecuteNonQuery();
                        conn.Close();

                        cmd.CommandText = "DELETE FROM SPrabot WHERE [id]=" + idsprab;
                        conn.Open();
                        cmd.ExecuteNonQuery();
                        conn.Close();


                        cmd.CommandText = "DELETE FROM SPzap WHERE [id]=" + idspzap;
                        conn.Open();
                        cmd.ExecuteNonQuery();
                        conn.Close();

                        /////////////////////////////////////


                        for (int i = 1; i < 11; i++)
                        {
                            if (!String.IsNullOrEmpty(((Label)part2.FindControl("zchnew" + i.ToString())).Text))
                            {

                                string date;

                                if (!String.IsNullOrEmpty(((Label)part2.FindControl("zchnew" + i.ToString() + "date")).Text))
                                {
                                    date = "'" + ((Label)part2.FindControl("zchnew" + i.ToString() + "date")).Text + "'";
                                }
                                else
                                {
                                    date = "GETDATE()";
                                }
                                cmd.CommandText = "INSERT INTO [autorep].[dbo].[zapauto] ([id],[Zapauto],[Cena],[DataDob]) VALUES (" + (idzapm) + ",'" + ((Label)part2.FindControl("zchnew" + i.ToString())).Text + "'," + ((Label)part2.FindControl("zchnewval" + i.ToString())).Text.Replace(',', '.') + ","+date+")";
                                conn.Open();
                                cmd.ExecuteNonQuery();
                                conn.Close();
                            }
                        }

                        conn.Close();
                        for (int i = 1; i < 9; i++)
                        {
                            if (!String.IsNullOrEmpty(((Label)part3.FindControl("zapvlsp3" + i.ToString())).Text))
                            {

                                cmd.CommandText = "INSERT INTO [autorep].[dbo].[zapvl] ([id],[Zapvl]) VALUES (" + (idzapvl) + ",'" + ((Label)part3.FindControl("zapvlsp3" + i.ToString())).Text + "')";
                                conn.Open();
                                cmd.ExecuteNonQuery();
                                conn.Close();
                            }
                        }

                        //

                        for (int i = 1; i < addedRowsCount1; i++)
                        {
                            if (!String.IsNullOrEmpty(((Label)part2.FindControl("Zamechanie" + i.ToString())).Text))
                            {
                                string date;
                                int sq = 0;
                                if (((CheckBox)part2.FindControl("ZamecSot" + i.ToString())).Checked == true) sq = 1;
                                if (!String.IsNullOrEmpty(((Label)part2.FindControl("DataDob" + i.ToString())).Text))
                                {
                                    date = "'" + ((Label)part2.FindControl("DataDob" + i.ToString())).Text + "'";
                                }
                                else
                                {
                                    date = "GETDATE()";
                                }
                                cmd.CommandText = "INSERT INTO Zamechht ([id],[Zamech],[Tipe],[Sost],[DataDob]) VALUES (" + (idzamecc) + ",'" + ((Label)part2.FindControl("Zamechanie" + i.ToString())).Text + "','" + ((Label)part2.FindControl("Tipe" + i.ToString())).Text + "'," + sq + ", " + date + ")";
                                conn.Open();
                                cmd.ExecuteNonQuery();
                                conn.Close();
                            }
                        }

                        for (int i = 0; i < 10; i++)
                        {
                            if (!String.IsNullOrEmpty(((Label)part1.FindControl("Zrab" + i.ToString())).Text))
                            {
                                cmd.CommandText = "INSERT INTO [autorep].[dbo].[zayavlr] ([id],[Name]) VALUES (" + (idzayavlr) + ",'" + ((Label)part1.FindControl("Zrab" + i.ToString())).Text + "')";
                                conn.Open();
                                cmd.ExecuteNonQuery();
                                conn.Close();
                            }
                        }


                        for (int i = 0; i < 10; i++)
                        {
                            if (!String.IsNullOrEmpty(((Label)part1.FindControl("Vrab" + i.ToString())).Text))
                            {
                                cmd.CommandText = "INSERT INTO [autorep].[dbo].[rabkvip] ([id],[Name]) VALUES (" + (idkvip) + ",'" + ((Label)part1.FindControl("Vrab" + i.ToString())).Text + "')";
                                conn.Open();
                                cmd.ExecuteNonQuery();
                                conn.Close();
                            }
                        }



                        for (int i = 1; i < addedRowsCount; i++)
                        {
                            if (!String.IsNullOrEmpty(((Label)part2.FindControl("rab" + i.ToString())).Text))
                            {

                                cmd.CommandText = "INSERT INTO [raboti] ([id],[Name],[Vipolnil],[Time],[DataDob],[Dobavil]) VALUES (" + (idviprab) + ",'" + ((Label)part2.FindControl("rab" + i.ToString())).Text + "', convert(bigint, (SELECT id from sotrudniki where Sotrudnik='" + ((Label)part2.FindControl("isp" + i.ToString())).Text + "'))," + (((Label)part2.FindControl("rabval" + i.ToString())).Text.Replace(',', '.') + ((Label)part2.FindControl("rabval1" + i.ToString())).Text.Replace(',', '.')) + ", GETDATE(),'" + User.Identity.Name.ToString() + "')";
                                conn.Open();
                                cmd.ExecuteNonQuery();
                                conn.Close();
                            }
                        }

                        //

                        for (int i = 1; i < 7; i++)
                        {
                            if (!String.IsNullOrEmpty(((Label)part4.FindControl("SPrabName" + i.ToString())).Text))
                            {
                                cmd.CommandText = "INSERT INTO [autorep].[dbo].[SPrabot] ([id],[Name],[Norm],[Price]) VALUES (" + (idsprab) + ",'" + ((Label)part4.FindControl("SPrabName" + i.ToString())).Text + "','" + ((Label)part4.FindControl("SPrabNorm" + i.ToString())).Text.Replace(',', '.') + "'," + ((Label)part4.FindControl("SPrabPrice" + i.ToString())).Text.Replace(',', '.') + ")";
                                conn.Open();
                                cmd.ExecuteNonQuery();
                                conn.Close();
                            }
                        }


                        for (int i = 1; i < 7; i++)
                        {
                            if (!String.IsNullOrEmpty(((Label)part4.FindControl("SPzapName" + i.ToString())).Text))
                            {
                                cmd.CommandText = "INSERT INTO [autorep].[dbo].[SPzap] ([id],[Name],[ed],[Count],[Sost]) VALUES (" + (idspzap) + ",'" + ((Label)part4.FindControl("SPzapName" + i.ToString())).Text + "','" + ((Label)part4.FindControl("SPzapED" + i.ToString())).Text + "'," + ((Label)part4.FindControl("SPzapCount" + i.ToString())).Text + ",'" + ((Label)part4.FindControl("SPzapSost" + i.ToString())).Text + "')";
                                conn.Open();
                                cmd.ExecuteNonQuery();
                                conn.Close();
                            }
                        }


                        cmd.CommandText = "UPDATE [autorep].[dbo].[zakazi] SET [Idzayavlr] = " + (idzayavlr) + " ,[Idrabot] = " + (idviprab) + " ,[Idzapvl] = " + (idzapvl) + " ,[Idzapm] = " + (idzapm) + " ,[Zakazchik] = '" + Zakazchik.Text + "' ,[Adres] = '" + Adress.Text + "' ,[Tel] = '" + Phone.Text + "' ,[Model] = '" + Model.Text + "' ,[God] = '" + Godv.Text + "' ,[Dvigat] = '" + Dvig.Text + "' ,[Probeg] = '" + Probeg.Text + "' ,[Numznak] = '" + Nomernz.Text + "' ,[NumKuz] = '" + KuzNamb.Text + "' ,[SrokIsp] = " + srok.Text.Replace(',', '.') + " ,[Dobavil] = '" + username.Text + "',[Datapred] = GETDATE() ,[Datapodp] = GETDATE() ,[Zamech] = '" + zamecc.Text + "' ,[Sost] = 'Добавленно' ,[idrabkvip] = " + (idkvip) + " ,[idzamech] = " + (idzamecc) + " ,[idspz] = " + (idspzap) + ",[idspr] = " + (idsprab) + " WHERE Id =" + Request.Params["paramstoreq"];
                        conn.Open();
                        cmd.ExecuteNonQuery();
                        conn.Close();

                    }

                }
            }
        }

        protected void addZamec_Click(object sender, EventArgs e)
        {
            AddNewRow1(addedRowsCount1);
            ((Label)part2.FindControl("Tipe" + addedRowsCount1.ToString())).Text = "Для запчастей";
            ((Label)part2.FindControl("Zamechanie" + addedRowsCount1.ToString())).Text = zamecc.Text;
            zamecc.Text = "";
            addedRowsCount1++;
            newautoSave_Click(this, e);
        }

        protected void addZamec1_Click(object sender, EventArgs e)
        {
            AddNewRow1(addedRowsCount1);
            ((Label)part2.FindControl("Tipe" + addedRowsCount1.ToString())).Text = "Для приемщика";
            ((Label)part2.FindControl("Zamechanie" + addedRowsCount1.ToString())).Text = zamecc.Text;
            zamecc.Text = "";
            addedRowsCount1++;
            newautoSave_Click(this, e);
        }

        protected void Finish_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["autorepConnectionString"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = conn;
                    cmd.CommandText = "UPDATE zakazi SET Sost = 'Выполнено' WHERE id =" + Request.Params["paramstoreq"];
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
            }
            RegisterStartupScript("OpenNewWindow", "<script language=\"javascript\">window.open(\"/\", \"_self\");</script>");
        }

        protected void Dellet_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["autorepConnectionString"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = conn;
                    cmd.CommandText = "DELETE FROM zakazi WHERE id =" + Request.Params["paramstoreq"];
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
            }
            RegisterStartupScript("OpenNewWindow", "<script language=\"javascript\">window.open(\"/\", \"_self\");</script>");
        }

        protected void NormhUpdate_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["autorepConnectionString"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = conn;
                    cmd.CommandText = "UPDATE Settings SET Value = '" + normhourss.Text + "' WHERE id =1";
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
            }
        }

        protected void SPrabNorm1_TextChanged(object sender, EventArgs e)
        {
            float numb;
            if(float.TryParse(((Label)part4.FindControl("SPrabNorm1")).Text,out numb))
                ((Label)part4.FindControl("SPrabPrice1")).Text = (float.Parse(normhourss.Text) * float.Parse(((Label)part4.FindControl("SPrabNorm1")).Text)).ToString();
            SPrabPrice_TextChanged(this, e);
        }

        protected void SPrabNorm2_TextChanged(object sender, EventArgs e)
        {
            float numb;
            if (float.TryParse(((Label)part4.FindControl("SPrabNorm2")).Text, out numb))
            ((Label)part4.FindControl("SPrabPrice2")).Text = (float.Parse(normhourss.Text) * float.Parse(((Label)part4.FindControl("SPrabNorm2")).Text)).ToString();
            SPrabPrice_TextChanged(this, e);
        }

        protected void SPrabNorm3_TextChanged(object sender, EventArgs e)
        {
            float numb;
            if (float.TryParse(((Label)part4.FindControl("SPrabNorm3")).Text, out numb))
                ((Label)part4.FindControl("SPrabPrice3")).Text = (float.Parse(normhourss.Text) * float.Parse(((Label)part4.FindControl("SPrabNorm3")).Text)).ToString();
            SPrabPrice_TextChanged(this, e);
        }

        protected void SPrabNorm4_TextChanged(object sender, EventArgs e)
        {
            float numb;
            if (float.TryParse(((Label)part4.FindControl("SPrabNorm4")).Text, out numb))
                ((Label)part4.FindControl("SPrabPrice4")).Text = (float.Parse(normhourss.Text) * float.Parse(((Label)part4.FindControl("SPrabNorm4")).Text)).ToString();
            SPrabPrice_TextChanged(this, e);
        }

        protected void SPrabNorm5_TextChanged(object sender, EventArgs e)
        {
            float numb;
            if (float.TryParse(((Label)part4.FindControl("SPrabNorm5")).Text, out numb))
                ((Label)part4.FindControl("SPrabPrice5")).Text = (float.Parse(normhourss.Text) * float.Parse(((Label)part4.FindControl("SPrabNorm5")).Text)).ToString();
            SPrabPrice_TextChanged(this, e);
        }

        protected void SPrabNorm6_TextChanged(object sender, EventArgs e)
        {
            float numb;
            if (float.TryParse(((Label)part4.FindControl("SPrabNorm6")).Text, out numb))
                ((Label)part4.FindControl("SPrabPrice6")).Text = (float.Parse(normhourss.Text) * float.Parse(((Label)part4.FindControl("SPrabNorm6")).Text)).ToString();
            SPrabPrice_TextChanged(this, e);
        }

        protected void SPrabPrice_TextChanged(object sender, EventArgs e)
        {
            float summ = 0;
            for (int i = 1; i < 7; i++)
            {
                if (!String.IsNullOrEmpty(((Label)part4.FindControl("SPrabPrice" + i.ToString())).Text))
                {
                    summ += float.Parse(((Label)part4.FindControl("SPrabPrice" + i.ToString())).Text);
                }
            }

            ((Label)part4.FindControl("SPrabPriceItog")).Text = summ.ToString();
            if (!String.IsNullOrEmpty(SPrabPriceItog.Text))
            {
                float it = float.Parse(SPrabPriceItog.Text);
                string sss = Converter.RuDateAndMoneyConverter.CurrencyToTxt(it, false);
                char ccc = char.ToUpper(sss[0]);
                sss = sss.Remove(0, 1).Insert(0, ccc.ToString());
                itogvtext.Text = sss;
            }
        }

        protected void zz_CheckedChanged(object sender, EventArgs e)
        {
            part1.Visible = zz.Checked;

        }

        protected void sr_CheckedChanged(object sender, EventArgs e)
        {
            part2.Visible = sr.Checked;

        }

        protected void app_CheckedChanged(object sender, EventArgs e)
        {
            part3.Visible = app.Checked;

        }

        protected void avr_CheckedChanged(object sender, EventArgs e)
        {
            part4.Visible = avr.Checked;
            
        }

    }
}