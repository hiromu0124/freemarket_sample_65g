$(document).on('turbolinks:load', function() {
  // 画像用のinputを生成する関数
  const buildFileField = (index)=> {
    const html = `<input class="js-file" type="file" name="product[product_images_attributes][0][image]" id="product_product_images_attributes_0_image"><span class="js-remove">削除</span>`;
    return html;
  }

  // file_fieldのnameに動的なindexをつける為の配列
  let fileIndex = [1,2,3,4,5,6,7,8,9,10];

  $('.js-file_group').on('change', '.js-file', function(e) {
    // fileIndexの先頭の数字を使ってinputを作る
    console.log(1)
    $('.js-file_group').append(buildFileField(fileIndex[0]));
    fileIndex.shift();
    // 末尾の数に1足した数を追加する
    fileIndex.push(fileIndex[fileIndex.length - 1] + 1)
  });

  $('#image-box').on('click', '.js-remove', function() {
    $(this).parent().remove();
    // 画像入力欄が0個にならないようにしておく
    if ($('.js-file').length == 0) $('#image-box').append(buildFileField(fileIndex[0]));
  });
});