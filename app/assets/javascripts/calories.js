//計算ボタンが押された時
function func1() {
  let outArray = create_array();
  let food = document.getElementById("food").value;
  let gram = document.getElementById("gram").value;
  let kcal = document.getElementById("output2").textContent;

  for (cnt = 0; cnt < outArray.length; cnt++) {
    //配列の奇数は数値
    console.log(outArray[cnt].toString());
    if (outArray[cnt] == food) {
      kcal = Number(kcal) + Number(outArray[cnt + 1]) * (gram / 100);
    }
  }

  let input_params = document.getElementById("output1").value;
  input_params = input_params + food + " , " + gram + " g" + "\n";
  document.getElementById("output1").innerHTML = input_params;

  document.getElementById("food").value = "";
  document.getElementById("gram").value = "";
  document.getElementById("output2").innerHTML = kcal;
}

//リセットボタンが押されたら
function func2() {
  document.getElementById("output1").innerHTML = "";
  document.getElementById("output2").innerHTML = "";
}

//DBのデータから配列を作成
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
