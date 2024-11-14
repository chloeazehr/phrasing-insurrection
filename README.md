# Phrasing Insurrection: A Computational Study of the Grammars of Collective Enslaved Resistance in the *South Carolina Gazette* and *Virginia Gazette* between 1732 and 1775
This respository contains the associated data and code for "Phrasing Insurrection: A Computational Study of the Grammars of Collective Enslaved Resistance in the *South Carolina Gazette* and *Virginia Gazette* between 1732 and 1775." This study explores how digital methods, such as text mining and computational corpus linguistics, can inform novel research questions and approaches to what we can know about white colonial conceptions of collective enslaved resistance in the eighteenth century. 

## Project Description
This thesis explores the scopes and limitations of what text mining for historical analysis can reveal about the cognizant work of white settlers, slave traders, merchants, ship captains, planters, and administrators to iteratively make sense of collective enslaved resistance within a social order predicated on the production of racial difference. In turn, computational text analysis brings into view habitual grammatical constructions, such as colonial reports’ reticence to situate enslaved people as syntactic agents in accounts referencing forms of occurred or intended violent black unrest, that white authors mobilized to reinforce and reshape contingent boundaries of white subjecthood, otherness, enslaveability, and property in the eighteenth century. What can re-counting words reveal?

In doing so, this project employs digital methods to re-examine the well-trod archives of North American colonial newspapers’ coverage of collective enslaved resistance, experimentally represented by text data derived from the *South Carolina Gazette* and Virginia Gazette between the 1730s and 1770s, to investigate new dimensions in the relationship between black unrest and grammar in South Carolina and Virginia’s colonial press. I employ careful computational analysis of grammatical features alongside such sources as slave trade data, colonial legislation, and secondary scholarship to examine how the rhetoric published in the *South Carolina Gazette* and *Virginia Gazette* reflected regional, colonial, and imperial conceptions of enslaved resistance. Digital methods, which render visible relatively understudied linguistic patterns in the *South Carolina Gazette* and *Virginia Gazette*’s reports on enslaved resistance, act as a window into how we might clarify the social and psychological processes that both disrupted and rationalized hereditary racial slavery in eighteenth century North America. Over the course of the study, I embrace digital historian Jo Guldi's methodology and theory of critical search—an enthusiastic attitude of openness to qualitative and quantitative iteration—to reinforce and advance nuanced arguments about the relationship between structure of language, empire, hereditary racial slavery, and black resistance. This is the first computational study of text data derived from the eighteenth century colonial press regarding representations of collective enslaved resistance in North America and the greater Atlantic. 

To locate and isolate lexical descriptions of armed or violent black unrest, I define the rhetoric of collective enslaved resistance—a phrase I employ interchangeably with the historian Kellie Carter Jackson’s notion of black “political violence,”—as the language white authors used to describe, lament, and imagine acts of open enslaved insurrection, conspiracy scares, plots, and uprisings.  Therefore, the language in which the colonial press presented other methods of individual, or what historians have often described as everyday enslaved resistance, such as escape, work slowdowns, and sabotage is generally excluded from textual data examined in this project. However, methods of black political violence and enslaved resistance in the eighteenth century were never mutually exclusive.

As a case study, this project engages with contemporary discussions at the forefront of interdisciplinary scholarship at the intersections between studies of early modern slavery, enslaved resistance, colonialism, race, and capitalism and digital history, digital humanities (particularly critical black DH), and data science. 

## Why Digital History?

