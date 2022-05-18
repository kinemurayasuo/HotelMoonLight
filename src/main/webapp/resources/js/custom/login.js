
function formChk() {
	var memberId = $("#memberId").val().trim();
	if (memberId.length == 0) {
		alert("ID를 입력해주세요.");
		return false;
	}

	var memberPw = $("#memberPw").val().replaceAll(" ", "");
	if (memberPw.length == 0) {
		alert("PW를 입력해주세요");

		return false;
	}
}