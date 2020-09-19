const scrollBtn = document.querySelector(".scroll-btn");
const agreementBlocker = document.querySelector(".agreement--blocker");
const agreeDetails = document.querySelector(".agreement");
const privateBlocker = document.querySelector(".private--blocker");
const privateDetails = document.querySelector(".private");
const locationBlocker = document.querySelector(".location--blocker");
const locationDetails = document.querySelector(".location");
const allCheck = document.querySelector("#all");
const allIco = document.querySelector("#all--ico");
const agreementCheck = document.querySelector("#agreement");
const agreementIco = document.querySelector("#agreement--ico");
const privateCheck = document.querySelector("#private");
const privateIco = document.querySelector("#private--ico");
const locationCheck = document.querySelector("#location");
const locationIco = document.querySelector("#location--ico");
const smsCheck = document.querySelector("#sms");
const smsIco = document.querySelector("#sms--ico");
const emailCheck = document.querySelector("#email");
const emailIco = document.querySelector("#email--ico");
const checkList = document.querySelectorAll("[rel=js-check]");

scrollBtn.addEventListener("click", () => {
	window.scrollTo({ top: 0, behavior: "smooth" });
});

function pwRules() {
	const pwWrite = document.querySelector("#pw__write").value;
	const patternHard = /^(?=.*\d)(?=.*[a-zA-Z])[A-Za-z\d`~!@#$%^&*+=-]$/;
    const write__message = document.querySelector(".write__message");
    const write__message1 = document.querySelector(".write__message1");
    const write__message2 = document.querySelector(".write__message2");
	if (pwWrite != "") {
		//문자 길이 10줄 이상
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
		} else {2
		    write__message2.style.display = "block";
		    write__message2.innerHTML = `<span>✓ 동일한 문자 3개이상 연속 사용 불가</span>`;
		    write__message2.style.color = "#0f851a";
		    write__message2.style.fontSize = "12px";
		}
	} else {
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
	const checkMessage = document.querySelector(".check__message");
	if (pwWrite != "" || pwCheck != "") {
		if (pwWrite != pwCheck) {
			checkMessage.style.display = "block";
			checkMessage.innerHTML = `☓ 비밀번호가 일치하지 않습니다.`;
			checkMessage.style.color = "#b3130b";
			checkMessage.style.fontSize = "12px";
		} else {
			checkMessage.innerHTML = `✓ 비밀번호가 일치합니다.`;
			checkMessage.style.color = "#0f851a";
			checkMessage.style.fontSize = "12px";
		}
	} else {
		checkMessage.innerHTML = `！비밀번호를 입력해주세요.`;
		checkMessage.style.color = "#b3130b";
		checkMessage.style.fontSize = "12px";
	}
}

function argeementActive() {
	agreementBlocker.classList.add("active");
	agreeDetails.classList.add("active");
}

function argeementActiveRemove() {
	agreementBlocker.classList.remove("active");
	agreeDetails.classList.remove("active");
}

function privateActive() {
	privateBlocker.classList.add("active");
	privateDetails.classList.add("active");
}

function privateActiveRemove() {
	privateBlocker.classList.remove("active");
	privateDetails.classList.remove("active");
}

function locationActive() {
	locationBlocker.classList.add("active");
	locationDetails.classList.add("active");
}

function locationActiveRemove() {
	locationBlocker.classList.remove("active");
	locationDetails.classList.remove("active");
}

function allFunction() {
	for (i = 0; i < checkList.length; i++) {
		checkList[i].checked = true;
	}
}

function selfFunction() {
	allIco.classList.toggle("checked");
}

function test() {
	if (allCheck.checked == true) {
        allFunction();
	} else {}
	// if (agreementCheck.checked == true) {
	// 	agreementFunction();
	// }
	// if (privateCheck.checked == true) {
	// 	privateFunction();
	// }
	// if (smsCheck.checked == true) {
	// 	smsFunction();
	// }
	// if (locationCheck.checked == true) {
	// 	locationFunction();
	// }
	// if (emailCheck.checked == true) {
	// 	emailFunction();
	// }
}

function agreementFunction() {
	agreementIco.classList.toggle("checked");
	event.preventDefault();
}

function privateFunction() {
	privateIco.classList.toggle("checked");
	event.preventDefault();
}

function smsFunction() {
	smsIco.classList.toggle("checked");
	event.preventDefault();
}

function locationFunction() {
	locationIco.classList.toggle("checked");
	event.preventDefault();
}

function emailFunction() {
	emailIco.classList.toggle("checked");
	event.preventDefault();
}

function sample6_execDaumPostcode() {
	new daum.Postcode({
		oncomplete: function (data) {
			// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

			// 각 주소의 노출 규칙에 따라 주소를 조합한다.
			// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
			var addr = ""; // 주소 변수
			var extraAddr = ""; // 참고항목 변수

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
			document.getElementById("sample6_address").value = addr;
			// 커서를 상세주소 필드로 이동한다.
			document.getElementById("sample6_detailAddress").focus();
		},
	}).open();
}
