// 유효성 검사

function formCheck(memberPwChk1) {
   var preMemberPw = document.getElementById('preMemberPw').value;
   var memberPw = document.getElementById('memberPw').value;
   var memberPwChk = document.getElementById('memberPwChk').value;
   var memberTel = $("#memberTel").val();
   var memberEmail1 = $("#memberEmail1").val().trim();
   var memberEmail2 = $("#memberEmail2").val();
   if (preMemberPw.length < 2 || preMemberPw.length > 13) {
      alert("비밀번호는 3~12글자 사이로 입력해주세요.");
      return false;
   }
   if (memberPw.length == 0) {
      alert("비밀번호 변경를 입력해주세요.");

      return false;
   }

   if (memberPwChk.length == 0) {
      alert("비밀번호 재확인를 입력해주세요.");

      return false;
   }

   if (memberPw != memberPwChk) {
      alert("변경할 비밀번호가 일치하지 않습니다.");
      return false;
   }

   if (memberEmail1.length == 0 || memberEmail2.length == 0) {
      alert("이메일을 입력해주세요.");
      return false;
   }

   if (memberTel.length == 0) {
      alert("전화번호를 입력해주세요.");

      return false;
   }
   if (preMemberPw != memberPwChk1) {
      alert("현재 비밀번호가 일치하지 않습니다.");
      return false;
   }
   alert("회원정보가 수정되었습니다.");
   return true;

}

// 회원탈퇴 확인
function memberDelete(memberPwChk) {
   var result = confirm("탈퇴하시겠습니까?");

   if (result) {
      var input = document.first.userInput.value;
      input = prompt("비밀번호를 입력해주세요.");

      if (memberPwChk != input) {
         alert("비밀번호가 잘못 입력되었습니다.");
         location = "redirect:/member/memberInfo";
      } else {
         location = "redirect:/member/memberInfo";
      }

      if (memberPwChk == input) {
         location = "/member/memberDelete?memberPw=" + input;
         alert("회원 탈퇴가 완료되었습니다.");
      }
   } else {
      location = "redirect:/member/memberInfo";
   }
}

// 이메일 옵션 값을 옆 칸에 넣음
function email_change() {
   if (document.first.email.options[document.first.email.selectedIndex].value == '0') {
      document.first.memberEmail2disabled = true;
      document.first.memberEmail2.value = "";
   } else if (document.first.email.options[document.first.email.selectedIndex].value == '5') {
      document.first.memberEmail2.disabled = false;
      document.first.memberEmail2.value = "";
      document.first.memberEmail2.focus();
   } else {
      document.first.memberEmail2.disabled = true;
      document.first.memberEmail2.value = document.first.email.options[document.first.email.selectedIndex].value;
   }

}