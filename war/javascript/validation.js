function validateDetais() {
		var user_name = document.main_frame.user_name.value;
		var user_pass = document.main_frame.user_pass.value;
		if (check_user(user_name)) {
			if (check(user_pass)) {

			}
		}
		return true;
	}

	function check(user_pass) {

		re = /[0-9]/;
		re2 = /[a-z]/;
		re1 = /[A-Z]/;

		if ((user_pass.length == 0) || (user_pass.length < 6)
				|| !(re.test(user_pass)) || !(re1.test(user_pass))
				|| !(re2.test(user_pass))) {
			alert("please check your details.. password must contain above 6,atleast one lower case and upper case and one number and it should not be null");
			main_frame.user_pass.value = "";
			main_frame.user_pass.focus();
			return false
		} else
			return true;

	}

	function check_user(username) {

		var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		if (username.match(mailformat)) {
			return true;
		} else {
			alert("You have entered an invalid email or user name please check!");
			main_frame.user_name.value = "";
			main_frame.user_name.focus();
			return false;
		}
	}

