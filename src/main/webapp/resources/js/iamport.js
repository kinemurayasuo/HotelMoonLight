function iamport1() {
    IMP.init('imp52219467');
    IMP.request_pay({
        pg: 'html5_inicis',
        pay_method: 'card',
        merchant_uid: 'merchant_' + new Date().getTime(),
        name: 'Classic',
        amount: 120,
        buyer_email: 'iamport@siot.do',
        buyer_name: '구매자이름',
        buyer_tel: '010-1234-5678',
        buyer_addr: '서울특별시 강남구 삼성동',
        buyer_postcode: '123-456'
    }, function (rsp) {
        if (rsp.success) {
            var msg = '예약이 완료되었습니다.';
            $("#form1").submit();
        } else {
            var msg = '결제에 실패하였습니다.';
            msg += '에러내용 : ' + rsp.error_msg;
        }

        alert(msg);
    });
}


function iamport2() {
    IMP.init('imp52219467');
    IMP.request_pay({
        pg: 'html5_inicis',
        pay_method: 'card',
        merchant_uid: 'merchant_' + new Date().getTime(),
        name: 'Deluxe',
        amount: 180,
        buyer_email: 'iamport@siot.do',
        buyer_name: '구매자이름',
        buyer_tel: '010-1234-5678',
        buyer_addr: '서울특별시 강남구 삼성동',
        buyer_postcode: '123-456'
    }, function (rsp) {
        if (rsp.success) {
            var msg = '예약이 완료되었습니다.';
            $("#form2").submit();
        } else {
            var msg = '결제에 실패하였습니다.';
            msg += '에러내용 : ' + rsp.error_msg;
        }

        alert(msg);
    });
}

function iamport3() {
    IMP.init('imp52219467');
    IMP.request_pay({
        pg: 'html5_inicis',
        pay_method: 'card',
        merchant_uid: 'merchant_' + new Date().getTime(),
        name: 'Superior',
        amount: 180,
        buyer_email: 'iamport@siot.do',
        buyer_name: '구매자이름',
        buyer_tel: '010-1234-5678',
        buyer_addr: '서울특별시 강남구 삼성동',
        buyer_postcode: '123-456'
    }, function (rsp) {
        if (rsp.success) {
            var msg = '예약이 완료되었습니다.';
            $("#form3").submit();
        } else {
            var msg = '결제에 실패하였습니다.';
            msg += '에러내용 : ' + rsp.error_msg;
        }

        alert(msg);
    });
}

function iamport4() {
    IMP.init('imp52219467');
    IMP.request_pay({
        pg: 'html5_inicis',
        pay_method: 'card',
        merchant_uid: 'merchant_' + new Date().getTime(),
        name: 'Premier',
        amount: 250,
        buyer_email: 'iamport@siot.do',
        buyer_name: '구매자이름',
        buyer_tel: '010-1234-5678',
        buyer_addr: '서울특별시 강남구 삼성동',
        buyer_postcode: '123-456'
    }, function (rsp) {
        if (rsp.success) {
            var msg = '예약이 완료되었습니다.';
            $("#form4").submit();
        } else {
            var msg = '결제에 실패하였습니다.';
            msg += '에러내용 : ' + rsp.error_msg;
        }

        alert(msg);
    });
}


function iamport5() {
    IMP.init('imp52219467');
    IMP.request_pay({
        pg: 'html5_inicis',
        pay_method: 'card',
        merchant_uid: 'merchant_' + new Date().getTime(),
        name: 'Deluxe Suite',
        amount: 300,
        buyer_email: 'iamport@siot.do',
        buyer_name: '구매자이름',
        buyer_tel: '010-1234-5678',
        buyer_addr: '서울특별시 강남구 삼성동',
        buyer_postcode: '123-456'
    }, function (rsp) {
        if (rsp.success) {
            var msg = '예약이 완료되었습니다.';
            $("#form5").submit();
        } else {
            var msg = '결제에 실패하였습니다.';
            msg += '에러내용 : ' + rsp.error_msg;
        }

        alert(msg);
    });
}



function iamport6() {
    IMP.init('imp52219467');
    IMP.request_pay({
        pg: 'html5_inicis',
        pay_method: 'card',
        merchant_uid: 'merchant_' + new Date().getTime(),
        name: 'Family Suite',
        amount: 250,
        buyer_email: 'iamport@siot.do',
        buyer_name: '구매자이름',
        buyer_tel: '010-1234-5678',
        buyer_addr: '서울특별시 강남구 삼성동',
        buyer_postcode: '123-456'
    }, function (rsp) {
        if (rsp.success) {
            var msg = '예약이 완료되었습니다.';
            $("#form6").submit();
        } else {
            var msg = '결제에 실패하였습니다.';
            msg += '에러내용 : ' + rsp.error_msg;
        }

        alert(msg);
    });
}