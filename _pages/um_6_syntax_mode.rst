.. sectionauthor:: Jonathon Love

Syntax Mode
===========

jamovi also provides an “R Syntax Mode”, in this mode, jamovi produces equivalent R code for each analysis. To change to syntax mode, select the application menu (⋮) at the top right of jamovi, and check the ``Syntax mode`` checkbox there. It is possible to leave syntax mode by clicking this a second time.

In syntax mode, analyses continue to operate as before, but now they produce R syntax, and “ASCII output” like an R session. Like all results objects in jamovi, you can right click on these items (including the R syntax) and copy and paste them, for example, into an R session.

.. raw:: html

    <div class="gif-player" data-anim-src="../_images/um_rSyntax.gif" data-static-src="../_images/um_rSyntax.png">
    </div>

At present, the provided R syntax does not include the data import step, and this must be performed manually. There are many resources explaining how to import data into R, and we recommend you take a look at these (Most analyses in jamovi require data as a data frame).

Another R feature that may be of interest is the `Rj Editor <https://blog.jamovi.org/2018/07/30/rj.html>`__, which allows you to use R code to analyse data directly in jamovi.

.. raw:: html

    <script type="text/javascript">
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
    </script>

.. ---------------------------------------------------------------------

.. |r-syntax|            image:: ../_images/um_rSyntax.png
.. |r-syntax-gif|        image:: ../_images/um_rSyntax.gif
