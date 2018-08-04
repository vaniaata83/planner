$('#myModal').modal('show');
$(document).ready(function() {
});
function checkProPassword() {
    $("#professionalForm").submit(function(event) {
        var form = this;
        var password = $("#pro-password").val();
        var repassword = $("#pro-repassword").val();
        if(password == repassword) {
            form.submit();
            $("#pro-passwordError").hide();
        } else {

            event.preventDefault();
            $("#pro-passwordError").show();
        }
    });
}

function checkClientPassword() {
    $("#clientForm").submit(function(event) {
        var form = this;
        var password = $("#client-password").val();
        var repassword = $("#client-repassword").val();
        if(password == repassword) {
            form.submit();
            $("#client-passwordError").hide();
        } else {
            event.preventDefault();
            $("#client-passwordError").show();
        }
    });
}
