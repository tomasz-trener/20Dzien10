$(document).ready(function () {



    $("#btnSzukaj").on("click", function () {

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