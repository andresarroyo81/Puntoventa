using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace printerApp
{
    public class clsDB
    {
        //parametros de conexcion a mysql
        private static string server = "localhost";
        private static string user = "root";
        private static string password = "";
        private static string database = "puntoventa";

        public static DataTable getData(string qry)
        {
            try
            {
                string strConn = $"server={server};uid={user};database={database};pwd={password}";
                MySqlConnection MyConn = new MySqlConnection(strConn);
                MySqlCommand MyCommand = new MySqlCommand(qry, MyConn);
                MySqlDataAdapter MyAdapter = new MySqlDataAdapter();
                MyAdapter.SelectCommand = MyCommand;
                DataTable info = new DataTable();
                MyAdapter.Fill(info);
                return info;
            }
            catch (Exception)
            {
                throw;
            }
        }

    }
}
