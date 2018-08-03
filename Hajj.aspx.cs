using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.DataVisualization.Charting;
using System.Web.UI.WebControls;


namespace HAKATHON
{
    public partial class Hajj : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            { 
            SqlConnection CONN = new SqlConnection();
            CONN.ConnectionString = ConfigurationManager.ConnectionStrings["malaaConnectionString"].ConnectionString;
            DataTable dt = new DataTable();
            //--------------------------------

                CONN.Open();
                SqlCommand cmd = new SqlCommand("SELECT mina_sector_name as Name, COUNT([MS_total_capacity]) AS Total FROM mina_details GROUP BY mina_sector_name", CONN);
                SqlDataAdapter da1 = new SqlDataAdapter(cmd);
                da1.Fill(dt);
                CONN.Close();
                Chart1.Visible = true;
            
    string[] x = new string[dt.Rows.Count];
            int[] y = new int[dt.Rows.Count];
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                x[i] = dt.Rows[i][0].ToString();
                y[i] = Convert.ToInt32(dt.Rows[i][1]);
            }


            Chart1.Series[0].Points.DataBindXY(x, y);
            Chart1.Series[0].ChartType = SeriesChartType.Pie;
            Chart1.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;
                CONN.Close();
            }
            //**********************************************************
            { 
            SqlConnection CONN1 = new SqlConnection();
            CONN1.ConnectionString = ConfigurationManager.ConnectionStrings["malaaConnectionString"].ConnectionString;
            DataTable dt1 = new DataTable();
            //--------------------------------

            CONN1.Open();
            SqlCommand cmd1 = new SqlCommand("SELECT mozdalifa_sector_name as Name, COUNT([MS_total_capacity]) AS Total FROM mozdalifa_details GROUP BY mozdalifa_sector_name", CONN1);
            SqlDataAdapter da = new SqlDataAdapter(cmd1);
            da.Fill(dt1);
            CONN1.Close();
            Chart2.Visible = true;

            string[] x1 = new string[dt1.Rows.Count];
            int[] y1 = new int[dt1.Rows.Count];
            for (int i = 0; i < dt1.Rows.Count; i++)
            {
                x1[i] = dt1.Rows[i][0].ToString();
                y1[i] = Convert.ToInt32(dt1.Rows[i][1]);
            }


            Chart2.Series[0].Points.DataBindXY(x1, y1);
            Chart2.Series[0].ChartType = SeriesChartType.Pie;
            Chart2.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;
                CONN1.Close();
            }
            //**********************************************************
            {
                SqlConnection CONN2 = new SqlConnection();
                CONN2.ConnectionString = ConfigurationManager.ConnectionStrings["malaaConnectionString"].ConnectionString;
                DataTable dt2 = new DataTable();
                //--------------------------------

                CONN2.Open();
                SqlCommand cmd1 = new SqlCommand("SELECT arfaa_sector_name as Name, COUNT([AS_total_capacity]) AS Total FROM arfaa_details GROUP BY arfaa_sector_name", CONN2);
                SqlDataAdapter da2 = new SqlDataAdapter(cmd1);
                da2.Fill(dt2);
                CONN2.Close();
                Chart3.Visible = true;

                string[] x2 = new string[dt2.Rows.Count];
                int[] y2 = new int[dt2.Rows.Count];
                for (int i = 0; i < dt2.Rows.Count; i++)
                {
                    x2[i] = dt2.Rows[i][0].ToString();
                    y2[i] = Convert.ToInt32(dt2.Rows[i][1]);
                }


                Chart3.Series[0].Points.DataBindXY(x2, y2);
                Chart3.Series[0].ChartType = SeriesChartType.Pie;
                Chart3.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;
                CONN2.Close();
            }
        }


    }
}