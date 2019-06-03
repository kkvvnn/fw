<div class="container">
    <div id="answer"></div>
    <button class="btn btn-default" id="send">Кнопка</button>
    <br>
    <?php new \vendor\widgets\menu\Menu() ?>
    <?php if (!empty($posts)): ?>
        <?php  foreach ($posts as $post): ?>
            <div class="panel panel-default">
                <div class="panel-heading"><?=$post['title']?></div>
                <div class="panel-body">
                    <?=$post['text']?>
                </div>
            </div>
        <?php endforeach; ?>
    <?php endif; ?>
</div>

<script src="/js/test.js"></script>

<script>
    $(function(){
        $('#send').click(function(){
            $.ajax({
                url: '/main/test',
                type: 'post',
                data: {'id': 2},
                success: function(res){
                    // var data = JSON.parse(res);
                    // $('#answer').html('<p>Ответ: ' + data.answer + ' | Код:' + data.code + '</p>');
                    // console.log(res);
                    $('#answer').html(res);
                },
                error: function(){
                    alert('Error!');
                }
            });
        });
    });      
</script>