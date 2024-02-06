window.addEventListener("load", function(){
    
    var form = document.querySelector("#form1");
    form.addEventListener("submit", checkPasswords);
    
});

function checkPasswords(evt) {
    var password = document.querySelector("#password").value;
    var cpassword = document.querySelector("#cpassword").value;
    if (password != cpassword) {
        evt.preventDefault();
        alert("Passwords do not match");
    }
}

