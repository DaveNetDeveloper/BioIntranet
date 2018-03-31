using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Collections.Generic;
using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;

namespace BioIntranet
{
    public class DbAccess  
    { 
        private string DbConnection
        {
            get
            {
                return ConfigurationManager.ConnectionStrings["DbConnection"].ConnectionString;
            }
        }

        public MySqlConnection ExecuteDataReader(string consultaSql, ref MySqlDataReader mySqlDataReader)
        {
            MySqlConnection connection = null;
            connection = new MySqlConnection(this.DbConnection);
            MySqlCommand mc = new MySqlCommand(consultaSql, connection);

            connection.Open();
            mySqlDataReader = mc.ExecuteReader();
            return connection; 
         }
    }
}