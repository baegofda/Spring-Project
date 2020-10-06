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

const imageInput1 = document.querySelector(".image-1");
const imageContainer1 = document.querySelector(".button-1");
const imageInput2 = document.querySelector(".image-2");
const imageContainer2 = document.querySelector(".button-2");
const imageInput3 = document.querySelector(".image-3");
const imageContainer3 = document.querySelector(".button-3");
const imageInput4 = document.querySelector(".image-4");
const imageContainer4 = document.querySelector(".button-4");
const imageInput5 = document.querySelector(".image-5");
const imageContainer5 = document.querySelector(".button-5");

const sweetBarContainer = document.querySelector(".sweet-cotainer");

const PicksBtn = document.querySelector(".picks-container");
const PicksIco = document.querySelector(".picks-ico");

const listBtn = document.querySelector(".list--btn");

const noticeWriteSubmit = document.querySelector(".notice-board-write__submit");
const blackListWriteSubmit = document.querySelector(
    ".black-list-board-write__submit"
);
const badReviewWriteSubmit = document.querySelector(
    ".bad-review-board-write__submit"
);

const saleWriteSubmit = document.querySelector(".sale-board-write__submit");
const sharingWriteSubmit = document.querySelector(
    ".sharing-board-write__submit"
);

const noticeUpdateSubmit = document.querySelector(
    ".notice-board-update__submit"
);
const blackListUpdateSubmit = document.querySelector(
    ".black-list-board-update__submit"
);
const badReviewUpdateSubmit = document.querySelector(
    ".bad-review-board-update__submit"
);
const saleUpdateSubmit = document.querySelector(".sale-board-update__submit");
const sharingUpdateSubmit = document.querySelector(
    ".sharing-board-update__submit"
);
const buyUpdateSubmit = document.querySelector(".buy-board-update__submit");

const noticeReadDelete = document.querySelector(".notice-board-read__delete");
const blackListReadDelete = document.querySelector(
    ".black-list-board-read__delete"
);
const badReviewReadDelete = document.querySelector(
    ".bad-review-board-read__delete"
);
const saleReadDelete = document.querySelector(".sale-board-read__delete");
const sharingReadDelete = document.querySelector(".sharing-board-read__delete");
const buyReadDelete = document.querySelector(".buy-board-read__delete");

const noticeReadUpdate = document.querySelector(".notice-board-read__update");
const blackListReadUpdate = document.querySelector(".black-list-read__update");
const badReviewReadUpdate = document.querySelector(".bad-review-read__update");
const saleReadUpdate = document.querySelector(".sale-board-read__update");
const sharingReadUpdate = document.querySelector(".sharing-board-read__update");
const buyReadUpdate = document.querySelector(".buy-board-read__update");


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

// 작업시 넘어갈 링크는 잘 체크하셔서 알맞게 수정 부탁드립니다
if (findPwResetLogin != null) {
    findPwResetLogin.addEventListener("click", () => {
        location.href = "login.html";
    });
}

