using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace printerApp
{
    class Program
    {
        static void Main(string[] args)
        {

            clsDocs.CreateProtocol();

            //validar que nos pasen el parametro venta id
            if(args == null || args.Length == 0)
            {
                System.Environment.Exit(0); //cerrar apliccion
            } else
            {
                //variable para guardar el nombre de la impresora
                string pName = "";

                readPrinter(ref pName);

                string saleId = args[0].Replace("print://", string.Empty).Replace("/", string.Empty);

                clsDocs.Receipt(saleId, pName);
            }
        }

        private static void readPrinter(ref string printerName)
        {
            //obtenemos direcorio del ejecutable
            string rootFolder = Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().Location);
            string textFile = rootFolder + @"\printer.txt";

            if (File.Exists(textFile))
                printerName = File.ReadAllText(textFile);
            else
                printerName = "eQual";

        }
    }
}
