var x = document.getElementById("login");
var y = document.getElementById("register");
var z = document.getElementById("btn");

function register(){
    x.style.left = "-400px";
    y.style.left = "50px";
    z.style.left = "110px"
}
function login(){
    x.style.left = "50px";
    y.style.left = "450px";
    z.style.left = "0";
}





var newPassword = document.getElementById("new_password");
var confirmPassword = document.getElementById("confirm_password");

function validatePassword() {
    if (newPassword.value != confirmPassword.value) {
        document.getElementById("confirm_password").setCustomValidity("Passwords do not match!");
    } else {
        //empty string means no validation error
        document.getElementById("confirm_password").setCustomValidity('');
    }
}
newPassword.addEventListener("change", validatePassword);
confirmPassword.addEventListener("change", validatePassword);
