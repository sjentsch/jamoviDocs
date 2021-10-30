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

   `$ clear && make clean && make gettext && cat .exclude | while read -r line; do rm -fR ${line}; done && for F in $(find _build/gettext/* -type f -name *.pot); do sed -n '/msgid "|.*|"/{N;s/.*//;x;d;};x;p;${x;p;}' ${F} | cat -s | sed 1d > tmp.pot && mv tmp.pot ${F}; done && for F in $(find _locale -name *.po); do FS=$(echo ${F} | cut -d"/" -f4-); if [ ! -e "_build/gettext/${FS}t" ]; then if [ $(grep "^msgstr" ${F} | grep -cv '^msgstr ""$') -eq 0 ]; then rm ${F}; else mv ${F} ${F}.rmv; fi; fi; done && sphinx-intl update -p _build/gettext/ -l da,de,es,fr,it,ja,ko,no,pt,ru,sv,tr,zh`<br>
   The line combines several commands (separated by `&&` so that the next command is only run if the previous one was finished without error.
   The first two commands clear the screen and clean the _build directory.
   The third command (make gettext) creates the text files (.pot) that later form the starting point for the translation files.
   The fourth command removes those files defined in .exclude because certain parts of the documentation, e.g., the developers-hub are not supposed to be translated.
   The fifth command does some cleaning in the .pot-files.
   The sixth command (for F in ...) checks whether each translation file (.po) has a respective original (.pot). If not, those files are either deleted (if it doesn't contain any formerly translated strings) or the names of file is changed by appending .rmv (those files can then be checked which earlier translations they contain; those can then be  copied over manually and afterwards the .rmv-file can be removed).
   The last command (for L in ...) finally creates the output files for the translation into the different languages.<br>
     
   `$ git checkout weblate/weblate-jamovi-jamovidocs -- _locale && for L in en de es nb tr; do sphinx-build -b html -D language=${L} . _build/html/${L}; if [ "${L}" != "en" ]; then cd _build/html/${L}; for D in _images _static; do rm -fR ${D}; ln -s ../en/${D}; done; cd -; fi; done`<br>
   Pull the translated resources and build the documentation in the target language. Afterwards, if the lanaguage is not English (default), remove the directories _image and _static from the translated directories and link them to the respective directories under "en".<br>

   NB: Before using the weblate repository for the first time, it has to be added using the following command (the second part prevents from accidentially pushing to it):
   `$ git remote add weblate https://github.com/weblate/jamoviDocs.git/ && git remote set-url --push weblate DISABLED`
   
   After it is pushed to the github-repository, readthedocs is reading from the respective language project there (which is then integrated into the main documentation).<br>
