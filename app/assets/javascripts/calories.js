//計算ボタンが押された時
function func1() {
  let outArray = create_array();
  let food = document.getElementById("food").value;
  let gram = document.getElementById("gram").value;
  let kcal = document.getElementById("output2").textContent;

  //入力データ(food)とデータベースから作成した配列の比較
  for (cnt = 0; cnt < outArray.length; cnt++) {
    console.log(outArray[cnt].toString());
    if (outArray[cnt] == food) {
      //一致した次の要素が演算対象の数値
      kcal = Number(kcal) + Number(outArray[cnt + 1]) * (gram / 100);
    }
  }

  //入力データ(food,gram)をtextareaへ表示
  let input_params = document.getElementById("output1").value;
  input_params = input_params + food + " , " + gram + " g" + "\n";
  document.getElementById("output1").innerHTML = input_params;

  //演算したカロリーを表示
  document.getElementById("output2").innerHTML = kcal;

  //入力データのテキストボックスをクリア
  document.getElementById("food").value = "";
  document.getElementById("gram").value = "";
}

//リセットボタンが押されたら
function func2() {
  document.getElementById("output1").innerHTML = "";
  document.getElementById("output2").innerHTML = "";
}

//DBのデータから配列を作成
//hamlで表示した@foodsの中身をsplitで分割して配列化
function create_array() {
  let arr = document.getElementById("result").textContent;
  let create_arr = arr
    .split('"')
    .join("")
    .split("]")
    .join("")
    .split("[")
    .join("")
    .split("\n")
    .join("")
    .split(", ");
  return create_arr;
}
