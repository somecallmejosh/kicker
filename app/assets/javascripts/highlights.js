$(function() {
    $('.kick-type-select li a').on('click', function(e) {
        e.preventDefault();
        var clicked = $.trim( $(this).attr("class").toLowerCase() );
        if ( clicked == 'show-all-kicks' ) {
            $(".highlights").find('.kickoff, .fieldgoal, .punt, .pat').show();
        }else{
            $(".highlights").find('.kickoff, .fieldgoal, .punt, .pat').hide();
            $(".highlights").find('.' + clicked).show();
        }

        $(this).closest('li')
               .addClass('current')
               .siblings()
               .removeClass('current');
    });
});