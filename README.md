# jamoviDocs

jamovi documentation using Sphinx. The documentation is available at https://jamovi.readthedocs.org (and translations can be chosen by clicking at the menu that unfolds after pressing at «Read the Docs» at the bottom). Whoever would like to contribute with translations, please read a little [further down](#translate).

-----------

### Install and build (first time):

   `$ python -m venv _env`<br>
   `$ source _env/bin/activate`<br>
   Set up and activate the virtual environment.<br>

   `$ pip install -r requirements.txt`<br>
   Install the required packages (wheels) in the virtual environment.<br>

   NB: One can als pull directly from the weblate repository. If one wishes to do so, one has to add it using the following command (the second part prevents from accidentially pushing to it):
   `$ cd _locale && git remote add weblate https://hosted.weblate.org/git/jamovidocs/0_start/ && git remote set-url --push weblate DISABLED && cd ..`

-----------

### Install and build (later):

   `$ source _env/bin/activate`<br>
   Set up and activate the virtual environment.<br>
   
   `$ pip list --outdated --format=json | jq '.[].name' | xargs -n1 pip install -U`
   Update the required packages (wheels) in the virtual environment (if necessary).<br>

   `$ ./.crtLng.sh` or perhaps (if there is an error about locales)<br>
   `$ LC_ALL='en_GB.utf8' ./.crtLng.sh`<br>
   Creates / updates the language files.
   `$ rm -fR _build/{html,doctrees} && git submodule update --remote && git add _locale && git commit -m "Weblate-updates ($(date +%F))" _locale && git push && for L in $(less .languages); do echo -e "\n\n\nProcessing ${L}\n"; sphinx-build -b html -D language=${L} . _build/html/${L}/latest; rm -fR _build/html/${L}/latest/.doctrees; cd _build/html/${L} && ln -s latest/_static && cd -; done`<br>
   Pull the translated resources and build the documentation in the target language. Please note that if you would like to build for any other language than English (en) or German (de) you will have to add the language code in the `.languages` file. After building, the doctree-pickles are removed and, if the lanaguage is not English (default), the directories _images and _static are removed from the translated directories and a link is created to the respective directories under "en".<br>

   After the updated translations (in the subdirectory `_locale`, update with `git submodule update --remote`) are pushed to the “main” repository (`git commit -m "Weblate-updates ($(date +%F))" _locale && git push`), readthedocs is reading from the respective language project there (which is then integrated into the main documentation).<br>

-----------

### How to contribute with your translations?<a name="translate"></a>

If you are willing to contribute to the project with translating it into your language, please [obtain further information about how to get involved](https://hosted.weblate.org/engage/jamovidocs/). The following status overview tells you how much content for your language already has been translated.

<a href="https://hosted.weblate.org/engage/jamovidocs/">
<img src="https://hosted.weblate.org/widgets/jamovidocs/-/multi-auto.svg" alt="Translation status" />
</a>

Please also have a look at two other translation projects related to jamovi, the [translation of the jamovi user interface](https://hosted.weblate.org/engage/jamovi/) and the [translation of the textbook "Learning statistics with jamovi"](https://hosted.weblate.org/engage/lsjdocs/)

We are grateful to the [Weblate-team](https://weblate.org/) who host libre projects as ours free of charge.
