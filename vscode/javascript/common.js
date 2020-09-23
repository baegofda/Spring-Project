const drop = document.querySelector(".drop");
const dropContainer = document.querySelector(".drop__container");
const scrollBtn = document.querySelector(".scroll-btn");
const inputNameWrite = document.querySelector("#name__write");
const inputPwWrite = document.querySelector("#pw__write");
const inputPwCheck = document.querySelector("#pw__check");
const addressSearch = document.querySelector(".address--search");

const agreementView = document.querySelector(".agreement");
const privateView = document.querySelector(".private");
const locationView = document.querySelector(".location");
const agreementBlocker = document.querySelector(".agreement--blocker");
const argeementDetail = document.querySelector(".agreement--detail");
const privateBlocker = document.querySelector(".private--blocker");
const privateDetail = document.querySelector(".private--detail");
const locationBlocker = document.querySelector(".location--blocker");
const locationDetail = document.querySelector(".location--detail");

const selectAll = document.querySelector(".all--select");
const objs = document.querySelectorAll(".agree--select");
const findPwSubmit = document.querySelector(".find-pw__submit");
const findPwResetLogin = document.querySelector(".find-pw-reset__login");
const findPwResetMain = document.querySelector(".find-pw-reset__main");
const myPageUpdateBtn = document.querySelector(".mypage__update");
const userLeaveBtn = document.querySelector(".mypage__leave");
const userLeaveCancleBtn = document.querySelector(".user-leave__cancle");
const userLeaveSubmitBtn = document.querySelector(".user-leave__submit");
const updatePwBtn = document.querySelector(".update-pw__submit");
const loginJoin = document.querySelector(".login__join");
const loginSubmit = document.querySelector(".login__submit");
const submitBtn = document.querySelector(".submit-btn");
const emailCheckBtn = document.querySelector(".email-check");
const nameCheckBtn = document.querySelector(".name-check");

let i = 0;
let j = 0;

if (drop != null) {
	drop.addEventListener("click", () => {
		dropAction();
	});
}

if (agreementView != null) {
	agreementView.addEventListener("click", () => {
		agreementHandeler();
	});
}
if (privateView != null) {
	privateView.addEventListener("click", () => {
		privateHandeler();
	});
}
if (locationView != null) {
	locationView.addEventListener("click", () => {
		locationHandeler();
	});
}
if (agreementBlocker != null) {
	agreementBlocker.addEventListener("click", () => {
		agreementHandeler();
	});
}
if (privateBlocker != null) {
	privateBlocker.addEventListener("click", () => {
		privateHandeler();
	});
}
if (locationBlocker != null) {
	locationBlocker.addEventListener("click", () => {
		locationHandeler();
	});
}

if (scrollBtn != null) {
	scrollBtn.addEventListener("click", () => {
		window.scrollTo({ top: 0, behavior: "smooth" });
	});
}



if (inputNameWrite != null) {
	inputNameWrite.addEventListener("keyup", () => {
		nameRules();
	});
}
if (inputPwWrite != null) {
	inputPwWrite.addEventListener("keyup", () => {
		pwRules();
		pwCheck();
	});
}
if (inputPwCheck != null) {
	inputPwCheck.addEventListener("keyup", () => {
		pwCheck();
	});
}

if (addressSearch != null) {
	addressSearch.addEventListener("click", () => {
		addressSearchFunction();
	});
}

if (selectAll != null) {
	if (selectAll != null) {
		selectAll.addEventListener(
			"click",
			function () {
				for (i = 0; i < objs.length; i++) {
					objs[i].checked = selectAll.checked;
				}
			},
			false
		);
	}

	if (objs != null) {
		for (i = 0; i < objs.length; i++) {
			objs[i].addEventListener(
				"click",
				function () {
					for (j = 0; j < objs.length; j++) {
						if (objs[j].checked === false) {
							selectAll.checked = false;
							return;
						}
					}
					selectAll.checked = true;
				},
				false
			);
		}
	}
}

if (findPwResetLogin != null) {
	findPwResetLogin.addEventListener("click", () => {
		location.href = "login.html";
	});
}

