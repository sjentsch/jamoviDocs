.. sectionauthor:: Jonathon Love

Analyses
========

Analyses can be selected from the analyses ribbon or menu along the top. Selecting an analysis will present an “options panel” for that particular analysis, allowing you to assign different variables to different parts of the analysis, and select different options. At the same time, the results for the analysis will appear in the right “results panel”, and will update as you make changes to the options.

When you have the analysis set up correctly, you can dismiss the analysis options by clicking the arrow to the top right of the options panel. If you wish to return to these options, you can click on the results that were produced. In this way, you can return to any analysis that you (or say, a colleague) created earlier.

If you decide you no longer need a particular analysis, you can remove it with the results context menu. Right-clicking on the analysis results will bring up a menu, and by selecting ``Analysis``, and then ``Remove``, the analysis can be removed.

.. raw:: html

    <div class="gif-player" data-anim-src="../_images/um_analysis.gif" data-static-src="../_images/um_analysis.png" data-title="Performing an Analysis">
    </div>

..

jamovi produces nice APA formatted tables, and attractive plots. It is often useful to be able to copy and paste these, perhaps into a Word document, or into an email to a colleague. To copy results, right click on the object of interest, and from the menu select exactly what you want to copy. The menu allows you to choose to copy, say only the image, or the entire analysis. Selecting copy, copies the content to the clipboard, and can be pasted into the other program in the usual way.

.. raw:: html

    <div class="gif-player" data-anim-src="../_images/um_copyPaste.gif" data-static-src="../_images/um_copyPaste.png" data-title="Copy Paste">
    </div>

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

.. |copy-paste|          image:: ../_images/um_copyPaste.png
.. |copy-paste-gif|      image:: ../_images/um_copyPaste.gif
.. |analysis|            image:: ../_images/um_analysis.png
.. |analysis-gif|        image:: ../_images/um_analysis.gif
