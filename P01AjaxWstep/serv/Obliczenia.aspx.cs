using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace P01AjaxWstep.serv
{
    public partial class Obliczenia : System.Web.UI.Page
    {
        public string JSON;
        protected void Page_Load(object sender, EventArgs e)
        {
            //  string napis = "ala ma kota2";
            //  Response.Write(napis);

            string liczba1Str = Request["liczba1"];
            string liczba2Str = Request["liczba2"];

            int wynik = Convert.ToInt32(liczba1Str) + Convert.ToInt32(liczba2Str);

            int dlugoscWyniku = Convert.ToString(wynik).Length;
            string s = "ala ma kota";

            Wynik wynik1 = new Wynik()
            {
                WynikWlasciwy = wynik,
                DlugoscWyniku = dlugoscWyniku,
                Test = s
            };

            JavaScriptSerializer ser = new JavaScriptSerializer();
            JSON = ser.Serialize( wynik1 );
            
            //Response.Write( json );

            //Response.Write(wynik +" " + dlugoscWyniku + " " + s);

           // Response.Write(2);
        }
    }
}