if (findPwResetMain != null) {
	findPwResetMain.addEventListener("click", () => {
		location.href = "main.html";
	});
}

if (userLeaveCancleBtn != null) {
	userLeaveCancleBtn.addEventListener("click", () => {
		history.go(-1);
	});
}

if (loginJoin != null) {
	loginJoin.addEventListener("click", () => {
		location.href = "join.html";
	});
}

if (userLeaveBtn != null) {
	userLeaveBtn.addEventListener("click", () => {
		if (confirm("회원탈퇴를 원하십니까 ?") == true) {
			location.href = "userLeave.html";
		} else {
			return false;
		}
	});
}

// --------------------------- 작업시 유효성 검사이후 넘겨주세요
if (myPageUpdateBtn != null) {
	myPageUpdateBtn.addEventListener("click", () => {
		if (true) {
			// 작업시 주석해제 후 formname에 값 전달을 위한 form태그의 name을 적어주세요
			// document.formname.submit();
			alert("수정완료 !");
			location.href = "main.html";
		} else {
			alert("수정실패 ! 입력하신 정보를 확인해주세요.");
			return false;
		}
	});
}

if (userLeaveSubmitBtn != null) {
	userLeaveSubmitBtn.addEventListener("click", () => {
		if (true) {
			// 작업시 주석해제 후 formname에 값 전달을 위한 form태그의 name을 적어주세요
			// document.formname.submit();
			alert("탈퇴가 완료되었습니다. 그동안 이용해주셔서 감사합니다.");
			location.href = "main.html";
		} else {
			alert("탈퇴에 실패하였습니다. 비밀번호를 확인해주세요.");
			return false;
		}
	});
}

if (updatePwBtn != null) {
	updatePwBtn.addEventListener("click", () => {
		if (true) {
			// 작업시 주석해제 후 formname에 값 전달을 위한 form태그의 name을 적어주세요
			// document.formname.submit();
			alert("수정완료 ! 환영합니다.");
			location.href = "main.html";
		} else {
			alert("수정실패 ! 입력하신 정보를 확인해주세요.");
			return false;
		}
	});
}

if (loginSubmit != null) {
	loginSubmit.addEventListener("click", () => {
		if (true) {
			// 주석해제 후 formname에 값 전달을 위한 form태그의 name을 적어주세요
			// document.formname.submit();
			alert("로그인성공 ! 환영합니다.");
			location.href = "main.html";
		} else {
			alert("로그인실패 ! 아이디 혹은 비밀번호를 확인해주세요.");
			return false;
		}
	});
}

if (findPwSubmit != null) {
	findPwSubmit.addEventListener("click", () => {
		if (true) {
			// 작업시 주석해제 후 formname에 값 전달을 위한 form태그의 name을 적어주세요
			// document.formname.submit();
			location.href = "findPwReset.html";
		} else {
			alert("존재하지 않는 회원 정보 입니다.");
			return false;
		}
	});
}

if (submitBtn != null) {
	submitBtn.addEventListener("click", () => {
		if (true) {
			// 작업시 주석해제 후 formname에 값 전달을 위한 form태그의 name을 적어주세요
			// document.formname.submit();
			alert("가입완료 ! 잘 부탁드립니다.");
			location.href = "main.html";
		} else {
			alert("가입실패 ! 입력하신 정보를 확인해주세요.");
			return false;
		}
	});
}

if (emailCheckBtn != null) {
	emailCheckBtn.addEventListener("click", () => {
		if (true) {
			// 작업시 주석해제 후 formname에 값 전달을 위한 form태그의 name을 적어주세요
			// document.formname.submit();
			alert("사용하실 수 있는 이메일입니다.");
		} else {
			alert("이미 가입된 이메일입니다.");
			return false;
		}
	});
}

if (nameCheckBtn != null) {
	nameCheckBtn.addEventListener("click", () => {
		if (true) {
			// 작업시 주석해제 후 formname에 값 전달을 위한 form태그의 name을 적어주세요
			// document.formname.submit();
			alert("사용하실 수 있는 닉네임입니다.");
		} else {
			alert("이미 가입된 닉네임입니다.");
			return false;
		}
	});
}
//-----------------------------
function dropAction() {
	if (dropContainer.classList.contains("active")) {
		dropContainer.classList.remove("active");
	} else {
		dropContainer.classList.add("active");
	}
}

