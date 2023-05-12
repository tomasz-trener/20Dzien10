using Microsoft.VisualStudio.TestTools.UnitTesting;
using P02Biblioteka;
using P02Biblioteka.Services;
using System;

namespace P04TestyJednostkowe
{
    [TestClass]
    public class ManagerZawodnikowTests
    {
        [TestMethod]
        public void Scenariusz_FiltrZawodnikow()
        {
            ManagerZawodnikow mz = new ManagerZawodnikow();
            Zawodnik[] zawodnicy= mz.PodajZawodnikowFiltr("ger");


            int oczekiwanyWynik = 5;

            int rzeczywistyWynik = zawodnicy.Length;

            Assert.AreEqual(oczekiwanyWynik , rzeczywistyWynik);

            Assert.IsTrue(rzeczywistyWynik > 4 && rzeczywistyWynik < 10);

        }

        [TestMethod]
        public void Scenariusz_FiltrZawodnikow2()
        {
            ManagerZawodnikow mz = new ManagerZawodnikow();
            Zawodnik[] zawodnicy = mz.PodajZawodnikowFiltr("ger");


            int oczekiwanyWynik = 4;

            int rzeczywistyWynik = zawodnicy.Length;

            Assert.AreEqual(oczekiwanyWynik, rzeczywistyWynik);

        }
    }
}
