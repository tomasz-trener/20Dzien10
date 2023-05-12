$(document).ready(function () {



    $("#btnSzukaj").on("click", function () {


        $(".card-title").html("Ładowanie...");

        var obrazek = $("#dvLadowanieContainer").html();
        $("#dvKontenerTabelki").html(obrazek);

        var wartoscZInputa = $("#txtSzukaj").val();
        //debugger;
        $.ajax({
            method: "POST",
            url: "Wyszukiwarka.aspx",
            data: { fraza: wartoscZInputa }
        })
            .done(function (msg) {
               //alert("Data Saved: " + msg);
                $(".row div").first().html(msg);
            });


    });

});