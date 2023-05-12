$(document).ready(function () {



    $("#btnSzukaj").on("click", function () {

        var wartoscZInputa = $("#txtSzukaj");

        $.ajax({
            method: "POST",
            url: "Wyszukiwarka.aspx",
            data: { fraza: wartoscZInputa }
        })
            .done(function (msg) {
                alert("Data Saved: " + msg);
            });


    });

});