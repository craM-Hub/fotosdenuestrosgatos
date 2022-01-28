$(function () {
    /* var $grid = $('.grid').masonry({
        itemSelector: '.grid-item',
        gutter: 10,
    });
    $grid.imagesLoaded().progress(function () {
        $grid.masonry('layout');
    }); */
    $('.infiniteContainer').infiniteScroll({
        // options
        path: 'photos/{{#}}',
        append: '.infinite',
        history: false,
    });
});
