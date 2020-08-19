.. sectionauthor:: `Barton Poulson <https://datalab.cc>`__

.. wget -O - https://www.youtube.com/playlist?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn | sed -e 's/[{}]/''/g' | awk -v k="text" '{n=split($0,a,","); for (i=1; i<=n; i++) print a[i]}' | grep -v trackingParams | tr -d '"' | grep -A62 'title:accessibility' | grep '^simpleText:[a-z,A-Z]\|^videoId:' | sed 's/simpleText://' | sed 's/videoId:/|/'

=========================================
jamovi: An introduction with short videos
=========================================

`jamovi <https://www.jamovi.org/>`__ is a free, open-source application that
makes data analysis easy and intuitive. jamovi menus and commands are designed
to simplify the transition from programs like 
`SPSS <https://www.ibm.com/products/spss-statistics>`__
but, under the hood, jamovi is based on the powerful statistical programming
language `R <https://www.r-project.org/>`__. jamovi has a clean, human-friendly
design that facilitates insight into your data and makes it easy to share your
work with others. In this introductory course, you’ll learn how you can use
jamovi to refine, analyze, and visualize your data to get critical insights.

**Course Information**:

- Introductory level
- 56 streaming video tutorials
- 4 hours 41 minutes of instruction
- Created by Barton Poulson from |datalab|
- Released 06 August 2018, updated 07 March 2019
- Download the free course files
  `here <https://drive.google.com/drive/folders/1gJJ9di69FBZPhAdG9dWqXHZnR_JJry0G?usp=sharing>`__
  or preview them on OSF.io `here <https://bit.ly/jamovi-osf>`__
   
---------

*Note.* To navigate the videos while being in YouTube, click on the menu icon (☰) at the top right of the video.

---------------
GETTING STARTED
---------------

- `Welcome <https://www.youtube.com/embed/Ej9e8lzaeDE?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (1:26)
- `Installing jamovi <https://www.youtube.com/embed/syx0f4xCxpk?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (0:34)
- `Navigating jamovi <https://www.youtube.com/embed/e2Wc2wpWk4Y?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (5:20)
- `Sample data <https://www.youtube.com/embed/GkqrmufO3yU?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (2:01)
- `Sharing files <https://www.youtube.com/embed/X0GNondPmrk?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (1:32)
- `Sharing with OSF.io <https://www.youtube.com/embed/ryiGWk8DwgY?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (3:18)
- `jamovi modules <https://www.youtube.com/embed/Zm1xAy6HkUo?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (4:11)
- `The jmv package for R <https://www.youtube.com/embed/g5lnGkIeyw0?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (5:03)


--------------
WRANGLING DATA
--------------

- `Wrangling data: chapter overview <https://www.youtube.com/embed/B2OgFq05QMs?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (1:30)
- `Entering data <https://www.youtube.com/embed/bGLFzfID2-M?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (2:04)
- `Importing data <https://www.youtube.com/embed/R0uE4LlHeac?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (4:51)
- `Variable types \u0026 labels <https://www.youtube.com/embed/7tlvuYO76Ok?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (6:10)
- `Computing means <https://www.youtube.com/embed/-t1Q52QChoo?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (3:54)
- `Computing z-scores <https://www.youtube.com/embed/EBvvkvqm9_o?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (1:56)
- `Transforming scores to categories <https://www.youtube.com/embed/moIsRlUZabw?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (3:42)
- `Filtering cases <https://www.youtube.com/embed/pij0KlFhITw?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (8:26)


-----------
EXPLORATION
-----------

