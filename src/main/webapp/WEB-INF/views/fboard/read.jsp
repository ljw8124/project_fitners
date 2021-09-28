<%--
  Created by IntelliJ IDEA.
  User: ljw81
  Date: 2021-09-27
  Time: 오후 12:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Read</title>
</head>
<body>


<form id="fboardRead">
    <div>
        <div>
            <label for="fboardBno">BNO</label>
            <input type="text" name="bno" value="<c:out value="${boardDTO.bno}"/>" id="fboardBno" readonly>
        </div>
        <div>
            <label for="fboardTitle">Title</label>
            <input type="text" name="title" placeholder="enter title" value="<c:out value="${boardDTO.title}"/>"
                   id="fboardTitle" readonly>
        </div>
        <div>
            <label for="fboardWriter">Writer</label>
            <input type="text" name="writer" placeholder="enter writer" value="<c:out value="${boardDTO.writer}"/>"
                   id="fboardWriter" readonly>
        </div>
        <div>
            <label for="fboardContent">Content</label>
            <textarea rows="3" name="content"
                      id="fboardContent" readonly><c:out value="${boardDTO.content}"></c:out></textarea>
        </div>

        <button type="button" class="toListBtn">목록</button>
        <button type="button" class="toModifyBtn">수정/삭제</button>
    </div>

    <div>
        <c:forEach items="${boardDTO.files}" var="attach">
            <div>
                <c:if test="${attach.image}">
                    <img src="/viewFile?file=${attach.getThumbnail()}" onclick="javacript:showOrigin('${attach.getFileLink()}')">
                </c:if>
                    ${attach.fileName}
            </div>
        </c:forEach>
    </div>

    <hr>
    <h3>replies</h3>
    <div>
        <button type="button" class="addReplyBtn">Add reply</button>
        <div class="repliesList">

        </div>
    </div>

    <hr>


</form>

<form id="actionForm" action="/fboard/list" method="get">
    <input type="hidden" name="page" value="${pageRequestDTO.page}">
    <input type="hidden" name="size" value="${pageRequestDTO.size}">
</form>

</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<script src="/resources/dist/js/reply.js"></script>

<!-- 목록/수정/삭제 이동 -->
<script>

    const HiddenForm = document.querySelector("#actionForm");

    document.querySelector(".toListBtn").addEventListener("click", () => {
        HiddenForm.submit()
    }, false)

    document.querySelector(".toModifyBtn").addEventListener("click", () => {

        const bno = '${boardDTO.bno}';

        HiddenForm.setAttribute("action", "/fboard/modify")
        HiddenForm.innerHTML += `<input type='hidden' name='bno' value='\${bno}'>`
        HiddenForm.submit()
    })

</script>

<!-- 댓글목록 -->
<script>
    function getRepliesList() {
        const target = document.querySelector(".repliesList")
        const bno = '${boardDTO.bno}'
        console.log(bno)

        function convertReplyList(replyObj) {
            console.log(replyObj)

            const {rno, bno, reply, replyer, regDate, modDate} = {...replyObj}

            const replyList = `<div class="fboard-reply">
               <div>
                  <span>\${rno} -- \${replyer}</span>
                  <span>\${regDate}</span>
               </div>
               <div data-rno='\${rno}' data-replyer='\${replyer}'>
                  \${reply}
               </div>
            </div>`
            return replyList
        }

        getReplyList(bno).then(data => {
            console.log(data)
            let str = "";
            data.forEach(reply => {
                str += convertReplyList(reply)
            })
            target.innerHTML = str;
        })
    }

    (function () {
        getRepliesList()
    })()

</script>

<!-- 원본파일보기 -->
<%--<script>
    //모달 필요
    const modalImage = new bootstrap.Modal(document.querySelector('#modal-image'))

    function showOrigin(fileLink){

        document.querySelector("#targetImage").src = `/viewFile?file=\${fileLink}`
        modalImage.show()

    }
</script>--%>

</html>
