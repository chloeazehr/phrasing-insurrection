---
layout: default
title: "Tools and Resources"
permalink: /tools-and-resources/
---

## Computational Tools and Data/Archival Resources
### R and Rstudio
The code for this project was written in [R](https://www.r-project.org/), an open-source programming lagnuage designed for data analysis and statstical computing, and compiled in [Rstudio](https://posit.co/download/rstudio-desktop/), an open-source integrated development environment that (IDE) that allows for better interfacing with R. Like popular programming languages like Python, R has great utility for computational text mining—as it has numerous libraries that faciliate text data exploration, experimentation, and visualization. While R is not as general purpose as other programming languages (Python, Java, C++, etc.), it has a lower barrier to entry for interdisciplinary scholars and novice coders like myself. For historians and digital humanists alike looking to learn data science techniques in R or Python, the free online resource [Coding the Past](https://www.codingthepast.com/) offers numerous intructory, intermediate, and advanced tutorials based in historical methods and data. In addition, resources such as the [Programming Historian](https://programminghistorian.org/en/lessons/) offer more advanced programming lessons that explore topics such as distant reading techniques, mapping, and network analysis. 

### Databases
The cited primary sources and data created for this project are derived from the following online databases: 
- I manually derived the text data for the *South Carolina Gazette* and the *Virginia Gazette* from [History Commons](https://history-commons-net.colorado.idm.oclc.org/) online collections of both publications which have been scanned and digitized. These data can be found in the folders for Corpus One and Corpus Two.
- For transatlantic and intercolonial (or intra-American) slave trade data I used [SlaveVoyages.org](https://www.slavevoyages.org/)
- For eighteenth century anti-slavery legislation I employed the digital reference archive, [U.S. Anti-Slavery Laws Archive](https://usantislaverylaws.org/public/index.php), that I created with Dr. Henry Lovejoy in collaboration with the University of Colorado Boulder's [Digital Slavery Research Lab](https://www.colorado.edu/lab/dsrl/), and with technical support from the team at [Walk With Web](https://walkwithweb.org/Public/) in the summer of 2023. This digital reference archive contains primary source documents based on the legislation collected in appendices A and B in W.E.B. Du Bois, *The Suppression of the African Slave-Trade to the United States of America, 1638–1870*, originally published in 1896. This archive, which retraces W.E.B. DuBois' thesis at Harvard, hosts over 300 pieces of anti-slavery legislation enacted in the Thirteen Colonies and United States since the 1600s.
- For colonial newspapers outside of the *South Carolina Gazette*, *Virginia Gazette*, and *Pennsylvania Gazette* I used the database [America's Historical Newspapers](https://infoweb-newsbank-com.colorado.idm.oclc.org/apps/readex/?p=EANX) hosted by Readex.

### Useful R Libraries and External Tools
#### External Tools
- PassivePy: a python and spacy based transparent tool developed by Amir Sepehri, Mitra Sadat Mirshafiee, and David M. Markowitz to automatically detect passive voice. [PassivePy](https://github.com/mitramir55/PassivePy), which also has a [streamlit application](https://passivepy.streamlit.app/), enables researches to automatically detect passive voice constructions in both large and small text data, making it a versatile and flexible tool for examining English language text data (inclduing historical).
- Sketch Engine: [Sketch Engine](https://www.sketchengine.eu/) is an online computational corpus linguistics platform that supports a wide variety of tools for examining language. The primary draw back of this platform is that it is subscription based.
  
#### Basic Utility Libraries in R
- `lubridate`: for working with dates and times
- `tidyverse`: provides general data and text analysis utility

#### Loading Data Libraries in R
- `readxl`: loads excel worksheets into Rstudio environment as object (dataset)
- I also made extensive use of R's base capability for reading csv files into the environment

#### Useful Text Mining (many of these overlap in functionality and dependencies) Libraries in R
- `udpipe`: this package provides access to natural language processing techniques such as tokenizing, tagging, lemmatization, and dependency parsing
- `tm`: faciliates easier creation and inspection of textual corpora
- `stringr`: helps to work with and manipulate strings
- `NLP`: a natural language processing library
- `tokenizers`: a tool for easily tokenizing text into machine readable components
- `stringi`: a useful pattern searching/detection tool that allows for the use of regular expressions
- `quanteda`: works with text data and has a built in concordance feature
- `textstem`: performs lemmatization and stemming
- `tidytext`: facilitates conversion of data into tidy formats

#### Visualization Libraries in R
- `ggplot2`: provides access to versatile graphic visualizations and customization
- `ggraph`: an extension of ggplot that enables a more flexible framework for visualizing networks using layers
- `igraph`: for network analysis and visualization

#### Visualization Aesthetics Libraries in R
- `extrafont`: allows access to large libary of fonts for designing visualizations
- `svglite`: enables visualizations to be exported as .svg files to maintain quality when resizing
- `ggrepel`: for graphing aesthetics with word

#### A Note on Replicating Results and Code
I have attempted to thoroughly annotate and document my code in the RMD files stored within this repository for each corpus. Each code chunk has an explanatory title and other necessary information regarding the code. However, for more complex coding skills, such as adapting the functions I wrote for tokenizing text or appending year information, please consult outside resources to ensure that any code replicated or adapted meets desired requirements. Keep in mind that this code was designed for working with small amounts of historic text data and thus is a specific use-case. 
