��    G      T              �  �   �  r  �  �   �    �  �   �
  o   �  2   �  �  *  �   �     �  �  �  �   /    �  D   �     3  �   F     .     =     L  �  T  ]   4  �   �  �     f   �  �   I  �   D  `   �  �   G    �  �  �  u   �  u   )     �  �   �  m  a     �      �      �   	    !  �  
!     �"  �   #     �#  �   �#  �   �$  m   _%  u   �%  �  C&  (   �'  �  (  �   �)  �   �*     T+  h   b+  �  �+  �  �-  D  �/     �0     �0  \  �0     \3     e3     u3  9  �3  �  �4  a   �6     7     67     J7     c7  �  |7  �   ,9  �  :  �   �;  o  u<  �   �?  v   �@  7   +A  �  cA  �   -C     
D  8  D  �   LF  4  G  �   7H     �H    �H     �I     �I     �I  &   J  ]   'L  �   �L  �   M  g   �M    gN  �   uO  {   P  �   �P  �  JQ  �  �R  �   �T  �   LU     �U  �   �U  ~  �V     Y     0Y     IY     WY  �  ]Y  	   [  �   [     �[  �   �[  �   �\  �   �]     ^  �  �^  +   `  �  �`  	  lb  �   vc     d  L   .d  �  {d  0  lf  t  �h     j  $   ,j  q  Qj     �l     �l  (   �l  ?  m    Fn  ~   bp     �p     �p     q     ,q   *Computed variable*\ s can be added to the data set, with the ``Add`` button available on the data tab. This will produce a formula box where you can specify the formula. The usual arithmetic operators are available. Some examples of formulas are: A number of functions appear in pairs, one prefixed with a ``V`` and the other not. ``V`` functions perform their calculation on a variable *as a whole*, where as non-``V`` functions perform their calculation row by row. For example, ``MEAN(A, B)`` will produce the mean of ``A`` and ``B`` for each row. Where as ``VMEAN(A)`` gives the mean of *all* the values in ``A``. A separate mean is calculated for each level of ``dose``, and each value in the computed variable will be the mean corresponding to it’s row’s value of ``dose``. A very common format for exchanging data is using files with ‘comma- separated values’ (.csv or .txt). Given that these data are stored as simple text file using commas (or ";", "|", etc.) to separate values nearly any software package can read and write them (and you to can take a look using any text editor). An example is shown in the figure. The first line contains the variable names and any other line afterwards a measurement point (typically a person where data were acquired from). If you have your data in a spreadsheet program (e.g., Excel), you can create a CSV-file from your data by selecting ``File`` → ``Save as...`` and choose ``Comma delimited`` in the drop-down menu close to the ``Save as``-button. Thereafter, you may open the CSV-file in jamovi. Additionally ``V`` functions support a ``group_by`` argument (in \0.9.6 and up). When a ``group_by`` variable is specified, a separate value is calculated for each level of the ``group_by`` variable. In the following example: All the (original) names of the existing columns are matched to the names of the columns from the new data set. All the rows of the existing data set are deleted. Alternatively, existing data sets in a range of formats (CSV, Excel, LibreOffice, R, SPSS, Stata, SAS, JASP) can be opened in jamovi. Additionally, there are a number of example data sets available in jamovi. To open a file, select the file menu (☰, at the top left hand corner of jamovi), select ``Open`` and then ``Data library`` or ``This PC``, depending on whether you want to open an example, or a file stored on your computer. An overview with short, non-technical tutorials on how to do common procedures in jamovi can be found under `jamovi-guide <jg_0_welcome.html>`__ (later in this section). Analyses Analyses can be selected from the analyses ribbon or menu along the top. Selecting an analysis will present an ‘options panel’ for that particular analysis, allowing you to assign different variables to different parts of the analysis, and select different options. At the same time, the results for the analysis will appear in the right ‘Results panel’, and will update as you make changes to the options. Another R feature that may be of interest is the `Rj module <https://blog.jamovi.org/2018/07/30/rj.html>`__, which allows you to use R code to analyse data directly in jamovi. At present, the provided R syntax does not include the data import step, and this must be performed manually. There are many resources explaining how to import data into R, and we recommend you take a look at these (Most analyses in jamovi require data as a data frame). At present, there is no way to combine files horizontally in jamovi. Computed Variables Computed Variables are those which take their value by performing a computation on other Variables. Computed Variables can be used for a range of purposes, including log transforms, z-scores, sum-scores, negative scoring and means. Copy and Paste Data Variables Filters Filters in jamovi allow you to filter out rows that you don’t want included in your analysis. For example, you might want to only include people’s survey responses if they explicitly consented to having their data used, or you might want to exclude all left-handed people, or perhaps people who score ‘below chance’ in an experimental task. In some cases you just want to exclude extreme scores, for example those that score more than 3 standard deviations from the mean. Following a file import, all the filters, computed variables, transforms and analyses update. For a video introduction to import and templates in jamovi, see this `blog post <https://blog.jamovi.org/2019/03/27/import.html>`__. If jamovi does not open a file correctly, do file an issue (bug report) in our GitHub `issue tracker <https://github.com/jamovi/jamovi/issues>`__. We are keen to make our importer as robust as possible. If no new column matches the column names in the existing data set, then those columns are left blank. If you decide you no longer need a particular analysis, you can remove it with the results context menu. Right-clicking on the analysis results will bring up a menu, and by selecting ‘Analysis’, and then ‘Remove’, the analysis can be removed. Import is available from the file menu (☰) at the top left of jamovi. When you import a file into an existing data set, the following operations are performed: In jamovi, data is represented in a spreadsheet, with each column representing a ‘variable’. In order, these are the sum of A and B, a log (base 10) transform of ``len``, the mean of ``A`` and ``B``, and the z-score of ``dose`` (twice). In syntax mode, analyses continue to operate as before, but now they produce R syntax, and ‘ascii output’ like an R session. Like all results objects in jamovi, you can right click on these items (including the R syntax) and copy and paste them, for example, into an R session. It is also possible to import multiple files at once. This can be useful when you are combining multiple data sets, for example, where each file represents a participant. The process is the same as the single-file import detailed above, except that you select multiple files when performing the import. You can do this by holding down control or shift when selecting data files, or with the ‘multi-select’ button at the top of the import dialog. It is possible to simply begin typing values into the jamovi spreadsheet as you would any other spreadsheet software. More details about filters are covered in this `blog post <https://blog.jamovi.org/2018/04/25/jamovi-filters.html>`__ Multi-file Import New variables can be inserted or appended to the data set using the ``Add`` button from the data ribbon. The ‘add’ button also allows the addition of *Computed variables*. Once a data set is set up with filters, computed variables, transforms and analyses, sometimes you may want to update the data. This may be for a number of reasons – It might be that you have a new data set, that you want to apply the analyses you performed earlier to it, or you may be conducting an experiment where you’re tesing a number of participants, and you now have an additional participant’s data to analyse. By importing into an existing data set you can re-run your analyses without having to re-perform all of your data cleaning and analysis steps (making your jamovi files behave a bit like scripts). Recoded Variables Single-file Import Syntax Mode Templates Templates in jamovi are special data sets that are analagous to script files in more traditional statistical environments. They are a way to specify data types, computations, filters, transforms, and analyses in advance. Once the data becomes available, it can be imported into the template, and the template will update accordingly. The nice thing about jamovi templates is that they are entirely specified with the familiar user interface, and do not require working with a ‘syntax’ or code. The Spreadsheet The filters in jamovi are build on top of jamovi’s *computed variable* formula system, which allows the building of arbitrarily complex formulas. The first steps in jamovi The measure types are designated by the symbol in the header of the variable’s column. Note that some combinations of data-type and measure- type don’t make sense, and jamovi won’t let you choose these. The most commonly used variables in jamovi are ‘Data Variables’, these variables simply contain data either loaded from a data file, or ‘typed in’ by the user. Data variables can be one three data types: The new columns which did not match names in the original data set are appended to the right of the data set. The new values are imported to the existing columns, *keeping* the data and measure types from the existing data set. The variable editor can be invoked by selecting ‘Setup’ from the data tab, double-clicking on the column header, or by pressing ``F3``. The variable editor allows you to change the name of the variable, and (for data variables) the data type, the measure type, the order of the levels, and the label displayed for each level. The variable editor can be dismissed by clicking the close arrow, or by pressing ``F3`` again. There are many more functions available. To save a data set as a template, select ‘Export’ from the file menu, and select ‘jamovi template’ from the file type box. When opening a template, you’ll see it contains columns but no rows, and that all the analysis results are blank. To use the template, import a new data set (or data sets) using the file import described above. The data will update, followed by the filters, computed variables, and finally the analysis results. To the left is the spreadsheet view, and to the right is where the results of statistical tests appear. Down the middle is a bar separating these two regions, and this can be dragged to the left or the right to change their sizes. Transformed and recoded variables are also available. See this `blog post <https://blog.jamovi.org/2018/10/23/transforming-variables.html>`__ for details. Updating data When first starting jamovi, you will be presented with a user interface which looks something like this. When importing multiple files like this, they are combined vertically with the rows of the second file appearing below the first, the rows of the third file appearing below the second, and so on. An additional column called ``source`` is created detailing which file each row has come from. This can be useful when you need to ‘split-by’ or ‘group-by’ each participant. This column can be particularly useful to use with the ``group_by`` argument to ``V``-functions described above. When starting with a blank spreadsheet and typing values in, the data and measure types will change automatically depending on the data you enter. This is a good way to get a feel for which variable types go with which sorts of data. Similarly, when opening a data file, jamovi will infer the variable type from the data in each column. In both cases, this automatic approach may not be correct, and it may be necessary to manually specify the data and measure type with the variable editor. When you have the analysis set up correctly, you can dismiss the analysis options by clicking the arrow to the top right of the optional panel. If you wish to return to these options, you can click on the results that were produced. In this way, you can return to any analysis that you (or say, a colleague) created earlier. ``Decimal`` ``Integer`` ``Nominal`` and ``Ordinal`` are, predictably, for nominal and ordinal variables. ``Continuous`` is for variables with numeric values which are considered to be *Interval* or *Ratio* scales (Equivalent to ``Scale`` in SPSS). The ``ID`` measure type is, unlike the others, unique to jamovi. It’s intended for variables that contain identifiers that you would almost never want to analyse. For example, a persons name, or a participant ID. The advantage of IDs, is that jamovi does not need to maintain a list of levels internally, which can improve performance when interacting with very large data sets. ``Text`` ``V``-functions and one of four measure types: jamovi also provides an “R Syntax Mode”, in this mode, jamovi produces equivalent R code for each analysis. To change to syntax mode, select the application menu (⋮) at the top right of jamovi, and check the ``Syntax mode`` checkbox there. It is possible to leave syntax mode by clicking this a second time. jamovi produces nice APA formatted tables, and attractive plots. It is often useful to be able to copy and paste these, perhaps into a Word document, or into an email to a colleague. To copy results, right click on the object of interest, and from the menu select exactly what you want to copy. The menu allows you to choose to copy, say only the image, or the entire analysis. Selecting copy, copies the content to the clipboard, and can be pasted into the other program in the usual way. jamovi templates are also a great way to provide analyses to less capable students or colleagues. |continuous| ``Continuous`` |id|         ``ID`` |nominal|    ``Nominal`` |ordinal|    ``Ordinal`` Project-Id-Version:  jamovi
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2020-08-01 00:23+0200
PO-Revision-Date: 2020-07-20 23:24+0000
Last-Translator: Sebastian Jentschke, 2020
Language: nb
Language-Team: Norwegian Bokmål (https://www.transifex.com/jamovi/teams/111618/nb/)
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 *Beregnede variabler* kan legges til datasettet, med knappen ``Add`` under fanen «Data». Dette vil åpne en inputboks hvor du kan spesifisere formelen. De vanlige aritmetiske operatørene er tilgjengelige. Noen eksempler på formler er: Et del funksjoner vises i par, den ene forhåndsinnstilt med en ``V`` og den andre ikke. ``V``-funksjoner utfører sin beregning på en variabel *som en helhet*, der som ikke-``V``-funksjoner utfører sin beregning separat for hver rad. For eksempel vil ``MEAN(A, B)`` produsere gjennomsnittet av ``A`` og ``B`` for hver rad. I motsetning gir ``VMEAN(A)`` gjennomsnittet av *alle* verdiene i hele variabelen ``A``. Et separat gjennomsnitt beregnes for hvert nivå / trinn av ``dose``, og hver verdi i den beregnede variabelen vil være gjennomsnittet som tilsvarer den trinn av ``dose`` i denne raden. Et veldig vanlig format for utveksling av data er filer med ‘kommaseparerte verdier’ (.csv eller .txt). Disse data er lagret som enkel tekstfil og verdiene er separert fra hverandre ved hjelp av komma (eller andre separator, f.eks. ";", "|"). Mer eller mindre alle programvare-pakker kan lese og skrive denne formaten (og en kan enkelt ta en titt ved en simple teksteditor, f.eks. Notepad) . Et eksempel er vist på figuren ovenfor. Den første linjen inneholder navnene til variablene og enhver annen linje etterpå er et målepunkt (typisk kommer et målepunkt fra en person der data ble sammlet inn fra). Hvis du har dine data i et regnearkprogram (f.eks. Excel), kan du opprette en CSV-fil fra dataene dine ved å velge ``Fil`` → ``Lagre som...`` og velge ``Komma separert`` i drop-down-menyen nesten til ``Lagre som``-knappen. Deretter kan du åpne CSV-filen i jamovi. I tillegg støtter `V``-funksjoner et ``group_by`` -argument. Når en ``group_by``-variabel er spesifisert, beregnes separate verdier for hvert nivå / trinn i ``group_by``-variabelen. I følgende eksempel: Alle de (originale) navnene på de eksisterende kolonnene er matched ved navnene på kolonnene fra det nye datasettet. Alle radene i det eksisterende datasettet blir slettet. Alternativt kan eksisterende datasett i en rekke formater (CSV, Excel, LibreOffice, R, SPSS, Stata, SAS, JASP) åpnes i jamovi. I tillegg er det en rekke eksempel-datasett inkludert og tilgjengelige i jamovi. For å åpne en fil, velger du fil-menyen (☰, øverst i venstre hjørne av jamovi), velger ``Open`` og deretter ``Data library`` eller ``This PC``, avhengig av om du vil åpne et eksempel-datasett, eller en fil som er lagret på datamaskinen din. En oversikt med korte, ikke-tekniske trinn-etter-trinn instruksjoner om hvordan du gjennomfører ofte brukte statistiske analyser i jamovi, finner du under `jamovi-guide <jg_0_welcome.html>`__ (senere i dette avsnittet). Analyser Analyser kan velges fra ribbon-menyet i øvre delen av jamovi-vinduet. Å velge en analyse vil presentere et valgmeny for den analysen du er i gang ved å gjennomføre. Der kan du velge og tilordne variabler (f.eks. prediktorer eller utkomstvariabler), og velge forskjellige alternativer for utgave (dvs. hvilke utgavene skulle være vist). Samtidig med at du gjør dette, vil resultatutgaven for analysen din allerede begynne å vise i høyre 'resultatpanel', og vil etterpå oppdateres automatisk når du gjør endringer i opsjonsvalg eller tilordning av variablene. En annen R-funksjon som kan være av interesse er `Rj-modulen <https://blog.jamovi.org/2018/07/30/rj.html>`__, som lar deg bruke R-kode til å analysere data direkte innefor jamovi. For nå inkluderer denne R-syntaksen ikke dataimport-trinnet, og dette må legges til manuelt. Det er mange ressurser som forklarer hvordan du importerer data til R, og vi anbefaler at du tar en titt på disse (de fleste analyser i jamovi krever at data er lagret i en R-variabletype som heter *data frame*). På nåværende tidspunkt er det ingen mulighet i jamovi å importere filer og å kombinere dem horisontalt (dvs. å legge til variabler). Beregnede variabler Beregnede variabler er de som tar verdien fra å utføre en beregning på andre variabler. Beregnede variabler kan brukes til en rekke formål, inkludert log-transformasjoner, inversjon av an skaleverdi eller for å beregner summer, gjennomsnitter og z-scorer. Copy and Paste Data-variabler Filter Filtre i jamovi lar deg filtrere ut rader du ikke vil ha med i analysen. Det kan for eksempel være lurt å bare inkludere disse svarene i en undersøkelse
hvor folk ga eksplisitt samtykke til å bruke data sine, eller du kanskje vil ekskludere alle venstrehendte personer, eller kanskje personer som scorer overfor dette nivået du ville har oppnådd når du trykker på knapp helt tilfeldigvis i en eksperimentell oppgave. I noen tilfeller vil du bare ekskludere ekstreme verdiene, f.eks. de som scorer mer enn 3.3 standardavvik fra gjennomsnittet. Etter en filimport oppdateres alle filtre, beregnede variabler, transformasjoner og analyser. For videoinstruksjoner om import og maler i jamovi, kan du se på dette `blogg-innlegget <https://blog.jamovi.org/2019/03/27/import.html>`__. Hvis jamovi ikke åpner en fil på den korrekte måten, kan du sende inn et problem (feilrapport) i vår GitHub `issue tracker <https://github.com/jamovi/jamovi/issues>`__. Vi vil gjerne gjøre fil-import i jamovi så robust som mulig. Hvis ingen ny kolonne samsvarer med kolonnenavnene i det eksisterende datasettet, blir kolonnene tomme. Hvis du bestemmer deg at du ikke lenger trenger en bestemt analyse, kan du fjerne den med kontekst-menyen til denne analysen. Høyreklikk på analyseresultatene; det vil få opp en meny hvor du kan velge ‘Analyse’, og deretter ‘Fjern’. Da blir analysen slettet. Import er tilgjengelig fra filmenyen (☰) øverst til venstre i jamovi. Når du importerer en fil til et eksisterende datasett, utføres følgende operasjoner: I jamovi er data representert i et regneark, hvor hver kolonne representerer en ‘variabel’ og hver linje en målepunkt. I rekkefølge er dette: summen av A og B, en log (base 10) -transformasjon av ``len``, middelverdien av ``A`` og ``B``, og z-score til ``dose`` (med to forskjellige beregningsmåter). I syntaksmodus fortsetter analysene å fungere som før, men nå produserer de R-syntaks, og ‘ASCII output’ (uformatert tekstutgave) som om du kjører R. Du kan høyreklikke på hver av disse resultatobjektene eller deres elementene (inkludert R-syntaksen som står helt i begynnelsen av hver analyse) og kopiere dem. Etterpå kan du lime dem inn, f.eks. inn i en R-sesjon eller samle disse kommandoene i en tekstfil. Det er også mulig å importere flere filer samtidig. Dette kan være nyttig når du for eksempel kombinerer flere datasett der hver fil representerer en deltaker. Prosessen er den samme som når enkeltfil importeres slik som det ble beskrevet ovenfor. Den eneste forskjell er at du velger flere filer når du utfører importen. Du kan gjøre dette ved å holde Ctrl- eller Shift-taste nede når du velger datafilene, eller med knappen "multivalg" øverst i import-dialogen. Det er mulig å simpelthen begynne å tippe inn verdier i jamovi-regnarket som du ville har gjort for andre regnark-programvare. En mer omfattende fremstilling om filtre finnes i dette `blogg-innlegget <https://blog.jamovi.org/2018/04/25/jamovi-filters.html>`__. Import av flere filer Nye variabler kan settes inn eller legges til datasettet ved å bruke knappen 'Add' fra ribbon-menyet under "Data". Knappen "Add" tillater også å legge til *Beregnede variabler*. Når et datasett er satt opp med filtre, beregnede variabler, transformasjoner og analyser, kan det være lurt å oppdatere data. Dette kan være av flere årsaker: Det kan være at du har et nytt datasett, at du vil bruke samme analysene du har utført tidligere på det, eller at du kan utføre et eksperiment der du har testet en del deltakere, og du nå fikk data fra en ekstra deltager for å inkludere dem. Ved å importere til et eksisterende datasett kan du kjøre analysene dine på nytt uten å må utføre alle dine data rengjørings- og analysetrinn igjen. På denne måten oppfører seg jamovi-filene dine litt som en skript. Rekoderte variabler Import av en enkelte fil Syntaks-modus Maler Mal i jamovi er spesielle datasett som er tilsvarende skriptfiler i andre statistikk-pakker. De er en måte å spesifisere datatyper, beregninger, filtre, transformasjoner og analyser på forhånd. Når data blir tilgjengelige, kan de importeres til malen, og malen oppdateres deretter. Det fine med jamovi-maler er at de kan være spesifisert med det kjente brukergrensesnittet, og ikke krever å jobbe med ‘syntaks’ eller kode. Regnarket Filtrene i jamovi er bygget på toppen av formelsystemet for jamovis *beregnede variabler*, som gjør det mulig å bygge vedlig komplekse formler. De første trinnene i jamovi Målenivåene er utpekt med symbolet i overskriften kolonne, nesten til i variablenavnet. Vær oppmerksom på at noen kombinasjoner av datatyper og målenivåer ikke gir mening, og jamovi lar deg ikke velge disse. De oftest brukte variabletypen i jamovi er ‘data-variabler’. Disse variablene inneholder data som ble enten lastet inn fra en datafil, eller ‘tippet inn’ av brukeren. Data-variabler kan har en av disse tre datatypene: De nye kolonnene som ikke stemte overens med navnene i det originale datasettet, legges til høyre for det eksisterende datasettet. De nye verdiene importeres til de eksisterende kolonnene, *holder* datatypene og målenivåene fra det eksisterende datasettet. Variableeditoren kan åpnes ved å velge ‘Setup’ fra fane «Data», dobbeltklikke på kolonneoverskriften, eller ved å trykke på ``F3``. Variableeditoren lar deg endre navnet på variabelen, og (for datavariabler) datatypen, målenivået, rekkefølgen på faktor-trinn (for nominale og ordinale variabler) og beskrivelse for hele variabelen (*variable label*) og for hvert trinn av verdiene (*value label*). Variableeditoren kan stenges ved å klikke på pilen, eller ved å trykke på ``F3`` igjen. Det er mange flere funksjoner tilgjengelig. Hvis du vil lagre et datasett som mal, velger du 'Export' fra filmenyen og velger 'jamovi template' fra filtype-valgmeny. Når du åpner en mal, ser du at den inneholder kolonner, men ingen rader, og at alle analyseresultatene er tomme. Hvis du vil bruke malen, importerer du et (eller flere) nye datasett ved å bruke fil-importen beskrevet ovenfor. Data vil oppdateres, etterfulgt av filtrene, beregnede variabler og til slutt analyseresultatene. Til venstre vises en tabell som ser ut som et regneark, og til høyre kan du ser hvor resultatene av statistiske tester vises. I midten er en stolpe som skiller disse to områdene, og denne kan dras til venstre eller høyre for å endre størrelse på de to delene. Transformerte og rekoderte variabler er også tilgjengelige. Se dette `blogg-innlegget <https://blog.jamovi.org/2018/10/23/transforming-variables.html>`__ for detaljer. Oppdatere data Når du starter jamovi, vil du se et brukergrensesnitt som ser ut som dette. Når du importerer flere filer, blir de kombinert vertikalt med at radene til den andre filen vises under den fra første, radene til den tredje filen vises under den fra andre, og så videre. En ekstra kolonne kalt ``kilde`` opprettes med detaljer om hvilken fil hver rad har kommet fra. Dette kan være nyttig når du trenger å «dele opp» eller «gruppere» hver deltaker. Denne kolonnen kan være spesielt nyttig å bruke med ``gruppe_by``-argumentet til ``V``-funksjoner beskrevet ovenfor. Når du begynner med et tomt regneark og skriver inn verdier, endres datatypene og målenivåene automatisk avhengig av data du skriver inn. Dette er en god måte å få en følelse av hvilken datatypen passer til hvilke slags data. På samme måte, når du åpner en datafil, vil jamovi analysere data i hver kolonne og automatisk tilskrive det en datatypen. I begge tilfeller kan det hende at denne automatiske tilnærmingen ikke er helt riktig, og det kan være nødvendig å spesifisere datatypene og målenivåene manuelt med variableeditoren i etterkant. Når du har konfigurert analysen riktig, kan du stenge analyse-valgmeny ved å klikke på pilen øverst til høyre i dette panelet. Hvis du ønsker å gå tilbake til valgmenyet, kan du klikke på resultatene. På denne måten kan du gå tilbake til og, hvis nødvendig, forandre hvilken analyse som helst etter det har vært opprettet tidligere av deg (eller en kollega). ``Desimal`` (desimaltall) ``Integer`` (heltall uten desimaler) Blant målenivåene er ``Nominal`` og ``Ordinal`` (forutsigbart) for nominale og ordinale variabler. ``Continuous`` er for variabler med numeriske verdier som anses å være på enten *interval* eller *ratio*-målenivået (i SPSS ville det har vært ``Scale``). Målenivået ``ID`` er unik for jamovi. Det er tenkt for variabler som inneholder identifikatorer som du (nesten) aldri vil analysere. For eksempel et personnummer, eller en deltaker-ID. Fordelen med ID-er er at jamovi ikke trenger å opprettholde en liste over nivåer internt, noe som kan forbedre hastighet på analyser når du handterer veldig store datasett. ``Text`` ``V``-funksjoner og en av de følgende fire målenivåer: jamovi tilbyr også en «R Syntax Mode». I denne modusen produserer jamovi R-kode for hver analyse. For å bytte til denne syntaksmodusen, velg applikasjonsmenyen (⋮) øverst til høyre i jamovi og tikk ``Syntax mode`` der. Det er mulig å forlate syntaksmodus ved å klikke på dette en gang til og å ta vekk tikk. jamovi produserer fine APA-formaterte tabeller og attraktive figurer. Det er enkelt og ofte veldig nyttig å bare kopiere og lime dem inn, kanskje i et Word-dokument, eller i en e-post til en kollega. For å kopiere resultater, høyreklikk på resultatobjektet av interesse, og velg nøyaktig hva du vil kopiere fra kontekstmenyen. Menyen lar deg velge å kopiere, f.eks. bare et bilde, en tabelle eller hele analysen. Når du velger ``Copy``, kopierer innholdet til utklippstavlen og kan limes inn i det andre programmet på vanlig måte. jamovi-maler er også en flott og enkelt måte å gi analyser til studenter eller kolleger som er kanskje litt mindre erfaren. |continuous| ``Kontinuerlig`` |id|         ``ID`` |nominal|    ``Nominal`` |ordinal|    ``Ordinal`` 