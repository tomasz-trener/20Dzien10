using P02Biblioteka;
using P02Biblioteka.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace P03AplikacjaZawodnicy
{
    public partial class Wyszukiwarka : System.Web.UI.Page
    {
        public Zawodnik[] Zawodnicy;
        protected void Page_Load(object sender, EventArgs e)
        {
            string szukaj = Request["fraza"];

            ManagerZawodnikow managerZawodnikow = new ManagerZawodnikow();
            Zawodnicy =  managerZawodnikow.PodajZawodnikow(szukaj);
        }
    }
}