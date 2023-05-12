
$(document).ready(function () {

    $("#btnPolicz").on("click", function () {


        var liczba1 = $("#txtLiczba1").val();
        var liczba2 = $("#txtLiczba2").val();

        //var wynik = parseInt(liczba1) + parseInt(liczba2);
        //$("#txtWynik").val(wynik);

        $.ajax({
            method: "POST",
            url: "./serv/Obliczenia.aspx",
            data: { liczba1: liczba1, liczba2: liczba2 }
        })
            .done(function (msg) {
                //alert("Data Saved: " + msg);

              //  var myArray = msg.split(" ");
              //  $("#txtWynik1").val(myArray[0]);
             //   $("#txtWynik2").val(myArray[1]);

              //  alert(msg);
                var obj = JSON.parse(msg);
                $("#txtWynik1").val(obj.WynikWlasciwy);

                $("#txtWynik2").val(obj.DlugoscWyniku);

                $("#txtWynik3").val(obj.Test);
            });
    });

});