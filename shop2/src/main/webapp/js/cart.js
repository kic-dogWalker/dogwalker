// 상품 개당 가격 설정
const productPrice1 = 9900; // 첫 번째 상품 개당 가격
const productPrice2 = 9900; // 두 번째 상품 개당 가격
const shippingFee = 3000; // 배송비
const freeShippingThreshold = 100000; // 10만원 이상 무료 배송 기준

// 수량 변경에 따른 금액 업데이트
function updateQuantity(change, productId) {
  let quantityInput;
  let priceElement;

   if (productId === 1) {
    quantityInput = document.getElementById("p_cntInput1");
  } else if (productId === 2) {
    quantityInput = document.getElementById("p_cntInput2");
  } else {
    return; // 잘못된 값이 전달되면 함수 종료
  }

  let quantityValue = parseInt(quantityInput.value);

  // 수량 증가 또는 감소
  quantityValue += change;

  // 최소 수량은 1로 설정
  if (quantityValue < 1) {
    quantityValue = 1;
  }

  // 변경된 수량 값을 수량 입력 필드에 업데이트
  quantityInput.value = quantityValue;

  // 금액 업데이트
  updatePrice(productId);
  updateTotalPrice();
}

// 금액 업데이트 함수
function updatePrice(productId) {
	
	/*// 각 상품 정보 표시를 위한 변수
  let cartListElement = document.getElementById("cartList");
  let cartListHtml = '';

  // 상품 1 정보 표시
  let quantityInput1 = document.getElementById("p_cntInput1");
  let quantityValue1 = parseInt(quantityInput1.value);
  let totalPrice1 = productPrice1 * quantityValue1;
  cartListHtml += `<li>상품 1: ${quantityValue1}개 - ${totalPrice1.toLocaleString()}원</li>`;

  // 상품 2 정보 표시
  let quantityInput2 = document.getElementById("p_cntInput2");
  let quantityValue2 = parseInt(quantityInput2.value);
  let totalPrice2 = productPrice2 * quantityValue2;
  cartListHtml += `<li>상품 2: ${quantityValue2}개 - ${totalPrice2.toLocaleString()}원</li>`;*/
  
   let p_cntInput;
  let priceElement;

  if (productId === 1) {
    p_cntInput = document.getElementById("p_cntInput1");
    priceElement = document.getElementById("p_sum1");
  } else if (productId === 2) {
    p_cntInput = document.getElementById("p_cntInput2");
    priceElement = document.getElementById("p_sum2");
  } else {
    return; // 잘못된 값이 전달되면 함수 종료
  }

  let quantityValue = parseInt(p_cntInput.value);


  // 개당 가격 설정
  let unitPrice = productPrice1; // 첫 번째 상품 개당 가격


  // 수량에 따른 총 금액 계산
  let totalPrice = unitPrice * quantityValue;

  // 금액 표시 업데이트
  priceElement.textContent = totalPrice.toLocaleString() + "원";
}

// 총 구매금액 업데이트 함수
function updateTotalPrice() {
  // 상품 1과 상품 2의 수량과 개당 가격 가져오기
  let quantityInput1 = document.getElementById("p_cntInput1");
  let quantityInput2 = document.getElementById("p_cntInput2");
  let quantityValue1 = parseInt(quantityInput1.value);
  let quantityValue2 = parseInt(quantityInput2.value);

  // 상품 1과 상품 2의 가격 계산
  let totalPrice1 = productPrice1 * quantityValue1;
  let totalPrice2 = productPrice2 * quantityValue2;

  // 상품 1과 상품 2의 가격을 더해서 총 구매금액 계산
  let totalPurchaseAmount = totalPrice1 + totalPrice2;
  
  //10만원이상 구매시 배송비 제외
  if (totalPurchaseAmount >= freeShippingThreshold) {
    shippingFee = 0;
  }
  
  
    // 배송비를 총 구매금액에 추가
  totalPurchaseAmount += shippingFee;
  

  // totalprice 요소 업데이트
  let totalpriceElement = document.getElementById("totalprice");
  totalpriceElement.textContent = totalPurchaseAmount.toLocaleString() + "원";
}


// 삭제 버튼 클릭 시 해당 행 삭제
function deleteRow(element) {
  const row = element.closest("tr");
  row.remove();

  // 총 구매금액 업데이트
  updateTotalPrice();
}

// 페이지 로드 시 초기 금액 업데이트
updatePrice(1);
updatePrice(2);
updateTotalPrice();
