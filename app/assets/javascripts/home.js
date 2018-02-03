$(document).ready(function(){
    (function($, win) {
        $.fn.inViewport = function(cb) {
            return this.each(function(i,el){
                function visPx(){
                    var H = $(this).height(),
                        r = el.getBoundingClientRect(), t=r.top, b=r.bottom;
                    return cb.call(el, Math.max(0, t>0? H-t : (b<H?b:H)));
                } visPx();
                $(win).on("resize scroll", visPx);
            });
        };
    }(jQuery, window));

    $(".aos").inViewport(function(px){
        if(px) $(this).addClass("doanime") ;
    });

    //for stats countet
    $('.stats_count').each(function () {
        $(this).prop('Counter',0).animate({
            Counter: $(this).text()
        }, {
            duration: 4000,
            easing: 'swing',
            step: function (now) {
                $(this).text(Math.ceil(now));
            }
        });
        
    });

});
