# Corpus 1 Description
Corpus 1 is a dataset I generated from [History Commons](https://history-commons.net/) online archives that contains 18,060 words published across forty-five articles in the *South Carolina Gazette* between the 1730s and the 1770s that reference varying forms of collective enslaved resistance.

## Folder Structure
The folder for Corpus 1 contains three sub-folders: Data, PassivePy Analysis, and UDPIPE Part of Speech Tagging and Analysis.

### Data Folder Contents:
- Corpus1-overview.md: A file that describes the contents of the Corpus 1 dataset - including each variable included
- Corpus_One.csv: The original csv file of manually collected data and metadata

### PassivePy Analysis Contents: 
- Code: The Code folder contains my markdown document that highlights all the code I used to clean and analyze Corpus 1 with the [PassivePy](https://github.com/mitramir55/PassivePy) (automatic passive voice detection tool). In the code, I have added descriptions for each code chunk that highlights necessary packages and methods.
- Data: The Data folder contains all csv dataframes I generated in in R and from the [PassivePy streamlit application](https://passivepy.streamlit.app/). My markdown document provides an overview of the variables included in the outputs of PassivePy analysis. This includes data such as trends in passive and active voice in three year intervals and full sentence level results for the entire corpus.
- Visualizations: This folder contains select visualizations generally in the svg format that were included in my thesis.

### UDPIPE Part of Speech Tagging and Analysis
- Code: The Code folder contains my markdown document that highlights all the code I used to clean and analyze Corpus 1 including general EDA (exploratory data analysis) and annotation with the [UDPIPE package](https://cran.r-project.org/web/packages/udpipe/index.html). In the code, I have added descriptions for each code chunk that highlights necessary packages and methods.
- Data: The Data folder contains all csv dataframes generated from this analysis, such as the annotated dataframes produced by UDIPIPE which includes variables such as part of speech, sentence ID, year (I appended this variable), dependency relation, etc. This folder also includes the data I produced to investigate diachronic pronoun usage.
- Visualizations: This folder contains select visualizations generally in the svg format that were included in my thesis.

