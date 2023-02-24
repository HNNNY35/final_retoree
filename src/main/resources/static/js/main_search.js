function itemChange() {
  var hyundai = [
    "아반떼",
    "소나타",
    "그랜저",
    "베뉴",
    "코나",
    "투싼",
    "싼타페",
    "팰리세이드",
    "캐스퍼",
  ];
  var genesis = ["G70", "G80", "GV60", "GV70", "GV80", "G90"];
  var kia = [
    "k3",
    "k5",
    "k7",
    "k8",
    "k9",
    "스팅어",
    "모닝",
    "레이",
    "소울",
    "셀토스",
    "스포티지",
    "니로",
    "소렌토",
    "모하비",
    "카니발",
  ];
  var smotor = ["티볼리", "코란도", "렉스턴", "토레스"];
  var renaultkorea = ["XM3", "QM6", "SM3", "SM5", "SM7"];
  var benz = [
    "E-Class",
    "A-Class",
    "C-Class",
    "S-Class",
    "Mercedes-Maybach",
    "GLC",
    "CLA",
    "CLS",
    "EQS",
    "GLA",
    "GLB",
    "GLC",
    "GLE",
    "GLS",
  ];
  var bmw = [
    "iX",
    "i7",
    "i4",
    "i4",
    "XM",
    "X7",
    "X6",
    "X5",
    "X4",
    "X3",
    "X2",
    "X1",
  ];
  var volkwagen = ["투아렉", "골프", "티구안", "아르테온"];

  var selectItem = $("#manufacturer").val();
  var changeItem;

  if (selectItem == "현대") {
    changeItem = hyundai;
  } else if (selectItem == "제네시스") {
    changeItem = genesis;
  } else if (selectItem == "기아") {
    changeItem = kia;
  } else if (selectItem == "쌍용") {
    changeItem = smotor;
  } else if (selectItem == "르노삼성") {
    changeItem = renaultkorea;
  } else if (selectItem == "벤츠") {
    changeItem = benz;
  } else if (selectItem == "BMW") {
    changeItem = bmw;
  } else if (selectItem == "폭스바겐") {
    changeItem = volkwagen;
  }

  $("#model").empty();

  var selectedItem = $("<option selected>모델</option>");

  $("#model").append(selectedItem);
  for (var count = 0; count < changeItem.length; count++) {
    var option = $(
      "<option value='" +
        changeItem[count] +
        "' >" +
        changeItem[count] +
        "</option>"
    );
    $("#model").append(option);
  }
}
