# jamoviDocs

jamovi documentation using Sphinx. The documentation is available at https://jamovi.readthedocs.io (and translations can be chosen by clicking at the menu that unfolds after pressing at «Read the Docs» at the bottom). Whoever would like to contribute with translations, is very welcome to do so at https://hosted.weblate.org/projects/jamovi/jamovidocs/

-----------

Install and build (first time):

   `$ virtualenv _env`<br>
   `$ source _env/bin/activate`<br>
   Set up and activate the virtual environment.<br>
   
   `$ pip3 install -r requirements.txt`<br>
   Install the required packages (wheels) in the virtual environment.<br>
   
   `$ make html`<br>
   Create a first version of the HTML build (i.e., showing how the web is going to look like later). This HTML build can afterwards be opened as `_build/html/index.html` in your browser.<br>

-----------

Install and build (later):

   `$ virtualenv _env`<br>
   `$ source _env/bin/activate`<br>
   Set up and activate the virtual environment.<br>

   `$ ./.crtLng.sh`<br>
   Creates the language files.
     
   `$ make clean && git checkout weblate/weblate-jamovi-jamovidocs -- _locale && for L in en de; do sphinx-build -b html -D language=${L} . _build/html/${L}; rm -fR _build/html/${L}/.doctrees; if [ "${L}" != "en" ]; then cd _build/html/${L}; for D in _images _static; do rm -fR ${D}; ln -s ../en/${D}; done; cd -; fi; done`<br>
   Pull the translated resources and build the documentation in the target language. Afterwards, the doctree-pickles are removed and, if the lanaguage is not English (default), the directories _images and _static are removed from the translated directories and linked to the respective directories under "en".<br>

   NB: Before using the weblate repository for the first time, it has to be added using the following command (the second part prevents from accidentially pushing to it):
   `$ git remote add weblate https://github.com/weblate/jamoviDocs.git/ && git remote set-url --push weblate DISABLED`
   
   After it is pushed to the github-repository, readthedocs is reading from the respective language project there (which is then integrated into the main documentation).<br>
