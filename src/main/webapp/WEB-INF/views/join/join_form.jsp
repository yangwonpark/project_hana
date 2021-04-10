<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<style>
        .modal {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .modal_overlay {
        
            background-color: rgba(0, 0, 0, 0.5);       
            width: 100%;
            height: 100%;
            position: absolute;
        }
        .modal_content {
            background-color: white;
            padding: 50px 100px;
            text-align: center;
            position: relative;
            border-radius: 10px;
            min-width: 400px;
            width: 700%;
            max-width: 700px;
            z-index: 0;
        }

        .hidden {
            display: none;
        }
</style>


<main>
	<div style="display:block; width:30%; margin:0px auto; margin-top: 70px; text-align:center">
        <form method="POST">     	
        <table style="border-spacing: 10px;">
            <tr>
                <td>*</td>
                <td>회원 ID</td>
                <td><input id="userid" type="text" name="userid" required/></td>
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
            <tr>
                <td>*</td>
                <td>비밀번호</td>
                <td><input id="userpw" type="password" name="userpw" required/></td>
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
            
            <tr>
                <td>*</td>
                <td>비번확인</td>
                <td><input id="userpw2" type="password" name="userpw2" required/></td>
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
            
            <tr>
                <td>*</td>
                <td>이 름</td>
                <td><input id="name" type="text" name="name" required /></td>
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
    
             <tr >
                <td>*</td>
                <td>전화번호</td>
                <td><input id="pnum" type="text" name="pnum"/></td>
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
            
            <tr >
                <td>*</td>
                <td>생년월일</td>
                <td><input type="date" name="birth_date" required /></td>
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
            
            
            <tr>
                <td>*</td>
                <td>성 별</td>
                <td>남 성<input type="radio" name="gender" value="0" required/>&nbsp;&nbsp;
                	여 성<input type="radio" name="gender" value="1" required/>
                </td>
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
            <tr>
                <td>*</td>
                <td>국 가</td>
                <td>내국인<input type="radio" name="foreign" value="0" required/>&nbsp;&nbsp;
                	외국인<input type="radio" name="foreign" value="1" required/>
                </td>
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
            
            <tr>
                <td>*</td>
                <td>유지기간</td>
                <td>1년<input type="radio" name="expiry_date" value="1" required/>
                	2년<input type="radio" name="expiry_date" value="2" required/>
                	3년<input type="radio" name="expiry_date" value="3" required/>
                	
                	
                </td>
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
            
            <tr>
                <td>*</td>
                <td>문자수신</td>
                <td>Yes<input type="radio" name="agree_sms" value="1" required/>&nbsp;&nbsp;
                	No<input type="radio" name="agree_sms" value="0" required/>
                </td>
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
            
           <tr>
                <td>*</td>
                <td>이메일수신</td>
                <td>Yes<input type="radio" name="agree_email" value="1" required/>&nbsp;&nbsp;
                	No<input type="radio" name="agree_email" value="0" required/>
                </td>
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
            
            <tr>
                <td>*</td>
                <td>우편수신</td>
                <td>Yes<input type="radio" name="agree_post" value="1" required/>&nbsp;&nbsp;
                	No<input type="radio" name="agree_post" value="0" required/>
                </td>
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
            
            
            <tr>
                <td>*</td>
                <td>전화수신</td>
                <td>Yes<input type="radio" name="agree_pnum" value="1" required/>&nbsp;&nbsp;
                	No<input type="radio" name="agree_pnum" value="0" required/>
                </td>
            </tr>
            <tr><td colspan="3"><hr /></td></tr>
            <tr><td> <input type="hidden" name="userkind" value="0"/></td>
            </tr>
          
            <tr><td> <input id="use" type="checkbox">회원 약관 동의 화면

            	</td>
            </tr>
    
            <tr>
           		<td colspan="3">
           			 <input style="border-radius: 20px; font-size: 20px;border:none; height: 30px;width: 400px; color: white; background-color: #4DABF7; outline: none;" type="submit" value="회원가입">
          		</td>
            </tr>        
       </table>
       </form>  
	</div>
	
	<div class="modal hidden">
		<div class="modal_overlay">
		</div>
		<div class="modal_content">
			<div>
			
				<table width="100%" cellpadding="4" cellspacing="0" bgcolor="#4DABF7">
       				<tr> 
            			<td height="40"> &nbsp; <b>회원가입약관</b></td>
					</tr>
					<tr> 
						<td align="center" valign="top"><textarea style="width: 98%" rows=7 readonly class=ed>[이용약관]

제 1 장 총칙

제 1 조 (목적)

본 약관은 1조프로젝트(하나)가 제공하는 컨텐츠와 서비스를 회원이 이용함에 있어 이용조건 및 절차에 관한 사항과 기타 필요한 사항을 규정함을 목적으로 합니다.

제 2 조 (약관의 효력 및 변경)

① 이 약관은 서비스를 통하여 이를 공지하거나 전자우편, 기타의 방법으로 회원에게 통지함으로써 효력을 발생합니다.
② 1조프로젝트(하나)는 이 약관의 내용을 변경할 수 있으며, 변경된 약관은 제1항과 같은 방법으로 공지 또는 통지함으로써 효력을 발생합니다.

제 3 조 (약관 이외의 준칙)

이 약관에 언급되지 않은 사항이 전기통신기본법, 전기통신사업법, 기타 관련법령에 규정되어 있는 경우 그 규정에 따라 적용할 수 있습니다.

제 4 조 (용어의 정의)

이 약관에서 사용하는 용어의 정의는 다음과 같습니다.
① 회원 : 서비스를 제공 받기 위하여 1조프로젝트(하나)와 이용계약을 체결하거나 이용자 아이디(ID)를 부여 받은 자를 말합니다.
② 아이디(ID) : 회원의 식별과 서비스를 이용을 위하여 회원이 정하고 1조프로젝트(하나)가 승인하는 문자와 숫자의 조합을 말합니다.
③ 비밀번호 : 회원이 부여 받은 아이디(ID)와 일치된 회원임을 확인하고 회원 자신의 비밀을 보호하기 위하여 회원이 정한 문자와 숫자의 조합을 말합니다.
④ 해지 : 1조프로젝트(하나) 또는 회원이 서비스를 개통 후 이용계약을 해약 하는 것을 말합니다.


제 2 장 서비스 이용계약 

제 5 조 (이용계약의 성립)

① "이용약관에 동의하십니까?" 라는 이용신청 시의 물음에 회원이 "동의" 버튼을 클릭하면 이 약관에 동의하는 것으로 간주됩니다.
② 이용계약은 서비스 이용희망자의 이용약관 동의 후 신청에 대하여 1조프로젝트(하나)가 승낙함으로써 성립합니다.

제 6 조 (이용신청)

① 본 서비스를 이용하기 위해서는 1조프로젝트(하나) 소정의 가입신청 양식에서 요구하는 모든 이용자 정보를 기록하여 신청합니다.
② 가입신청 양식에 기재하는 모든 이용자 정보는 모두 실제 데이터인 것으로 간주됩니다. 설명이나 실제 정보를 입력하지 않은 사용자는 법적인 보호를 받을 수 없으며 서비스의 제한을 받을 수 있습니다.


제 7 조 (이용신청의 승낙)

① 1조프로젝트(하나)는 제6조에 다른 이용 신청 고객에 대하여 제2호, 제3호의 경우를 예외로 하여 서비스 이용신청을 승낙합니다.
② 1조프로젝트(하나)는 다음에 해당하는 경우에 그 신청에 대한 승낙 제한사유가 해소될 때까지 승낙을 유보할 수 있습니다.
가. 서비스 관련 설비에 여유가 없는 경우
나. 기술상 지장이 있는 경우
다. 기타 1조프로젝트(하나)가 필요하다고 인정되는 경우
③ 1조프로젝트(하나)는 다음에 해당하는 경우에는 이를 승낙하지 아니 할 수 있습니다.
가. 다른 사람의 명의를 사용하여 신청한 경우
나. 이용신청 시 이용자정보를 허위로 기재하여 신청한 경우
다. 사회의 안녕질서 또는 미풍양속을 저해할 목적으로 신청한 경우
라. 기타 1조프로젝트(하나) 소정의 이용신청요건을 충족하지 못하는 경우

제 8 조 (이용자정보의 변경)

회원은 이용신청 시 기재한 이용자정보가 변경되었을 경우에는, 온라인으로 수정을 하여야 하며 미변경으로 인하여 발생되는 문제의 책임은 이용자에게 있습니다.

제 3 장 계약 당사자의 의무 

제 9 조 (1조프로젝트(하나)의 의무)

① 1조프로젝트(하나)는 서비스 제공과 관련하여 취득한 회원의 개인정보를 본인의 사전 승낙 없이 타인에게 공개 또는 배포할 수 없습니다.
단, 다음 각 호의 1에 해당하는 경우는 예외입니다.
가. 전기통신기본법 등 법률의 규정에 의해 국가기관의 요구가 있는 경우
나. 범죄에 대한 수사상의 목적이 있거나 정보통신윤리 위원회의 요청이 있는 경우
다. 기타 관계법령에서 정한 절차에 따른 요청이 있는 경우
② 1항의 범위 내에서, 1조프로젝트(하나)는 업무와 관련하여 회원 전체 또는 일부의 개인 정보에 관한 통계 자료를 작성하여 이를 사용할 수 있고, 서비스를 통하여 회원의 컴퓨터 쿠키를 전송할 수 있습니다. 이 경우 회원은 쿠키의 수신을 거부하거나 쿠키의 수신에 대하여 경고하도록 사용하는 컴퓨터의 브라우저의 설정을 변경할 수 있습니다. 

제 10 조 (회원의 의무)

① 회원은 서비스 이용 시 다음 각 호의 행위를 하지 않아야 합니다.
가. 다른 회원의 ID를 부정하게 사용하는 행위
나. 서비스에서 얻은 정보를 1조프로젝트(하나)의 사전승낙 없이 회원의 이용 이외의 목적으로 복제하거나 이를 변경, 출판 및 방송 등에 사용하거나 타인에게 제공하는 행위
다. 1조프로젝트(하나)의 저작권, 타인의 저작권 등 기타 귄리를 침해하는 행위
라. 공공질서 및 미풍양속에 위반되는 내용의 정보, 문장, 도형 등을 타인에게 유포하는 행위
마. 범죄와 결부된다고 객관적으로 판단하는 행위
바. 기타 관계법령에 위배되는 행위
② 회원은 관계법령, 이 약관에서 규정하는 사항, 서비스 이용 안내 및 주의 사항을 준수 하여야 합니다.
③ 회원은 내용별로 1조프로젝트(하나)가 서비스 공지사항에 게시하거나 별도로 공지한 이용 제한 사항을 준수하여야 합니다.
④ 회원은 1조프로젝트(하나)의 사전 승낙 없이 서비스를 이용하여 어떠한 영리행위도 할 수 없습니다. 

제 4 장 서비스 제공 및 이용 

제 11 조 (회원 아이디(ID)와 비밀번호 관리에 대한 회원의 의무)

아이디(ID)와 비밀번호에 대한 모든 관리는 회원에게 책임이 있습니다. 회원에게 부여된 아이디(ID)와 비밀번호의 관리소홀, 부정사용에 의하여 발생하는 모든 결과에 대한 전적인 책임은 회원에게 있습니다.
자신의 아이디(ID)가 부정하게 사용된 경우 또는 기타 보안 위반에 대하여, 회원은 반드시 1조프로젝트(하나)에 그 사실을 통보해야 합니다.

제 12 조 (정보의 제공)

1조프로젝트(하나)는 회원의 서비스 이용 중 필요가 있다고 인정되는 다양한 정보에 대해서 전자메일이나 서신우편 등의 방법으로 회원에게 제공할 수 있으며, 회원은 원하지 않을 경우 가입신청 메뉴와 회원정보수정 메뉴에서 정보수신거부를 할 수 있습니다.

제 13 조 (광고주와의 거래)

1조프로젝트(하나)는 본 서비스상에 게재되어 있거나 본 서비스를 통한 광고주의 판촉활동에 회원이 참여하거나 교신 또는 거래의 결과로서 발생하는 모든 손실 또는 손해에 대해 책임을 지지 않습니다.

제 14 조 (회원의 게시물)

1조프로젝트(하나)는 회원이 본 서비스를 통하여 게시, 게재, 전자메일 또는 달리 전송한 내용물에 대하여 책임을 지지 않으며, 다음 각 호의 1에 해당한다고 판단되는 경우에 사전 통지없이 삭제할 수 있습니다.
① 다른 회원이나 타인을 비방하거나, 프라이버시를 침해하거나, 중상모략으로 명예를 손상시키는 내용인 경우
② 서비스의 안정적인 운영에 지장을 주거나 줄 우려가 있는 경우
③ 범죄적 행위에 관련된다고 인정되는 내용일 경우
④ 1조프로젝트(하나)의 지적재산권, 타인의 지적재산권 등 기타 권리를 침해하는 내용인 경우
⑤ 1조프로젝트(하나)에서 규정한 게시기간을 초과한 경우
⑥ 기타 관계법령에 위반된다고 판단되는 경우 

제 15 조 (게시물에 대한 권리 및 책임)

게시물에 대한 저작권을 포함한 모든 권리 및 책임은 이를 게시한 회원에게 있습니다. 

제 16 조 (메일의 내용)

① 1조프로젝트(하나)는 회원의 메일 내용을 편집하거나 감시하지 않습니다.
② 메일의 내용에 대한 책임은 각 회원에게 있습니다.
③ 회원은 허가를 받지 않고서 음란물이나 불온한 내용, 정크메일(junk mail), 스팸메일(spam mail) 및 타인에게 피해를 주거나 미풍양속을 해치는 메일을 보내서는 안됩니다.
④ 전기통신법, 제 53조와 전기통신사업법 시행령 16조(불온통신), 통신사업법 제 53조 3항에 의거, 음란물이나 불온한 내용을 전송함으로써 발생하는 모든 법적인 책임은 회원에게 있으며 1조프로젝트(하나)는 책임지지 않습니다.
⑤ 본 서비스를 이용하여 타인에게 피해를 주거나 미풍양속을 해치는 행위를 하신 회원의 아이디(ID)와 메일은 보호 받을 수 없습니다.

제 17 조 (서비스 이용시간)

① 서비스는 1조프로젝트(하나)의 업무상 또는 기술상의 장애, 기타 특별한 사유가 없는 한 연중무휴, 1일 24시간 이용할 수 있습니다. 다만 설비의 점검 등 1조프로젝트(하나)가 필요한 경우 또는 설비의 장애, 서비스 이용의 폭주 등 불가항력으로 인하여 서비스 이용에 지장이 있는 경우 예외적으로 서비스 이용의 전부 또는 일부에 대하여 제한할 수 있습니다.
② 1조프로젝트(하나)는 제공하는 서비스 중 일부에 대한 서비스이용시간을 별도로 정할 수 있으며, 이 경우 그 이용시간을 사전에 회원에게 공지 또는 통지 합니다.

제 18 조 (서비스 이용 책임)

회원은 서비스를 이용하여 불법 상품을 판매하는 영업 활동을 할 수 없으며 특히 해킹, 돈벌기 광고, 음란사이트를 통한 상업행위, 상용 S/W 불법배포 등을 할 수 없습니다. 이를 어기고 발생한 영업활동의 결과 및 손실, 관계기관에 의한 구속 등 법적 조치 등에 관해서는 1조프로젝트(하나)가 책임을 지지 않습니다.

제 5 장 기타 

제 20 조 (계약해지 및 이용제한)

① 회원이 이용계약을 해지하고자 하는 때에는 회원 본인이 1조프로젝트(하나)에 해지신청을 하여야 합니다.
② 1조프로젝트(하나)는 회원이 다음 각 호의 1에 해당하는 행위를 하였을 경우 사전통지 없이 이용계약을 해지하거나 또는 기간을 정하여 서비스 이용을 중지할 수 있습니다.
가. 타인의 서비스 ID 및 비밀번호를 도용한 경우
나. 서비스 운영을 고의로 방해한 경우
다. 공공질서 및 미풍양속에 저해되는 내용을 고의로 유포시킨 경우
라. 회원이 국익 또는 사회적 공익을 저해할 목적으로 서비스이용을 계획 또는 실행하는 경우
마. 타인의 명예를 손상시키거나 불이익을 주는 행위를 한 경우
바. 서비스의 안정적 운영을 방해할 목적으로 다량의 정보를 전송하거나 광고성 정보를 전송한 경우
사. 정보통신설비의 오작동이나 정보 등의 파괴를 유발시키는 컴퓨터 바이러스프로그램 등을 유포하는 경우
아. 1조프로젝트(하나), 다른 회원 또는 타인의 지적재산권을 침해하는 경우
자. 정보통신윤리위원회 등 외부기관의 시정요구가 있거나 불법선거 운동과 관련하여 선거관리위원회의 유권해석을 받은 경우
차. 타인의 개인정보, 이용자ID 및 비밀번호를 부정하게 사용하는 경우
카. 1조프로젝트(하나)의 서비스 정보를 이용하여 얻은 정보를 1조프로젝트(하나)의 사전 승낙없이 복제 또는 유통시키거나 상업적으로 이용하는 경우
타. 회원이 자신의 홈페이지와 게시판에 음란물을 게재하거나 음란사이트를 링크하는 경우
파. 본 약관을 포함하여 기타 1조프로젝트(하나)가 정한 이용조건 및 관계법령에 위반한 경우

제 21 조 (손해배상)

1조프로젝트(하나)는 서비스 요금이 무료인 동안의 서비스 이용과 관련하여 회원에게 발생한 어떠한 손해에 관하여도 책임을 지지 않습니다. 

제 22 조 (면책조항)

① 1조프로젝트(하나)는 천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에 관한 책임이 면제됩니다.
② 1조프로젝트(하나)는 회원의 귀책사유로 인하여 서비스 이용의 장애가 발생한 경우에는 책임이 면제됩니다.
③ 1조프로젝트(하나)는 회원이 1조프로젝트(하나)의 서비스 제공으로부터 기대되는 이익을 얻지 못하였거나 서비스 자료에 대한 취사 선택 또는 이용으로 발생하는 손해 등에 대해서는 책임이 면제됩니다.
④ 1조프로젝트(하나)는 회원이 서비스에 게재한 정보, 자료, 사실의 신뢰도, 정확성 등 그 내용에 관하여는 책임이 면제됩니다.

제 23 조 (관할법원)

본 약관 상의 분쟁에 대해 소송이 제기될 경우 1조프로젝트(하나)의 본사 소재지를 관할하는 법원을 전속 관할법원으로 합니다.

[부칙]

(시행일) 이 약관은 2010년 2월 1일부터 시행합니다.            </textarea></td>
        </tr>
        <tr> 
            <td height="40">&nbsp; <input type=checkbox value="1" name="agree" id="agree"> &nbsp;<label for="agree">회원가입약관을 읽었으며 내용에 동의합니다.</label></td>
        </tr>
    </table>

    <br>
    <table width="100%" cellpadding="4" cellspacing="0" bgcolor="#4DABF7">
        <tr> 
            <td height="40"> &nbsp; <b>개인정보취급방침</b></td>
        </tr>
        <tr> 
            <td align="center" valign="top"><textarea style="width: 98%;" rows="7" readonly class="ed">[개인정보취급방침]

&#039;1조프로젝트(하나)&#039;는 (이하 &#039;회사&#039;는) 고객님의 개인정보를 중요시하며, "정보통신망 이용촉진 및 정보보호"에 관한 법률을 준수하고 있습니다.

회사는 개인정보취급방침을 통하여 고객님께서 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며, 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다.


회사는 개인정보취급방침을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여 공지할 것입니다.

ο 본 방침은  :  2021 년 04 월 14 일 부터 시행됩니다.

■ 수집하는 개인정보 항목

회사는 상담, 서비스 신청 등등을 위해 아래와 같은 개인정보를 수집하고 있습니다.

ο 수집항목 : 이름 , 연락처 , 이메일 , 회사명 , 회사전화번호
ο 개인정보 수집방법 : 홈페이지(Q&A) 

■ 개인정보의 수집 및 이용목적

회사는 수집한 개인정보를 다음의 목적을 위해 활용합니다..

 ο 회원 관리
부정 이용 방지와 비인가 사용 방지

■ 개인정보의 보유 및 이용기간

회사는 개인정보 수집 및 이용목적이 달성된 후에는 예외 없이 해당 정보를 지체 없이 파기합니다.

■ 개인정보의 파기절차 및 방법

회사는 원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체없이 파기합니다. 파기절차 및 방법은 다음과 같습니다.

ο 파기절차

회원님이 회원가입 등을 위해 입력하신 정보는 목적이 달성된 후 별도의 DB로 옮겨져(종이의 경우 별도의 서류함) 내부 방침 및 기타 관련 법령에 의한 정보보호 사유에 따라(보유 및 이용기간 참조) 일정 기간 저장된 후 파기되어집니다.

별도 DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 보유되어지는 이외의 다른 목적으로 이용되지 않습니다.

ο 파기방법 

   - 전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다. 

■ 개인정보 제공

회사는 이용자의 개인정보를 원칙적으로 외부에 제공하지 않습니다. 다만, 아래의 경우에는 예외로 합니다.

- 이용자들이 사전에 동의한 경우

- 법령의 규정에 의거하거나, 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우

■ 수집한 개인정보의 위탁

회사는 고객님의 동의없이 고객님의 정보를 외부 업체에 위탁하지 않습니다. 향후 그러한 필요가 생길 경우, 위탁 대상자와 위탁 업무 내용에 대해 고객님에게 통지하고 필요한 경우 사전 동의를 받도록 하겠습니다.

■ 이용자 및 법정대리인의 권리와 그 행사방법

이용자 및 법정 대리인은 언제든지 등록되어 있는 자신 혹은 당해 만 14세 미만 아동의 개인정보를 조회하거나 수정할 수 있으며 삭제를 요청할 수 있습니다.

개인정보관리책임자에게 서면, 전화 또는 이메일로 연락하시면 지체없이 조치하겠습니다.

귀하가 개인정보의 오류에 대한 정정을 요청하신 경우에는 정정을 완료하기 전까지 당해 개인정보를 이용 또는 제공하지 않습니다. 또한 잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체없이 통지하여 정정이 이루어지도록 하겠습니다. 

회사는 이용자 혹은 법정 대리인의 요청에 의해 해지 또는 삭제된 개인정보는 “ 회사가 수집하는 개인정보의 보유 및 이용기간”에 명시된 바에 따라 처리하고 그 외의 용도로 열람 또는 이용할 수 없도록 처리하고 있습니다.

■ 개인정보 자동수집 장치의 설치, 운영 및 그 거부에 관한 사항

쿠키 등 인터넷 서비스 이용 시 자동 생성되는 개인정보를 수집하는 장치를 운영하지 않습니다. 

■ 개인정보에 관한 민원서비스

회사는 고객의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 아래와 같이 관련 부서 및 개인정보관리책임자를 지정하고 있습니다..

귀하께서는 회사의 서비스를 이용하시며 발생하는 모든 개인정보보호 관련 민원을 개인정보관리책임자 혹은 담당부서로 신고하실 수 있습니다. 회사는 이용자들의 신고사항에 대해 신속하게 충분한 답변을 드릴 것입니다.

기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.

1.개인분쟁조정위원회 (www.1336.or.kr/1336)

2.정보보호마크인증위원회 (www.eprivacy.or.kr/02-580-0533~4)

3.대검찰청 인터넷범죄수사센터 (http://icic.sppo.go.kr/02-3480-3600)

4.경찰청 사이버테러대응센터 (www.ctrc.go.kr/02-392-0330)
</textarea></td>
        </tr>
        <tr> 
            <td height="40"> &nbsp; <input type="checkbox" value="1" name="agree2" id="agree2"> &nbsp;<label for="agree2">개인정보취급방침을 읽었으며 내용에 동의합니다.</label></td>
    </table>
    <p>
			<button style="border-radius: 20px; font-size: 20px;border:none; height: 30px;width: 200px; color: white; background-color: #4DABF7; outline: none;" id="allagree">동의</button>
        	<button style="border-radius: 20px; font-size: 20px;border:none; height: 30px;width: 200px; color: white; background-color: #4DABF7; outline: none;" id="agreeclose">취소</button>
			</div>
		</div>
	</div>
    
<script>
	const use = document.getElementById('use');
	const modal = document.querySelector('.modal');
	const modalclose = document.getElementById('modalclose');
	const agreeclose = document.getElementById('agreeclose');
	const allagree = document.getElementById('allagree');
	const agree = document.getElementById('agree');
	const agree2 = document.getElementById('agree2');
	
	
	use.onclick = () => {
		//console.log('${login.userid}');  // 이렇게쓰면 순수 값으로 찍힌다.
		modal.classList.remove('hidden');
	};
	
	allagree.onclick = () => {
		if($(agree).prop('checked') && $(agree2).prop('checked')){
			$(use).prop('checked', true)
			modal.classList.add('hidden');
		}else {
			alert('약관 동의가 되지 않았습니다.')
		}
	};
	
	agreeclose.onclick = () => {
		$(use).prop('checked', false);
		$(allagree).prop('checked', false);
		$(agree).prop('checked', false);
		$(agree2).prop('checked', false);
		modal.classList.add('hidden');
	};
	
	
</script>

	
<script>
	$('#userid').blur(function(){
		$.ajax({
			url: '${cpath}/checkId',
			method: 'POST',
			data: {userid: $('#userid').val()},
			dataType: 'text',
			success: function(returnValue) {
	
				if(returnValue === '이미 사용중 입니다'){
					$('#userid').val('');
					$('#userid').attr('placeholder', '이미 사용중인 ID입니다.');
					$('#userid').select();
				}
				else {
					$('#userid').css('color', 'blue');	
				}
			},
				error: function() {
					$('#userid').text('서버 통신 실패');
				}
		});
	});
	
	$('#userpw2').blur(function(){
			if($('#userpw').val() == $('#userpw2').val()){
				$('#name').focus();
			}
			else {
				$('#userpw').val('');
				$('#userpw2').val('');
				$('#userpw2').attr('placeholder', '비밀번호가 일치 하지 않습니다.');
				$('#userpw').select();
			}
			if($('#userpw').val() == ''){
				$('#userpw').select();
			}

	});
	
	$('#pnum').blur(function(){
		$.ajax({
			url: '${cpath}/checkPnum',
			method: 'POST',
			data: {pnum: $('#pnum').val()},
			dataType: 'text',
			success: function(returnValue) {
				console.log(returnValue);
				if(returnValue === '이미 사용중 입니다'){
					$('#pnum').val('');
					$('#pnum').attr('placeholder', '이미 등록된 전화번호 입니다.');
					$('#pnum').select();
				}
				else {
					$('#pnum').css('color', 'blue');	
				}
			},
				error: function() {
					$('#pnum').text('서버 통신 실패');
				}
		});
	});
</script>
<script>	
	const joinForm = document.forms[1];
	const submitHandler = function(event) {
		console.log('submitHandler !!');
		event.preventDefault();
		
		if($('#pnum').val() == '') {

			const cf = confirm('전화번호란이 비웠습니다. 이대로 괜찮습니까?');
			if (cf) {
				joinForm.submit();	   
			}
			else {
				return;
			}		
		}
		var passRule = /^[A-Za-z0-9]{6,12}$/;//숫자와 문자 포함 형태의 6~12자리 이내의 암호 정규식
		 
		if(!passRule.test($("input[id='userpw']").val())) {
			alert('비밀번호 형식이 맞지 않습니다.예)숫자와 문자 포함 형태의 6~12자리 이내의 암호');
			document.getElementById('userpw').focus();
	    	return;
		}
		var regExp = /^\d{3}\d{3,4}\d{4}$/;
			 
		if(!regExp.test($("input[id='pnum']").val())) {            
		    alert('전화번호 형식이 맞지 않습니다.예)010 0000 0000 숫자로만 구성');
		    document.getElementById('pnum').focus();
		    return;
		}	
		if($(use).prop("checked")) {
		}else {
			alert('약간 동의를 하지 않으셨습니다.');
			return;
		}
		
		joinForm.submit();
	};
	joinForm.onsubmit = submitHandler;
</script>

</main>

<%@ include file="../layout/footer.jsp" %>