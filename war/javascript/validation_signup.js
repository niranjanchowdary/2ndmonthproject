/*	sign up details*/
//checking user signup details 
function checkDetails() {
	var user = document.main_form1.user.value;
	var email = document.main_form1.user_email.value;
	var password = document.main_form1.pass.value;
	var password1 = document.main_form1.re_pass.value;
	var flag = false;
	if (checkUser(user)) {
		if (checkEmail(email)) {
			if (checkPass(password, password1)) {
				flag = true;
				return flag;
			}
		}
	}
	return flag;
}

// validating user name
function checkUser(user) {
	if (user.length != 0 || user.length > 2) {
		return true;
	} else {
		alert("please enter a valid name");
		main_form1.user.value = "";
		main_form1.user.focus();
		return false;
	}

}
// validating user email
function checkEmail(email) {
	var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	if (email.match(mailformat)) {
		return true;
	} else {
		alert("You have entered an invalid email please check once!");
		main_form1.user_email.value = "";
		main_form1.user_email.focus();
		return false;
	}
}
// validating password
function checkPass(pass, re_pass) {
	re = /[0-9]/;
	re2 = /[a-z]/;
	re1 = /[A-Z]/;
	if (pass.length == 0 || re_pass.length == 0 || pass != re_pass
			|| pass.length < 6 || re_pass.length < 6 || !(re.test(pass))
			|| !(re.test(re_pass)) || !(re2.test(pass) || re2.test(re_pass))
			|| !(re1.test(pass) || re1.test(re_pass))) {
		alert("please check your details.. password must contain above 6,atleast one lower case and upper case and one number and it should not be null");
		main_form1.pass.value = "";
		main_form1.re_pass.value = ""
		main_form1.pass.focus();
		return false

	} else {
		return true;
	}
}
