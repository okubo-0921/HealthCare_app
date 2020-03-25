$(document).on("turbolinks:load", function() {
  // 左向き
  let sides = "left";

  // サイドバーの初期化;
  $(".sidebar." + sides).sidebar(sides);

  // ボタンのクリックにより発火
  $(".btn[data-action]").on("click", function() {
    let $this = $(this);
    let action = $this.attr("data-action");
    let side = $this.attr("data-side");
    $(".sidebar." + side).trigger("sidebar:" + action);
    return false;
  });
});
