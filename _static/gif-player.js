var gifs = document.querySelectorAll('.gif-player');

gifs.forEach((gif) => {
    var src = gif.getAttribute('data-static-src');
    gif.style.backgroundImage = "url('" + src + "')";

    var play = document.createElement('div');
    play.classList.add('play-button');
    gif.appendChild(play);

    var stop = document.createElement('div');
    stop.classList.add('stop-button');
    gif.appendChild(stop);

    var load = document.createElement('div');
    stop.classList.add('load-indicator');
    gif.appendChild(stop);

    gif.addEventListener('click', (event) => {
        var state = gif.getAttribute('data-state');
        var path;
        if (state === 'playing') {
            path = gif.getAttribute('data-static-src');
            gif.setAttribute('data-state', 'waiting');
        }
        else {
            path = gif.getAttribute('data-anim-src');
            gif.setAttribute('data-state', 'playing');
        }
        gif.style.backgroundImage = 'url("' + path + '")';
    });
});
