/**
 * 
 */
//로그인 체크
function loginCheck(){
	if(document.frm.userid.value.length==0){
		alert("아이디를 써주세요");
		frm.userid.focus();
		return false;
	}
	if(document.frm.pwd.value == ""){
		alert("암호는 반드시 입력해야 합니다.");
		frm.pwd.focus();
		return false;
	}
	return true;
}
//아이디 체크
function idCheck(){
	if(document.frm.userid.value==""){
		alert('아이디를 입력하여 주십시오.');
		document.frm.userid.focus();
		return;	
	}
	var url="MemberServlet?command=idCheck_do";
	window.open(url,"","");
	
}
//아이디 중복 체크 완료 처리를 위한 함수
function idok(){
	opener.frm.userid.value=document.frm.userid.value;
	opener.frm.reid.value=document.frm.userid.value;
	self.close();
}
//회원 정보의 유효성을 체크하기 위한 함수
function joinCheck(){
	if(document.frm.name.value.length==0){
		alert("이름을 써주세요.");
		frm.name.focus();
		return false;
	}
	if(document.frm.userid.value.length==0){
		alert("아이디를 써주세요.");
		frm.userid.focus();
		return false;
	}
	if(document.frm.userid.value.length<4){
		alert("아이디는 4글자 이상이어야 합니다.");
		frm.userid.focus();
		return false;
	}
	if(document.frm.name.pwd.length==0){
		alert("압호는 반드시 입력해야 합니다.");
		frm.pwd.focus();
		return false;
	}
	if(document.frm.pwd.value!=document.frm.pwd_check.value){
		alert("암호가 일치하지 않습니다.");
		frm.pwd.focus();
		return false;
	}
	if(document.frm.reid.value.length==0){
		alert("중복 체크를 하지 않았습니다.");
		frm.userid.focus();
		return false;
	}
	return true;
}