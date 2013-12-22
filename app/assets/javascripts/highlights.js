$(function() {
    $('.kick-type-select li').on('click', function(e) {
        e.preventDefault();
        var clicked = $.trim( $(this).attr("class").toLowerCase() );
        if ( clicked == 'show-all-kicks' ) {
            $(".highlights").find('.kickoff, .fieldgoal, .punt').show();
        }else{
            $(".highlights").find('.kickoff, .fieldgoal, .punt').hide();
            $(".highlights").find('.' + clicked).show();
        }

        $(this).closest('li')
               .addClass('current')
               .siblings()
               .removeClass('current');
    });
});