- `Exploration: chapter overview <https://www.youtube.com/embed/PCOKKSj1kng?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (1:06)
- `Descriptive statistics <https://www.youtube.com/embed/srqNCux0ijY?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (5:27)
- `Histograms <https://www.youtube.com/embed/10oomNrNe6w?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (4:25)
- `Density plots <https://www.youtube.com/embed/P-btx3PE1IA?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (3:23)
- `Box plots <https://www.youtube.com/embed/bYV8nNunsEI?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (3:26)
- `Violin plots <https://www.youtube.com/embed/F_GeCkgAK6s?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (2:38)
- `Dot plots <https://www.youtube.com/embed/NelbTBddZow?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (3:07)
- `Bar plots <https://www.youtube.com/embed/SGtGAISq4kA?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (3:28)
- `Exporting tables & plots <https://www.youtube.com/embed/By5UxD3LM5M?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (9:25)


-------
T-TESTS
-------

- `t-tests: chapter overview <https://www.youtube.com/embed/mb7KCLYEis8?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (1:14)
- `Independent-samples t-test <https://www.youtube.com/embed/SM-DN9dpPd4?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (6:40)
- `Paired-samples t-test <https://www.youtube.com/embed/lSjfYYiJG6E?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (5:13)
- `One-sample t-test <https://www.youtube.com/embed/DrBT4ezYIL8?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (7:08)


-----
ANOVA
-----

- `ANOVA: chapter overview <https://www.youtube.com/embed/GcbMG6sizXs?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (1:58)
- `ANOVA <https://www.youtube.com/embed/TJoJTVgDyqY?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (7:03)
- `Repeated-measures ANOVA <https://www.youtube.com/embed/m5JNwPgiMso?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (9:50)
- `ANCOVA <https://www.youtube.com/embed/d_SYORH6tUg?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (6:40)
- `MANCOVA <https://www.youtube.com/embed/doTm20CvxE8?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (7:13)
- `Kruskal-Wallis test <https://www.youtube.com/embed/qfs6T311_88?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (6:00)
- `Friedman test <https://www.youtube.com/embed/MCdSJ9d6h8Y?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (5:30)


----------
REGRESSION
----------

- `Regression: chapter overview <https://www.youtube.com/embed/gRhVjKNWiUs?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (2:08)
- `Correlation matrix <https://www.youtube.com/embed/u5kZ4erx8QE?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (7:32)
- `Linear regression <https://www.youtube.com/embed/_5AVGuEzCXc?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (6:14)
- `Variable entry <https://www.youtube.com/embed/N4jHzi1DWkQ?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (7:15)
- `Regression diagnostics <https://www.youtube.com/embed/ePYgkq3IvG8?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (6:20)
- `Binomial logistic regression <https://www.youtube.com/embed/s7GL0z-3ymA?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (9:01)
- `Multinomial logistic regression <https://www.youtube.com/embed/nuyEUEBf-GQ?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (8:48)
- `Ordinal logistic regression <https://www.youtube.com/embed/QnG8Tq80Qwc?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (8:16)


-----------
FREQUENCIES
-----------

- `Frequencies: chapter overview <https://www.youtube.com/embed/lKPHTFjY4m8?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (2:19)
- `Binomial test <https://www.youtube.com/embed/3eeiAFfY2ls?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (4:53)
- `Chi-squared goodness-of-fit <https://www.youtube.com/embed/FfabgyEKwtk?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (6:27)
- `Chi-squared test of association <https://www.youtube.com/embed/vsrj647Tb3g?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (5:21)
- `McNemar test <https://www.youtube.com/embed/W_y6EiF8mPA?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (4:54)
- `Log-linear regression <https://www.youtube.com/embed/iWlZ9xvghN0?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (5:46)


---------------
FACTOR ANALYSES
---------------

- `Factor: chapter overview <https://www.youtube.com/embed/c-k4zN7n7d8?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (1:50)
- `Reliability analysis <https://www.youtube.com/embed/KQrLw1qInI8?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (7:26)
- `Principal component analysis <https://www.youtube.com/embed/1U6SYVtGnD8?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (7:58)
- `Exploratory factor analysis <https://www.youtube.com/embed/WcqBo5m2Wfc?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (7:35)
- `Confirmatory factor analysis <https://www.youtube.com/embed/2LzoRo3sziU?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (8:53)


----------
CONCLUSION
----------

- `Next steps <https://www.youtube.com/embed/xShg0fPI6mo?list=PLkk92zzyru5OAtc_ItUubaSSq6S_TGfRn>`__ (5:59)

----------

**Revision history**

- 07 March 2019

  - Video “Computing variables” split into three new videos: “Computing means”,
    “Computing z-scores”, and “Transforming scores to categories”.
  - Video “Linear regression” revised and split into three videos: “Linear
    regression”, “Variable entry” and “Regression diagnostics”.
  - Several additional videos revised to reflect updated options in jamovi or
    to remove video glitches.

- 11 January 2019

  - Video “Filtering cases” revised to include the ability to use functions
    within filters.
  - Video “Exporting tables & plots” revised to include new export options for
    Mac and demonstrate additional export destinations.
    
.. ----------------------------------------------------------------------------

.. |datalab|             image:: ../_images/icon-datalab.png
   :width: 100px
   :target: https://datalab.cc/tools/jamovi
