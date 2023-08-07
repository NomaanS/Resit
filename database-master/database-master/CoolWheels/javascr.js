$(document).ready(function () {
    var $navbar = $('.navbar');

    $(window).on('scroll', function () {
        var scrollPos = $(this).scrollTop();

        if (scrollPos > 50) {
            $navbar.addClass('scrolled');
        } else {
            $navbar.removeClass('scrolled');
        }
    });

    // Smooth scrolling for internal links
    $('a[href^="#"]').on('click', function (event) {
        event.preventDefault();
        var target = $(this.getAttribute('href'));
        if (target.length) {
            $('html, body').stop().animate({
                scrollTop: target.offset().top - 60
            }, 1000);
        }
    });
});
