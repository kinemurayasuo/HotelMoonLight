function formChk() {
	var isIdChked = false;
	var memberId = $("#memberId").val().trim();
	if (memberId.length == 0) {
		alert("ID를 입력해주세요.");

		return false;
	}
	if (memberId.length < 2 || memberId.length > 10) {
		alert("ID는 2~10자리로 입력해주세요");

		return false;
	}
	var memberPw = $("#memberPw").val().replaceAll(" ", "");
	if (memberPw.length == 0) {
		alert("PW를 입력해주세요");

		return false;
	}
	if (memberPw.length < 3 || memberPw.length > 12) {
		alert("PW는 3~12자리 사이로 입력해주세요");

		return false;
	}

	var memberPwChk = $("#memberPwChk").val().replaceAll(" ", "");
	if (memberPwChk != memberPw) {

		alert("PW를 확인해주세요");

		return false;
	}
	var memberNm = $("#memberNm").val().trim();
	if (memberNm.length == 0) {
		alert("이름을 입력해주세요.");

		return false;
	}

	var memberTel = $("#memberTel").val().trim();
	if (memberTel.length == 0) {
		alert("전화번호를 입력해주세요.");

		return false;
	}

	var memberEmail = $("#memberEmail").val().trim();
	if (memberEmail.length == 0) {
		alert("이메일을 입력해주세요.");

		return false;
	}

	if (memberEmail.indexOf("@") != -1) {
		if (memberEmail.indexOf(".") != -1) {
		}
		else {
			alert("이메일 형식을 확인해주세요.");
			return false
		}
	} else {
		alert("이메일 형식을 확인해주세요.");
		return false
	}


	$.ajax({
		url: "/member/idChk",
		data: {
			idChk: $("#memberId").val()
		},
		async: false,
		success: function (res) {
			if (res == "available") {
				isIdChked = true;
			}
			else {
				alert("이미 가입된 ID입니다.");
			}
		}
	});

	if (isIdChked == true) {
		alert("회원가입이 완료되었습니다.")
	}
	return isIdChked;
}