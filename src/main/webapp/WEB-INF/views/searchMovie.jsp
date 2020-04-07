<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 실험용 jsp -->

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JQUERY index</title>
</head>
<body>
    <input type="text" id="searchkey" placeholder="검색어">
    <button id="searchbtn" >돋보기</button>

    <ol>
        <li class="movie">
            <div class="mov-img">image of 123</div>
            <div class="mov-tit">
                <a href="#">123</a>
            </div>
        </li>
        <li class="movie">
            <div class="mov-img">image of 345</div>
            <div class="mov-tit">
                <a href="#">345</a>
            </div>
        </li>
        <li class="movie">
            <div class="mov-img">image of 456</div>
            <div class="mov-tit">
                <a href="#">456</a>
            </div>
        </li>
    </ol>
    
    <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script> 
    <script><!--jquery-->
        $(document).ready(function() {
            $('#searchkey').on('change', search);
            $('#searchbtn').on('click', search);
        });
        function search(){
            var key = $('#searchkey').val();// input value
            var liSave = $('li.no-img'); //li classname
            $.each(liSave, function(index, item){
                var title = $(this).find("div.tit-area").text();
                if( title.includes(key) ){
                    $(this).show();
                }else{
                    $(this).hide();
                }
            });
        }

    </script>

</body>
</html>
