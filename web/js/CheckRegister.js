/**
 * Created by Mostafa on 6/13/2016.
 */
jQuery(document).ready(function () {
    $(document).on("submit", "#userRegisterForm", function (event) {
        $.ajax({
            type: "post",
            url: 'RegisterController',
            data: {
                "email": $("#email").val(),
                "password": $("#password").val(),
                "firstName": $("#name").val(),
                "lastName": $("#lastname").val(),
                "address": $("#address").val(),
                "tell": $("#tell").val()
            },
            success: function (responseText) {
                var result = responseText;

                if(result == "accepted"){
                    $("#errorEmailMessage").show();
                }
                else{
                    $("#errorEmailMessage").hide();
                }

                ;
            }
        });
        event.preventDefault(); // Important! Prevents submitting the form.
    });
});