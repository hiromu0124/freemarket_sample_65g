$(document).on('turbolinks:load', function() {

  $(document).on('click', '.previews__btn__destroy', function() {
    $(this).parent().parent().remove();
    // 選択された要素の番号を取得
    const index = $(this).data('index')
    // js−file_groupの何番目の子要素を指定して削除する
    $('.js-file')[0].remove();
    // 画像入力欄が0個にならないようにしておく
    if ($('.js-file').length == 0) $('#image-box').append(buildFileField(fileIndex[0]));
  });
  
  const buildFileField = (index)=> {
    const html = `<label data-index="${index}">
    <div class="js-file_group">
    <input class="js-file" data-index="${index}" value="" type="file" name="product[product_images_attributes][${index}][image]" id="product_product_images_attributes_${index}_image">
    </div>
    <div class="single__main__product__image__zone__images">
    ドラッグアンドドロップ
    またはクリックしてファイルをアップロード
    </div>
    </label>`;



    return html;
  }

  const buildImg = (index, url)=> {
    const html = `<div class="previews_float">
<img><img data-index="${index}" src="${url}" width="120px" height="120px">
<div class="previews__btn">
<div class="previews__btn__update">編集</div>
<div data-index="${index}" class="previews__btn__destroy">削除</div>
</div>
</div>`;
    return html;
  }

  // file_fieldのnameに動的なindexをつける為の配列
  let fileIndex = [1,2,3,4,5,6,7,8,9,10];

  $('.js-file_group').on('change', '.js-file', function(e) {
    // fileIndexの先頭の数字を使ってinputを作る
    $('.js-file_group').append(buildFileField(fileIndex[0]));
    fileIndex.shift();
    // 末尾の数に1足した数を追加する
    fileIndex.push(fileIndex[fileIndex.length - 1] + 1)

    const targetIndex = $(this).parent().data('index');
    // ファイルのブラウザ上でのURLを取得する
    const file = e.target.files[0];
    const blobUrl = window.URL.createObjectURL(file);
    $('.previews').append(buildImg(targetIndex, blobUrl));
    $('.single__main__product__image__zone__images')[0].remove();
  });
});