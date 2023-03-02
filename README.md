# jamoviDocs

jamovi documentation using Sphinx. The documentation is available at https://jamovi.readthedocs.io (and translations can be chosen by clicking at the menu that unfolds after pressing at «Read the Docs» at the bottom). Whoever would like to contribute with translations, please read a little [further down](#translate).

-----------

### Install and build (first time):

   `$ virtualenv _env`<br>
   `$ source _env/bin/activate`<br>
   Set up and activate the virtual environment.<br>

   `$ pip3 install -r requirements.txt`<br>
   Install the required packages (wheels) in the virtual environment.<br>

   `$ make html`<br>
   Create a first version of the HTML build (i.e., showing how the web is going to look like later). This HTML build can afterwards be opened as `_build/html/index.html` in your browser.<br>

-----------

### Install and build (later):

   `$ virtualenv _env`<br>
   `$ source _env/bin/activate`<br>
   Set up and activate the virtual environment.<br>
   
   `$ python3 -m pip install --upgrade --no-cache-dir pip 'setuptools<58.3.0'`
   `$ python3 -m pip install --upgrade --no-cache-dir pillow mock==1.0.1 'alabaster>=0.7,<0.8,!=0.7.5' commonmark==0.9.1 recommonmark==0.5.0 sphinx sphinx-rtd-theme 'readthedocs-sphinx-ext<2.3'`
   `$ python3 -m pip install --exists-action=w --no-cache-dir -r requirements.txt`<br>
   Update the required packages (wheels) in the virtual environment (if necessary).<br>

   `$ ./.crtLng.sh`<br>
   Creates / updates the language files.

   `$ rm -fR _build/{html,doctrees} && git submodule update --remote && git add _locale && git commit -am "Weblate-updates ($(date +%F))" && git push && for L in $(less .languages); do sphinx-build -b html -D language=${L} . _build/html/${L}; rm -fR _build/html/${L}/.doctrees; if [ "${L}" != "en" ]; then cd _build/html/${L}; for D in _images _static; do rm -fR ${D}; ln -s ../en/${D}; done; cd -; fi; done`<br>
   Pull the translated resources and build the documentation in the target language. Please note that if you would like to build for any other language than English (en) or German (de) you will have to add the language code in the for loop. After building, the doctree-pickles are removed and, if the lanaguage is not English (default), the directories _images and _static are removed from the translated directories and linked to the respective directories under "en".<br>

   NB: Before using the weblate repository for the first time, it has to be added using the following command (the second part prevents from accidentially pushing to it):
   `$ git remote add weblate https://hosted.weblate.org/git/jamovidocs/0_start/ && git remote set-url --push weblate DISABLED`

   After it is pushed to the github-repository, readthedocs is reading from the respective language project there (which is then integrated into the main documentation).<br>

-----------

### How to contribute with your translations?<a name="translate"></a>

If you are willing to contribute to the project with translating it into your language, please [obtain further information about how to get involved](https://hosted.weblate.org/engage/jamovidocs/). The following status overview tells you how much content for your language already has been translated.

<a href="https://hosted.weblate.org/engage/jamovidocs/">
<img src="https://hosted.weblate.org/widgets/jamovidocs/-/multi-auto.svg" alt="Translation status" />
</a>

Please also have a look at two other translation projects related to jamovi, the [translation of the jamovi user interface](https://hosted.weblate.org/engage/jamovi/) and the [translation of the textbook "Learning statistics with jamovi"](https://hosted.weblate.org/engage/lsjdocs/)

We are grateful to the [Weblate-team](https://weblate.org/) who host libre projects as ours free of charge.