if (findPwResetMain != null) {
    findPwResetMain.addEventListener("click", () => {
        location.href = "../main/main.html";
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
            location.href = "../main/main.html";
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
            location.href = "../main/main.html";
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
            location.href = "../main/main.html";
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
            location.href = "../main/main.html";
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
            location.href = "../main/main.html";
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
if (imageInput1 != null) {
    imageInput1.addEventListener("change", () => {
        imageThumbnail1();
    });
}
if (imageInput2 != null) {
    imageInput2.addEventListener("change", () => {
        imageThumbnail2();
    });
}
if (imageInput3 != null) {
    imageInput3.addEventListener("change", () => {
        imageThumbnail3();
    });
}
if (imageInput4 != null) {
    imageInput4.addEventListener("change", () => {
        imageThumbnail4();
    });
}
if (imageInput5 != null) {
    imageInput5.addEventListener("change", () => {
        imageThumbnail5();
    });
}

if (listBtn != null) {
    listBtn.addEventListener("click", () => {
        if (confirm("되돌아가시겠어요 ?") == true) {
            history.go(-1);
        } else {
            return false;
        }
    });
}

if (noticeWriteSubmit != null) {
    noticeWriteSubmit.addEventListener("click", () => {
        if (confirm("글을 등록할까요 ?") == true) {
            if (true) {
                // 주석해제 후 formname에 값 전달을 위한 form태그의 name을 적어주세요
                document.writrForm.submit();
                alert("등록완료 ! 감사합니다.");
                location.href = "noticeBoard.html";
            } else {
                alert("등록실패 ! 작성하신 글을 확인해주세요.");
            }
        } else {
            return false;
        }
    });
}

if (blackListWriteSubmit != null) {
    blackListWriteSubmit.addEventListener("click", () => {
        if (confirm("글을 등록할까요 ?") == true) {
            if (true) {
                // 주석해제 후 formname에 값 전달을 위한 form태그의 name을 적어주세요
                // document.formname.submit();
                alert("등록완료 ! 감사합니다.");
                location.href = "blackListBoard.html";
            } else {
                alert("등록실패 ! 작성하신 글을 확인해주세요.");
            }
        } else {
            return false;
        }
    });
}

if (badReviewWriteSubmit != null) {
    badReviewWriteSubmit.addEventListener("click", () => {
        if (confirm("글을 등록할까요 ?") == true) {
            if (true) {
                // 주석해제 후 formname에 값 전달을 위한 form태그의 name을 적어주세요
                // document.formname.submit();
                alert("등록완료 ! 감사합니다.");
                location.href = "badReviewBoard.html";
            } else {
                alert("등록실패 ! 작성하신 글을 확인해주세요.");
            }
        } else {
            return false;
        }
    });
}

if (saleWriteSubmit != null) {
    saleWriteSubmit.addEventListener("click", () => {
        if (confirm("글을 등록할까요 ?") == true) {
            if (true) {
                // 주석해제 후 formname에 값 전달을 위한 form태그의 name을 적어주세요
                // document.formname.submit();
                alert("등록완료 ! 감사합니다.");
                location.href = "toSaleBoard.html";
            } else {
                alert("등록실패 ! 작성하신 글을 확인해주세요.");
            }
        } else {
            return false;
        }
    });
}

if (sharingWriteSubmit != null) {
    sharingWriteSubmit.addEventListener("click", () => {
        if (confirm("글을 등록할까요 ?") == true) {
            if (true) {
                // 주석해제 후 formname에 값 전달을 위한 form태그의 name을 적어주세요
                // document.formname.submit();
                alert("등록완료 ! 감사합니다.");
                location.href = "toSharingBoard.html";
            } else {
                alert("등록실패 ! 작성하신 글을 확인해주세요.");
            }
        } else {
            return false;
        }
    });
}


if (noticeUpdateSubmit != null) {
    noticeUpdateSubmit.addEventListener("click", () => {
        if (confirm("글을 수정할까요 ?") == true) {
            if (true) {
                // 주석해제 후 formname에 값 전달을 위한 form태그의 name을 적어주세요
                // document.formname.submit();
                alert("수정완료 !");
                location.href = "noticeBoard.html";
            } else {
                alert("수정실패 ! 수정하신 글을 확인해주세요.");
            }
        } else {
            return false;
        }
    });
}

if (blackListUpdateSubmit != null) {
    blackListUpdateSubmit.addEventListener("click", () => {
        if (confirm("글을 수정할까요 ?") == true) {
            if (true) {
                // 주석해제 후 formname에 값 전달을 위한 form태그의 name을 적어주세요
                // document.formname.submit();
                alert("수정완료 !");
                location.href = "blackListBoard.html";
            } else {
                alert("수정실패 ! 수정하신 글을 확인해주세요.");
            }
        } else {
            return false;
        }
    });
}

if (badReviewUpdateSubmit != null) {
    badReviewUpdateSubmit.addEventListener("click", () => {
        if (confirm("글을 수정할까요 ?") == true) {
            if (true) {
                // 주석해제 후 formname에 값 전달을 위한 form태그의 name을 적어주세요
                // document.formname.submit();
                alert("수정완료 !");
                location.href = "badReviewBoard.html";
            } else {
                alert("수정실패 ! 수정하신 글을 확인해주세요.");
            }
        } else {
            return false;
        }
    });
}

if (saleUpdateSubmit != null) {
    saleUpdateSubmit.addEventListener("click", () => {
        if (confirm("글을 수정할까요 ?") == true) {
            if (true) {
                // 주석해제 후 formname에 값 전달을 위한 form태그의 name을 적어주세요
                // document.formname.submit();
                alert("수정완료 !");
                location.href = "toSaleBoard.html";
            } else {
                alert("수정실패 ! 수정하신 글을 확인해주세요.");
            }
        } else {
            return false;
        }
    });
}

if (sharingUpdateSubmit != null) {
    sharingUpdateSubmit.addEventListener("click", () => {
        if (confirm("글을 수정할까요 ?") == true) {
            if (true) {
                // 주석해제 후 formname에 값 전달을 위한 form태그의 name을 적어주세요
                // document.formname.submit();
                alert("수정완료 !");
                location.href = "toSharingBoard.html";
            } else {
                alert("수정실패 ! 수정하신 글을 확인해주세요.");
            }
        } else {
            return false;
        }
    });
}

/*if (buyUpdateSubmit != null) {
    buyUpdateSubmit.addEventListener("click", () => {
        if (confirm("글을 수정할까요 ?") == true) {
            if (true) {
                // 주석해제 후 formname에 값 전달을 위한 form태그의 name을 적어주세요
                // document.formname.submit();
                alert("수정완료 !");
                var pnum = document.getElementById("pnum").value;
                location.href = "buyPostUpdate.do?pnum="+pnum;
            } else {
                alert("수정실패 ! 수정하신 글을 확인해주세요.");
            }
        } else {
            return false;
        }
    });
}*/

if (noticeReadDelete != null) {
    noticeReadDelete.addEventListener("click", () => {
        if (confirm("삭제하시겠습니까 ?") == true) {
            if (true) {
                // 주석해제 후 formname에 값 전달을 위한 form태그의 name을 적어주세요
                // document.formname.submit();
                alert("삭제완료 !");
                location.href = "noticeBoard.html";
            } else {
                alert("삭제실패 !");
            }
        } else {
            return false;
        }
    });
}

if (blackListReadDelete != null) {
    blackListReadDelete.addEventListener("click", () => {
        if (confirm("삭제하시겠습니까 ?") == true) {
            if (true) {
                // 주석해제 후 formname에 값 전달을 위한 form태그의 name을 적어주세요
                // document.formname.submit();
                alert("삭제완료 !");
                location.href = "blackListBoard.html";
            } else {
                alert("삭제실패 !");
            }
        } else {
            return false;
        }
    });
}

if (badReviewReadDelete != null) {
    badReviewReadDelete.addEventListener("click", () => {
        if (confirm("삭제하시겠습니까 ?") == true) {
            if (true) {
                // 주석해제 후 formname에 값 전달을 위한 form태그의 name을 적어주세요
                // document.formname.submit();
                alert("삭제완료 !");
                location.href = "badReviewBoard.html";
            } else {
                alert("삭제실패 !");
            }
        } else {
            return false;
        }
    });
}

if (saleReadDelete != null) {
    saleReadDelete.addEventListener("click", () => {
        if (confirm("삭제하시겠습니까 ?") == true) {
            if (true) {
                // 주석해제 후 formname에 값 전달을 위한 form태그의 name을 적어주세요
                // document.formname.submit();
                alert("삭제완료 !");
                location.href = "toSaleBoard.html";
            } else {
                alert("삭제실패 !");
            }
        } else {
            return false;
        }
    });
}

if (sharingReadDelete != null) {
    sharingReadDelete.addEventListener("click", () => {
        if (confirm("삭제하시겠습니까 ?") == true) {
            if (true) {
                // 주석해제 후 formname에 값 전달을 위한 form태그의 name을 적어주세요
                // document.formname.submit();
                alert("삭제완료 !");
                location.href = "toSharingBoard.html";
            } else {
                alert("삭제실패 !");
            }
        } else {
            return false;
        }
    });
}

// 삭제 확인 버튼을 누르면 id가 pnum인 input(hidden)태그를 찾아 pnum값 받아 옴, 파라미터로 넘겨줌
if (buyReadDelete != null) {
    buyReadDelete.addEventListener("click", () => {
        if (confirm("삭제하시겠습니까 ?") == true) {
            if (true) {
            	var pnum = document.getElementById("pnum").value;
                location.href = "buyPostDelete.do?pnum="+pnum;
            } 
        } else {
            return false;
        }
    });
}

if (noticeReadUpdate != null) {
    noticeReadUpdate.addEventListener("click", () => {
        location.href = "noticeBoardUpdate.html";
    });
}

if (blackListReadUpdate != null) {
    blackListReadUpdate.addEventListener("click", () => {
        location.href = "blackListBoardUpdate.html";
    });
}

if (badReviewReadUpdate != null) {
    badReviewReadUpdate.addEventListener("click", () => {
        location.href = "badReviewBoardUpdate.html";
    });
}

if (saleReadUpdate != null) {
    saleReadUpdate.addEventListener("click", () => {
        location.href = "toSaleBoardUpdate.html";
    });
}

if (sharingReadUpdate != null) {
    sharingReadUpdate.addEventListener("click", () => {
        location.href = "toSharingBoardUpdate.html";
    });
}

if (buyReadUpdate != null) {
    buyReadUpdate.addEventListener("click", () => {
    	var pnum = document.getElementById("pnum").value;
        location.href = "buyPostUpdateForm.do?pnum="+pnum;
    });
}

if (PicksBtn != null) {
    PicksBtn.addEventListener("click", () => {
        if (PicksBtn.classList.contains("click")) {
            PicksBtn.classList.remove("click");
            PicksIco.setAttribute(
                "src",
                "data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHg9IjBweCIgeT0iMHB4Igp3aWR0aD0iMjYiIGhlaWdodD0iMjYiCnZpZXdCb3g9IjAgMCAxNzIgMTcyIgpzdHlsZT0iIGZpbGw6IzAwMDAwMDsiPjxnIHRyYW5zZm9ybT0iIj48ZyBmaWxsPSJub25lIiBmaWxsLXJ1bGU9Im5vbnplcm8iIHN0cm9rZT0ibm9uZSIgc3Ryb2tlLXdpZHRoPSIxIiBzdHJva2UtbGluZWNhcD0iYnV0dCIgc3Ryb2tlLWxpbmVqb2luPSJtaXRlciIgc3Ryb2tlLW1pdGVybGltaXQ9IjEwIiBzdHJva2UtZGFzaGFycmF5PSIiIHN0cm9rZS1kYXNob2Zmc2V0PSIwIiBmb250LWZhbWlseT0ibm9uZSIgZm9udC13ZWlnaHQ9Im5vbmUiIGZvbnQtc2l6ZT0ibm9uZSIgdGV4dC1hbmNob3I9Im5vbmUiIHN0eWxlPSJtaXgtYmxlbmQtbW9kZTogbm9ybWFsIj48cGF0aCBkPSJNMCwxNzJ2LTE3MmgxNzJ2MTcyeiIgZmlsbD0ibm9uZSI+PC9wYXRoPjxnIGZpbGw9IiMwMDAwMDAiPjxwYXRoIGQ9Ik01MS4wNjI1LDI2Ljg3NWMtMjIuMjM0ODYsMCAtNDAuMzEyNSwxOC4yODc2IC00MC4zMTI1LDQwLjMxMjVjMCw3LjY4NDU3IDMuNDg1MzUsMTQuMzQwMzMgNi43MTg3NSwxOS4xNDg0NGMzLjIzMzQsNC44MDgxIDYuNTUwNzgsNy44OTQ1MyA2LjU1MDc4LDcuODk0NTNsNTguMTE3MTksNTguMjg1MTZsMy44NjMyOCwzLjg2MzI4bDMuODYzMjgsLTMuODYzMjhsNTguMTE3MTksLTU4LjI4NTE2YzAsMCAxMy4yNjk1MywtMTEuNjk0ODIgMTMuMjY5NTMsLTI3LjA0Mjk3YzAsLTIyLjAyNDkgLTE4LjA3NzY0LC00MC4zMTI1IC00MC4zMTI1LC00MC4zMTI1Yy0xOC40NTU1NywwIC0zMC4zMzkzNSwxMS4xMDY5MyAtMzQuOTM3NSwxNS43ODkwNmMtNC41OTgxNSwtNC42ODIxMyAtMTYuNDgxOTMsLTE1Ljc4OTA2IC0zNC45Mzc1LC0xNS43ODkwNnpNNTEuMDYyNSwzNy42MjVjMTYuMDYyMDEsMCAzMC45MDYyNSwxNS42MjEwOSAzMC45MDYyNSwxNS42MjEwOWw0LjAzMTI1LDQuNTM1MTZsNC4wMzEyNSwtNC41MzUxNmMwLDAgMTQuODQ0MjQsLTE1LjYyMTA5IDMwLjkwNjI1LC0xNS42MjEwOWMxNi4zNTU5NiwwIDI5LjU2MjUsMTMuNDE2NTEgMjkuNTYyNSwyOS41NjI1YzAsOC4yOTM0NiAtMTAuMDc4MTIsMTkuNDg0MzggLTEwLjA3ODEyLDE5LjQ4NDM4bC01NC40MjE4Nyw1NC40MjE4OGwtNTQuNDIxODcsLTU0LjQyMTg3YzAsMCAtMi42MDM1MiwtMi40OTg1NCAtNS4yMDcwMywtNi4zODI4MWMtMi42MDM1MiwtMy44ODQyOCAtNC44NzEwOSwtOC45NDQzMyAtNC44NzEwOSwtMTMuMTAxNTZjMCwtMTYuMTQ1OTkgMTMuMjA2NTQsLTI5LjU2MjUgMjkuNTYyNSwtMjkuNTYyNXoiPjwvcGF0aD48L2c+PC9nPjwvZz48L3N2Zz4="
            );
        } else {
            PicksBtn.classList.add("click");
            PicksIco.setAttribute(
                "src",
                "data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHg9IjBweCIgeT0iMHB4Igp3aWR0aD0iMjYiIGhlaWdodD0iMjYiCnZpZXdCb3g9IjAgMCAxNzIgMTcyIgpzdHlsZT0iIGZpbGw6IzAwMDAwMDsiPjxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0ibm9uemVybyIgc3Ryb2tlPSJub25lIiBzdHJva2Utd2lkdGg9IjEiIHN0cm9rZS1saW5lY2FwPSJidXR0IiBzdHJva2UtbGluZWpvaW49Im1pdGVyIiBzdHJva2UtbWl0ZXJsaW1pdD0iMTAiIHN0cm9rZS1kYXNoYXJyYXk9IiIgc3Ryb2tlLWRhc2hvZmZzZXQ9IjAiIGZvbnQtZmFtaWx5PSJub25lIiBmb250LXdlaWdodD0ibm9uZSIgZm9udC1zaXplPSJub25lIiB0ZXh0LWFuY2hvcj0ibm9uZSIgc3R5bGU9Im1peC1ibGVuZC1tb2RlOiBub3JtYWwiPjxwYXRoIGQ9Ik0wLDE3MnYtMTcyaDE3MnYxNzJ6IiBmaWxsPSJub25lIj48L3BhdGg+PHBhdGggZD0iTTg2LDE3MmMtNDcuNDk2NDksMCAtODYsLTM4LjUwMzUxIC04NiwtODZ2MGMwLC00Ny40OTY0OSAzOC41MDM1MSwtODYgODYsLTg2djBjNDcuNDk2NDksMCA4NiwzOC41MDM1MSA4Niw4NnYwYzAsNDcuNDk2NDkgLTM4LjUwMzUxLDg2IC04Niw4NnoiIGZpbGw9Im5vbmUiPjwvcGF0aD48cGF0aCBkPSJNODYsMTY4LjU2Yy00NS41OTY2MywwIC04Mi41NiwtMzYuOTYzMzcgLTgyLjU2LC04Mi41NnYwYzAsLTQ1LjU5NjYzIDM2Ljk2MzM3LC04Mi41NiA4Mi41NiwtODIuNTZ2MGM0NS41OTY2MywwIDgyLjU2LDM2Ljk2MzM3IDgyLjU2LDgyLjU2djBjMCw0NS41OTY2MyAtMzYuOTYzMzcsODIuNTYgLTgyLjU2LDgyLjU2eiIgZmlsbD0ibm9uZSI+PC9wYXRoPjxnIGZpbGw9IiNmZjM4NWMiPjxwYXRoIGQ9Ik0xMTguMjUsMjEuNWMtMjAuNzQ3NSwwIC0zMi4yNSwxNC45NzgzMyAtMzIuMjUsMTQuOTc4MzNjMCwwIC0xMS41MDI1LC0xNC45NzgzMyAtMzIuMjUsLTE0Ljk3ODMzYy0yMS43NzIzMywwIC0zOS40MTY2NywxNy42NDQzMyAtMzkuNDE2NjcsMzkuNDE2NjdjMCwyOS44OTIxNyAzNS4yMDI2Nyw1OC44NTk4MyA0NS4wMTM4Myw2OC4wMTE2N2MxMS4zMDE4MywxMC41MzUgMjYuNjUyODMsMjQuMDggMjYuNjUyODMsMjQuMDhjMCwwIDE1LjM1MSwtMTMuNTQ1IDI2LjY1MjgzLC0yNC4wOGM5LjgxMTE3LC05LjE1MTgzIDQ1LjAxMzgzLC0zOC4xMTk1IDQ1LjAxMzgzLC02OC4wMTE2N2MwLC0yMS43NzIzMyAtMTcuNjQ0MzMsLTM5LjQxNjY3IC0zOS40MTY2NywtMzkuNDE2Njd6Ij48L3BhdGg+PC9nPjwvZz48L3N2Zz4="
            );
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

//주소검색
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
//주소검색

// buyUpdateForm에서 del-btn을 누르면 기존 이미지 삭제
const delbtn1 = document.querySelector(".del-btn1");
const delbtn2 = document.querySelector(".del-btn2");
const delbtn3 = document.querySelector(".del-btn3");
const delbtn4 = document.querySelector(".del-btn4");
const delbtn5 = document.querySelector(".del-btn5");

if(delbtn1 != null){
	delbtn1.addEventListener("click", () => {
		delBtn1();
	});
}

if(delbtn2 != null){
	delbtn2.addEventListener("click", () => {
	    delBtn2();
	});
}

if(delbtn3 != null){
	delbtn3.addEventListener("click", () => {
		delBtn3();
	});
}

if(delbtn4 != null){
	delbtn4.addEventListener("click", () => {
	    delBtn4();
	});
}

if(delbtn5 != null){
	delbtn5.addEventListener("click", () => {
	    delBtn5();
	});
}


// x버튼을 누르면 첨부파일 삭제
function delBtn1() {
	var img = document.querySelector(".update-image1");
	var delbtn = document.querySelector(".del-btn1");
    img.remove();
    delbtn.remove();
}

function delBtn2() {
	var img = document.querySelector(".update-image2");
	var delbtn = document.querySelector(".del-btn2");
    imageInput2.value = "";
    img.remove();
    delbtn.remove();
}

function delBtn3() {
	var img = document.querySelector(".update-image3");
	var delbtn = document.querySelector(".del-btn3");
    imageInput3.value = "";
    img.remove();
    delbtn.remove();

}

function delBtn4() {
	var img = document.querySelector(".update-image4");
	var delbtn = document.querySelector(".del-btn4");
    imageInput4.value = "";
    img.remove();
    delbtn.remove();
}

function delBtn5() {
	var img = document.querySelector(".update-image5");
	var delbtn = document.querySelector(".del-btn5");
    imageInput5.value = "";
    img.remove();
    delbtn.remove();
}

//파일첨부
function imageThumbnail1() {
    for (var image of event.target.files) {
        var reader = new FileReader();
        while (imageContainer1.firstChild) {
            imageContainer1.removeChild(imageContainer1.firstChild);
        }
        reader.onload = function (event) {
            var img = document.createElement("img");
            var btn = document.createElement("div");
            var result1 = event.target.result;
            btn.setAttribute("class", "del-btn");
            img.setAttribute("src", result1);
            imageContainer1.appendChild(img);
            imageContainer1.appendChild(btn);

            btn.addEventListener("click", (event) => {
                imageInput1.value = "";
                img.remove();
                btn.remove();
            });
        };
        reader.readAsDataURL(image);
    }
}

function imageThumbnail2() {
    for (var image of event.target.files) {
        var reader = new FileReader();
        while (imageContainer2.firstChild) {
            imageContainer2.removeChild(imageContainer2.firstChild);
        }
        reader.onload = function (event) {
            var img = document.createElement("img");
            var btn = document.createElement("div");
            var result1 = event.target.result;
            /*btn.setAttribute("class", "del-btn");
            img.setAttribute("src", result1);
            imageContainer2.appendChild(img);
            imageContainer2.appendChild(btn);*/
            imageContainer1.innerHTML = ` <img
                src="${result1}"
                alt="이미지1"
             />
             <div class="del-btn"></div>`

            btn.addEventListener("click", (event) => {
                imageInput2.value = "";
                img.remove();
                btn.remove();
            });
        };
        reader.readAsDataURL(image);
    }
}

function imageThumbnail3() {
    for (var image of event.target.files) {
        var reader = new FileReader();
        while (imageContainer3.firstChild) {
            imageContainer3.removeChild(imageContainer3.firstChild);
        }
        reader.onload = function (event) {
            var img = document.createElement("img");
            var btn = document.createElement("div");
            var result1 = event.target.result;
            btn.setAttribute("class", "del-btn");
            img.setAttribute("src", result1);
            imageContainer3.appendChild(img);
            imageContainer3.appendChild(btn);

            btn.addEventListener("click", (event) => {
                imageInput3.value = "";
                img.remove();
                btn.remove();
            });
        };
        reader.readAsDataURL(image);
    }
}

function imageThumbnail4() {
    for (var image of event.target.files) {
        var reader = new FileReader();
        while (imageContainer4.firstChild) {
            imageContainer4.removeChild(imageContainer4.firstChild);
        }
        reader.onload = function (event) {
            var img = document.createElement("img");
            var btn = document.createElement("div");
            var result1 = event.target.result;
            btn.setAttribute("class", "del-btn");
            img.setAttribute("src", result1);
            imageContainer4.appendChild(img);
            imageContainer4.appendChild(btn);

            btn.addEventListener("click", (event) => {
                imageInput4.value = "";
                img.remove();
                btn.remove();
            });
        };
        reader.readAsDataURL(image);
    }
}
function imageThumbnail5() {
    for (var image of event.target.files) {
        var reader = new FileReader();
        while (imageContainer5.firstChild) {
            imageContainer5.removeChild(imageContainer5.firstChild);
        }
        reader.onload = function (event) {
            var img = document.createElement("img");
            var btn = document.createElement("div");
            var result1 = event.target.result;
            btn.setAttribute("class", "del-btn");
            img.setAttribute("src", result1);
            imageContainer5.appendChild(img);
            imageContainer5.appendChild(btn);

            btn.addEventListener("click", (event) => {
                imageInput5.value = "";
                img.remove();
                btn.remove();
            });
        };
        reader.readAsDataURL(image);
    }
}
// 파일첨부

// 슬라이드
const showing_class = "showing";
const firstslide = document.querySelector(".slide:nth-child(1)");
const lastslide = document.querySelector(".slide:nth-child(5)");
const left_btn = document.querySelector(".left");

function right_move() {
    const currentslide = document.querySelector(".showing");
    if (currentslide) {
        const nextslide = currentslide.nextElementSibling;
        currentslide.classList.remove(showing_class);
        if (nextslide != left_btn) {
            nextslide.classList.add(showing_class);
        } else {
            firstslide.classList.add(showing_class);
        }
    }
}

function left_move() {
    const currentslide = document.querySelector(".showing");
    if (currentslide) {
        const prevslide = currentslide.previousElementSibling;
        currentslide.classList.remove(showing_class);
        if (prevslide) {
            prevslide.classList.add(showing_class);
        } else {
            lastslide.classList.add(showing_class);
        }
    }
}
//

// 당도측정
if (sweetBarContainer != null) {
    document.ready = meterHandeler();

    function meterHandeler() {
        let sweetB = 70;
        if (sweetB != 0) {
            if (sweetB < 33) {
                sweetBarContainer.classList.add("red");
                sweetBarContainer.innerHTML = `<p class="sweet-bar--text">${sweetB}%</p>
 <i class="fas fa-carrot"></i>
<meter
 min="0" max="100"
 low="33" high="66" optimum="80"
 value="${sweetB}">
</meter>`;
            } else if (sweetB != 66 && 33 <= sweetB && sweetB < 66) {
                sweetBarContainer.classList.add("orange");
                sweetBarContainer.innerHTML = `<p class="sweet-bar--text">${sweetB}%</p>
<i class="fas fa-carrot"></i>
<meter
 min="0" max="100"
 low="33" high="66" optimum="80"
 value="${sweetB}">
</meter>`;
            } else if (66 <= sweetB) {
                sweetBarContainer.classList.add("green");
                sweetBarContainer.innerHTML = `<p class="sweet-bar--text">${sweetB}%</p>
<i class="fas fa-carrot"></i>
<meter
 min="0" max="100"
 low="33" high="66" optimum="80"
 value="${sweetB}">
</meter>`;
            }
        } else {
            sweetBarContainer.innerHTML = `<p class="sweet-bar--text">거래량이 부족해요 ! </p>
<i class="fas fa-carrot"></i>
<meter
 min="0" max="100"
 low="34" high="66" optimum="80"
 value="${sweetB}">
</meter>`;
        }
    }
}
//
