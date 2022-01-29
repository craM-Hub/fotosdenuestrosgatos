$(function () {
    let grid = $('.grid').masonry({
        itemSelector: '.grid-item',
        gutter: 10,
    });

    let msnry = grid.data('masonry');

    grid.imagesLoaded().progress(function () {
        grid.masonry('layout');
    });
    $('.infiniteContainer').infiniteScroll({
        // options
        path: 'photos/{{#}}',
        append: '.infinite',
        outlayer: msnry,
        history: false,
    });
});