function nameRules() {
	const nameWrite = document.querySelector("#name__write").value;
	const patternHard = /^(?=.*\d)(?=.*[a-zA-Z])[A-Za-z\d`~!@#$%^&*+=-]$/;
	const nameMessage = document.querySelector(".name__message");
	const nameMessage1 = document.querySelector(".name__message1");
	const nameMessage2 = document.querySelector(".name__message2");
	if (nameWrite != "") {
		//문자 길이 2 ~ 6자
		if (nameWrite.length < 2 || nameWrite.length > 6) {
			nameMessage.style.display = "block";
			nameMessage.innerHTML = `<span>☓ 2자 ~ 6자 입력</span>`;
			nameMessage.style.color = "#b3130b";
			nameMessage.style.fontSize = "12px";
		} else {
			nameMessage.style.display = "block";
			nameMessage.innerHTML = `<span>✓ 2자 ~ 6자 입력</span>`;
			nameMessage.style.color = "#0f851a";
			nameMessage.style.fontSize = "12px";
		}

		if (nameWrite.search(/\s/) != -1 || patternHard.test(nameWrite)) {
			nameMessage1.style.display = "block";
			nameMessage1.innerHTML = `<span>☓ 영문/숫자/특수문자 사용가능 (공백제외)</span>`;
			nameMessage1.style.color = "#b3130b";
			nameMessage1.style.fontSize = "12px";
		} else {
			nameMessage1.style.display = "block";
			nameMessage1.innerHTML = `<span>✓ 영문/숫자/특수문자 사용가능 (공백제외)</span>`;
			nameMessage1.style.color = "#0f851a";
			nameMessage1.style.fontSize = "12px";
		}
		// if (중복확인 리턴값 넣어주세요) {
		//     nameMessage2.style.display = "block";
		//     nameMessage2.innerHTML = `<span>☓ 아이디 중복확인을 해주세요</span>`;
		//     nameMessage2.style.color = "#b3130b";
		//     nameMessage2.style.fontSize = "12px";
		// } else {
		//     nameMessage2.style.display = "block";
		//     nameMessage2.innerHTML = `<span>✓ 아이디 중복확인을 해주세요</span>`;
		//     nameMessage2.style.color = "#0f851a";
		//     nameMessage2.style.fontSize = "12px";
		// }
	} else {
		nameMessage.style.display = "block";
		nameMessage.innerHTML = `！닉네임을 입력해주세요.`;
		nameMessage.style.color = "#b3130b";
		nameMessage.style.fontSize = "12px";
		nameMessage1.style.display = "none";
		nameMessage2.style.display = "none";
	}
}

function pwRules() {
	const pwWrite = document.querySelector("#pw__write").value;
	const patternHard = /^(?=.*\d)(?=.*[a-zA-Z])[A-Za-z\d`~!@#$%^&*+=-]$/;
	const write__message = document.querySelector(".write__message");
	const write__message1 = document.querySelector(".write__message1");
	const write__message2 = document.querySelector(".write__message2");
	if (pwWrite != "") {
		//문자 길이 10자 이상
		if (pwWrite.length < 10 || pwWrite.length > 17) {
			write__message.style.display = "block";
			write__message.innerHTML = `<span>☓ 10자 ~ 16자 입력</span>`;
			write__message.style.color = "#b3130b";
			write__message.style.fontSize = "12px";
		} else {
			write__message.style.display = "block";
			write__message.innerHTML = `<span>✓ 10자 ~ 16자 입력</span>`;
			write__message.style.color = "#0f851a";
			write__message.style.fontSize = "12px";
		}

		if (pwWrite.search(/\s/) != -1 || patternHard.test(pwWrite)) {
			write__message1.style.display = "block";
			write__message1.innerHTML = `<span>☓ 영문/숫자/특수문자 사용가능 (공백제외)</span>`;
			write__message1.style.color = "#b3130b";
			write__message1.style.fontSize = "12px";
		} else {
			write__message1.style.display = "block";
			write__message1.innerHTML = `<span>✓ 영문/숫자/특수문자 사용가능 (공백제외)</span>`;
			write__message1.style.color = "#0f851a";
			write__message1.style.fontSize = "12px";
		}

		// 동일문자 3번이상 사용 금지
		if (/(\w)\1\1/.test(pwWrite)) {
			write__message2.style.display = "block";
			write__message2.innerHTML = `<span>☓ 동일한 문자 3개이상 연속 사용 불가</span>`;
			write__message2.style.color = "#b3130b";
			write__message2.style.fontSize = "12px";
		} else {
			write__message2.style.display = "block";
			write__message2.innerHTML = `<span>✓ 동일한 문자 3개이상 연속 사용 불가</span>`;
			write__message2.style.color = "#0f851a";
			write__message2.style.fontSize = "12px";
		}
	} else {
		write__message.style.display = "block";
		write__message.innerHTML = `！비밀번호를 입력해주세요.`;
		write__message.style.color = "#b3130b";
		write__message.style.fontSize = "12px";
		write__message1.style.display = "none";
		write__message2.style.display = "none";
	}
}

function pwCheck() {
	const pwWrite = document.querySelector("#pw__write").value;
	const pwCheck = document.querySelector("#pw__check").value;
	const pwConfrim = document.querySelector(".pw__confirm");
	if (pwWrite != "" || pwCheck != "") {
		if (pwWrite != pwCheck) {
			pwConfrim.style.display = "block";
			pwConfrim.innerHTML = `☓ 비밀번호가 일치하지 않습니다.`;
			pwConfrim.style.color = "#b3130b";
			pwConfrim.style.fontSize = "12px";
		} else {
			pwConfrim.style.display = "block";
			pwConfrim.innerHTML = `✓ 비밀번호가 일치합니다.`;
			pwConfrim.style.color = "#0f851a";
			pwConfrim.style.fontSize = "12px";
		}
	} else {
		pwConfrim.style.display = "block";
		pwConfrim.innerHTML = `！비밀번호를 입력해주세요.`;
		pwConfrim.style.color = "#b3130b";
		pwConfrim.style.fontSize = "12px";
	}
}

function agreementHandeler() {
	agreementBlocker.classList.toggle("active");
	argeementDetail.classList.toggle("active");
}

function privateHandeler() {
	privateBlocker.classList.toggle("active");
	privateDetail.classList.toggle("active");
}

function locationHandeler() {
	locationBlocker.classList.toggle("active");
	locationDetail.classList.toggle("active");
}

function addressSearchFunction() {
	new daum.Postcode({
		oncomplete: function (data) {
			// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

			// 각 주소의 노출 규칙에 따라 주소를 조합한다.
			// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
			var addr = ""; // 주소 변수
			// var extraAddr = ""; // 참고항목 변수

			//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
			if (data.userSelectedType === "R") {
				// 사용자가 도로명 주소를 선택했을 경우
				addr = data.roadAddress;
			} else {
				// 사용자가 지번 주소를 선택했을 경우(J)
				addr = data.jibunAddress;
			}

			// // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
			// if(data.userSelectedType === 'R'){
			//     // 법정동명이 있을 경우 추가한다. (법정리는 제외)
			//     // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
			//     if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
			//         extraAddr += data.bname;
			//     }
			//     // 건물명이 있고, 공동주택일 경우 추가한다.
			//     if(data.buildingName !== '' && data.apartment === 'Y'){
			//         extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
			//     }
			//     // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
			//     if(extraAddr !== ''){
			//         extraAddr = ' (' + extraAddr + ')';
			//     }
			//     // 조합된 참고항목을 해당 필드에 넣는다.
			//     document.getElementById("sample6_extraAddress").value = extraAddr;

			// } else {
			//     document.getElementById("sample6_extraAddress").value = '';
			// }

			// 우편번호와 주소 정보를 해당 필드에 넣는다.
			// document.getElementById('sample6_postcode').value = data.zonecode;
			document.getElementById("address").value = addr;
			// 커서를 상세주소 필드로 이동한다.
			document.getElementById("sample6_detailAddress").focus();
		},
	}).open();
}
