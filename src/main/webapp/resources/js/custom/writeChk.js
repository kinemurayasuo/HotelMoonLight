function formCheck() {
	var listTitle = document.getElementById('listTitle');
	var listContent = document.getElementById('listContent');

	if (listTitle.value == '') {
		alert("제목을 입력하세요.");
		return false;
	}
	if (listContent.value == '') {
		alert("내용을 입력하세요.");
		return false;
	}
	return true;
}