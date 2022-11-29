/**
 * 
 */
 
 function joinCheck(){
	if(document.join_frm.mid.value.length == 0){
		alert("아이디는 필수 입력 사항입니다. 다시 확인해주세요!");
		return;
		
	}
	
	if(document.join_frm.mid.value.length < 4){
		alert("아이디가 너무 짧습니다. 아이디는 4자 이상어야 합니다.");
		return;
		
	}
	
	
	if(document.join_frm.mpw.value.length == 0){
		alert("비밀번호는 필수 입력 사항입니다. 다시 확인해주세요!");
		return;
		
	}
	
		if(document.join_frm.mpw_check.value.length == 0){
		alert("비밀번호 체크란은 필수 입력사항입니다. 확인해주세요");
		return;
		
	}
	
		if(document.join_frm.mpw.value.length != document.join_frm.mpw_check.value.length){
		alert("비밀번호가 일치하지 않습니다.. 다시 확인해주세요!");
		return;
		
		
		
	}
	
		if(document.join_frm.mname.value.length == 0){
		alert("이름은 필수 입력사항입니다. 확인해주세요");
		return;
		
	}
	
		if(document.join_frm.memail.value.length == 0){
		alert("이메일은 필수 입력사항입니다. 확인해주세요");
		return;
		
	}
	
	
	document.join_frm.submit();
	
}