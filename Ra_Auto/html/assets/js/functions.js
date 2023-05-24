function startUpdatingHud(show, { speed, fuel, gears }) {
    show ? $('.carhud').fadeIn(() => {
        $('.carhud .km-text').text(('000' + Math.round(speed)).substr(-3));
    }) : $('.carhud').fadeOut();
}