$(function () {
    $('.infiniteContainer').infiniteScroll({
        // options
        path: 'photos_index',
        append: '.infinite',
        history: false,
    });

    $('.grid').masonry({
        itemSelector: '.grid-item',
        gutter: 10,
    });
});
