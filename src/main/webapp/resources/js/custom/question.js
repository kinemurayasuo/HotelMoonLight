// 글 삭제
function deleteQuestion(listNum) {
	var result = confirm("정말 삭제하겠습니까?");

	if (result) {
		location.href = "/question//deleteQuestion?listNum=" + listNum;
	}
}

// 댓글 삭제
function deleteReply(replyNum, listNum) {
	var result = confirm("정말 삭제하겠습니까?");
	var str = "";
	if (result) {
		str += "/question/deleteReply?replyNum=";
		str += replyNum;
		str += "&listNum=";
		str += listNum;
		location.href = str;
	}
}

function replyFormCheck() {
	var replyContent = document.getElementById('replyContent');

	if (replyContent.value == '') {
		alert("댓글을 입력하세요.");
		return false;
	}
	return true;
}

$(function () {
	$("input:button").click(function () {
		$("#updateReply").hide();
	});
});

