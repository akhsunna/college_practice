//$(function(){
//    $(".comment-show").click(function () {
//        $('.comment-form')[0].removeAttribute('hidden');
//    });
//});

$(document).ready(function(){
    $('.comment-show').click(function () {
        $('.comment-form').toggle(100);
    });
});

$(function() {
    $(".comment-form-r").each(function (index) {
        $(this).attr('id', 'comment-form-'+index.toString());
    });
});

$(function() {
    $(".comment-show-r").each(function (index) {
        $(this).attr('id', 'comment-show-'+index.toString());
    });
});

$(document).ready(function() {
    //alert("33333!");
    $(".comment-show-r").each(function (index) {
        $(this).click(function () {
            $('#comment-form-'+index.toString()).toggle(100);
        });
    });
});