### Overview of the Transatlantic and Intercolonial Slave Trades to South Carolina and Virginia alongside Reports Refercing Collective Enslaved Resistance printed in the *South Carolina Gazette* and *Virginia Gazette* in the Eighteenth Century
Below, I generated two rudimentary maps that display general embarkation regions of transatlantic and intercolonial voyages weighted by the number of enslaved captives that arrived in South Carolinia and Virginia ports and the locations referenced in the *South Carolina Gazette* and *Virginia Gazette*'s reports regarding collective enslaved resistance. These maps can be re-created by following the University of California, Santa Cruz (UCSC) guide's for mapping data from [SlaveVoyages.org](https://www.slavevoyages.org/). To find the general guide for generating a map in QGIS see [Mapping Data from SlaveVoyages.org](https://guides.library.ucsc.edu/DS/Resources/Class-Specific/LALS194E/MappingData). For creating a heatmap and displaying basic change over time with [QGIS software](https://www.qgis.org/) (Quantum Geographic Information System) see the [Heatmaps and Change over Time](https://guides.library.ucsc.edu/DS/Resources/Class-Specific/LALS194E/Heatmaps) tutorial. These tutorials come from UCSC's course [LALS 194E - Unfree Migrations](https://guides.library.ucsc.edu/DS/Resources/Class-Specific/LALS194). I adapted these guides to meet my project's objectives, including adding layers that could display the referenced locations from the colonial press. Moreover, these maps are only starting points—it is critical bear in mind that they dispay in a disarmingly whimsical manner, the violent and obscene trafficking of people from Africa and their descendants during the eighteenth century. Moreover, the data displayed should not be taken as complete or wholly representative of the scale of human trafficking during this period. Remember: data are people.

What these maps do afford is a unique perspective on the forced migrations of enslaved captives alongside when and where news regarding collective enslaved resistance was printed in the *South Carolina Gazette* and *Virginia Gazette.*

#### Map of Transatlantic and Intercolonial Embarkation Locations and the Referenced Locations of Collective Enslaved Resistance in the *South Carolina Gazette* between 1732 and 1775

This map illustrates the violent trafficking of people from Africa and their descendants to the British North American colony of South Carolina between 1732 and 1775. It is important to note that this map currently solely displays data by year because the data for specific dates that voyages began and ended are often incomplete (this is especially true of data regarding the date of enslaved captives purchase and embarkation from Africa and other Atlantic colonies). Using a heatmap, this map displays extant locations of [transatlantic](https://www.slavevoyages.org/voyages/kWfksL9o) and [intercolonial](https://www.slavevoyages.org/voyages/dU1QsMYL) embarkation regions derived from the Slave Voyages database. The heatmap is weighted by the number of captives who arrived at the first port of disembarkation—in this case the ports in South Carolina, namely Charleston. This means that the lighter the visualization becomes (yellow) the greater the number of captives are concentrated in that area and the darker (purple) the fewer captives. The red star markers highlight the locations mentioned in the *South Carolina Gazette*'s coverage of news related to enslaved resistance—including reports of occurred insurrections, conspiracy scares, legislation, editorials, news of rebels (both enslaved and self-liberated black communities), and shipboard uprisings. This map was generated using QGIS, the free and open-source counterpart to ArcGIS. 

#### Map of Transatlantic and Intercolonial Embarkation Locations and the Referenced Locations of Collective Enslaved Resistance in the *Virginia Gazette* between 1736 and 1775
![Virginia_sv_vg_1736_1775](https://github.com/user-attachments/assets/520dd234-1100-434f-8784-96c326e1ab44)
This map illustrates the violent trafficking of people from Africa and their descendants to the British North American colony of Virginia between 1736 and 1775. It is important to note that this map currently solely displays data by year because the data for specific dates that voyages began and ended are often incomplete (this is especially true of data regarding the date of enslaved captives purchase and embarkation from Africa and other Atlantic colonies). Using a heatmap, this map displays extant locations of [transatlantic](https://www.slavevoyages.org/voyages/qYCan1Ao) and [intercolonial](https://www.slavevoyages.org/voyages/xMxYCnNz) embarkation regions derived from the Slave Voyages database. The heatmap is weighted by the number of captives who arrived at the first port of disembarkation—in this case the ports in Virginia. This means that the lighter the visualization becomes (yellow) the greater the number of captives are concentrated in that area and the darker (purple) the fewer captives. The red star markers highlight the locations mentioned in the *Virginia Gazette*'s coverage of news related to enslaved resistance—including reports of occurred insurrections, conspiracy scares, legislation, editorials, governmental declarations, runaway slave advertisements, news of rebels (both enslaved and self-liberated black communities), and shipboard uprisings. This map was using QGIS.


## Computational Tools and Data/Archival Resources
### R and Rstudio
The code for this project was written in [R](https://www.r-project.org/), an open-source programming lagnuage designed for data analysis and statstical computing, and compiled in [Rstudio](https://posit.co/download/rstudio-desktop/), an open-source integrated development environment that (IDE) that allows for better interfacing with R. Like popular programming languages like Python, R has great utility for computational text mining—as it has numerous libraries that faciliate text data exploration, experimentation, and visualization. While R is not as general purpose as other programming languages (Python, Java, C++, etc.), it has a lower barrier to entry for interdisciplinary scholars and novice coders like myself. For historians and digital humanists alike looking to learn data science techniques in R or Python, the free online resource [Coding the Past](https://www.codingthepast.com/) offers numerous intructory, intermediate, and advanced tutorials based in historical methods and data. In addition, resources such as the [Programming Historian](https://programminghistorian.org/en/lessons/) offer more advanced programming lessons that explore topics such as distant reading techniques, mapping, and network analysis. 

### Databases

### Necessary R Packages, Libraries, and External Tools
#### External Tools
- PassivePy: a python and spacy based transparent tool developed by Amir Sepehri, Mitra Sadat Mirshafiee, and David M. Markowitz to automatically detect passive voice. [PassivePy](https://github.com/mitramir55/PassivePy), which also has a [streamlit application](https://passivepy.streamlit.app/), enables researches to automatically detect passive voice constructions in both large and small text data, making it a versatile and flexible tool for examining English language text data (inclduing historical).
- Sketch Engine: [Sketch Engine](https://www.sketchengine.eu/) is an online computational corpus linguistics platform that supports a wide variety of tools for examining language. The primary draw back of this platform is that it is subscription based.
  
#### Basic Data Utility
- lubridate: for working with dates and times
- tidyverse: provides general data and text analysis utility

#### Loading Data
- readxl: loads excel worksheets into Rstudio environment as object (dataset)

#### Text Mining (many of these overlap in functionality and dependencies)
- udpipe: this package provides access to natural language processing techniques such as tokenizing, tagging, lemmatization, and dependency parsing
- tm: faciliates easier creation and inspection of textual corpora
- stringr: helps to work with and manipulate strings
- NLP: a natural language processing library
- tokenizers: a tool for easily tokenizing text into machine readable components
- stringi: a useful pattern searching/detection tool that allows for the use of regular expressions
- quanteda: works with text data and has a built in concordance feature
- textstem: performs lemmatization and stemming
- tidytext: facilitates conversion of data into tidy formats

#### Visualization
- ggplot2: provides access to versatile graphic visualizations and customization
- ggraph: an extension of ggplot that enables a more flexible framework for visualizing networks using layers
- igraph: for network analysis and visualization

#### Aesthetics
- extrafont: allows access to large libary of fonts for designing visualizations
- svglite: enables visualizations to be exported as .svg files to maintain quality when resizing
- ggrepel: for graphing aesthetics with word

#### Replicating Results and Code
I have attempted to thoroughly annotate and document my code in the RMD files stored within this repository for each corpus. Each code chunk has an explanatory title and other necessary information regarding the code. However, for more complex coding skills, such as adapting the functions I wrote for tokenizing text or appending year information, please consult outside resources to ensure that any code replicated or adapted meets desired requirements. Keep in mind that this code was designed for working with small amounts of historic text data and thus is a specific use-case. 

## Authors
Chloe A. Zehr (she/they)
Chloe.Zehr@colorado.edu & chloeazehr@gmail.com

## Acknowledgements
- Honor
- Henry and DSRL
- david glimp
- ashleigh 

## License
This project is licensed under the [NAME HERE] License - see the LICENSE.md file for details

## Acknowledgments


## Further Reading and Research
