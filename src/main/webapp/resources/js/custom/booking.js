function formChk() {
	var bookingStart = document.bookingForm.bookingStart.value;
	if (bookingStart == '') {
		alert("체크인 날짜를 선택해주세요.");
		return false;
	}

	var bookingEnd = document.bookingForm.bookingEnd.value;
	if (bookingEnd == '') {
		alert("체크아웃 날짜를 선택해주세요.");
		return false;
	}
	var child = $("#child").val();
	if (child == '') {
		alert("인원을 입력해주세요.");
		return false;
	}

	var adult = $("#adult").val();
	if (adult == '') {
		alert("인원을 선택해주세요.");
		return false;
	}
	return true;
}