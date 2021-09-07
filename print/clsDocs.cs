using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Microsoft.Win32;
using Receipt;


namespace printerApp
{
    public class clsDocs
    {
        public static void Receipt(string saleId, string printerName, int paperSize = 58)
        {
            clsTicket ticket1 = new clsTicket();

            string qryDetalle = "SELECT p.name AS product, sd.quantity, sd.price FROM sale_details AS sd " +
                                   "JOIN products AS p.id = sd.product_id WHERE sd.sale_id = " + saleId;

            string qryVenta = "SELECT s.'*', u.name AS user FROM sales AS s JOIN users AS u ON u.id = s.user_id WHERE s.id = " + saleId;
            
            DataTable dtDetalle = clsDB.getData(qryDetalle);
            DataTable dtVenta = clsDB.getData(qryVenta);
            DataTable dtCompany = clsDB.getData("SELECT * FROM companies");

            decimal precio = 0, cant = 0;
            double importe = 0;
            string total = "0";

            DateTime fecha = dtVenta.Rows[0].Field<DateTime>("created_at");

            ticket1.SetImpresora(printerName);
            //ticket1.SetLogo()
            ticket1.TextoCentrado58(dtCompany.Rows[0].Field<string>("name").Trim().ToUpper());//company name
            ticket1.TextoCentrado58(dtCompany.Rows[0].Field<string>("address").Trim().ToUpper());// address
            ticket1.TextoCentrado58("RFC: " + dtCompany.Rows[0].Field<string>("taxpayer_id").Trim().ToUpper());// RFC
            ticket1.TextoCentrado58("TELEFONO: " + dtCompany.Rows[0].Field<string>("phone").Trim());// PHONE

            ticket1.TextoIzquierda("");
            ticket1.TextoIzquierda("FOLIO #" + saleId);
            ticket1.TextoIzquierda("FECHA #" + fecha.ToString("dd/MM/yyyy tt"));
            ticket1.TextoIzquierda("ATIENDE #" + dtVenta.Rows[0].Field<string>("user").Trim().ToUpper());

            ticket1.Separador58();
            //imprimir productos
            for (int i = 0; i <= dtDetalle.Rows.Count -1; i++)
            {
                cant = dtDetalle.Rows[i].Field<decimal>("quantity");
                precio = dtDetalle.Rows[i].Field<decimal>("price");
                importe = Convert.ToDouble(cant * precio);

                string fullCad = dtDetalle.Rows[i].Field<string>("product").ToString() + "Cant:" + decimal.Truncate(cant) + "Subt:" + decimal.Round((cant * precio), 2);
                if(fullCad.Length <= 32)
                {
                    ticket1.TextoIzquierda(fullCad);
                } else
                {
                    ticket1.TextoIzquierda(dtDetalle.Rows[i].Field<string>("product").ToString().Replace("\n", ""));
                    ticket1.TextoIzquierda("Cant:" + decimal.Truncate(cant) + "Subt: " + decimal.Round((cant * precio), 2));
                }
            }
            ticket1.Separador58();
            ticket1.TextoIzquierda("");

            //totales
            total = dtVenta.Rows[0].Field <decimal > ("total").ToString();
            ticket1.TextExtremos58("TOTAL", Convert.ToDecimal(total).ToString("c"));
            ticket1.TextExtremos58("EFECTIVO", dtVenta.Rows[0].Field<decimal>("cash").ToString("c"));
            ticket1.TextExtremos58("CAMBIO", dtVenta.Rows[0].Field<decimal>("change").ToString("c"));

            ticket1.TextoIzquierda("");

            //agradecimiento
            ticket1.TextoCentrado58("Gracias por su compra");
            ticket1.TextoCentrado58("andresarroyo.com");

            ticket1.CortarTicket();

        }

        public static void CreateProtocol()
        {
            RegistryKey key = Registry.ClassesRoot.OpenSubKey(@"print");
            if(key == null)
            {
                // crear protocolo
                RegistryKey subkeyPrint = Registry.ClassesRoot.CreateSubKey("print");
                subkeyPrint.SetValue(null, "URL:print");
                subkeyPrint.SetValue("EditFlags", 2);
                subkeyPrint.SetValue("URL Protoco", "");

                // creamos shell
                RegistryKey subkeyShell = subkeyPrint.CreateSubKey("shell");
                subkeyShell.SetValue(null, "open");

                // creamos open
                RegistryKey subkeyOpen = subkeyShell.CreateSubKey("open");
                subkeyShell.SetValue(null, "");

                RegistryKey subkeyCommand = subkeyOpen.CreateSubKey("command");
                subkeyCommand.SetValue(null, "\"C:\\laragon\\www\\Puntoventa\\print\\printerApp.exe\" \"% 1\"");

                MessageBox.Show("PROTOCOLO REGISTRADO EN EL SO :)", "PrinterApp", MessageBoxButtons.OK, MessageBoxIcon.Information);

            }
        }

    }
}
