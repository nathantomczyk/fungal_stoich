This README.txt file was generated on 2022-10-13 by Nathan Tomczyk


GENERAL INFORMATION

1. Title of Dataset: Response of fungal CUE and NUE to temeperature

2. Author Information
	A. Principal Investigator Contact Information
		Name: Nathan Tomczyk
		Institution: University of Georgia
		Address: 140 E Green St. Athens GA, USA, 30602
		Email: nathan.tomczyk25@uga.edu

	B. Associate or Co-investigator Contact Information
		Name: Amy Rosemond
		Institution: University of Georgia
		Address: 140 E Green St. Athens GA, USA, 30602
		Email: rosemond@uga.edu

	C. Alternate Contact Information
		Name: 
		Institution: 
		Address: 
		Email: 

3. Date of data collection (single date, range, approximate date): 2021-06-1 through 2021-10-01

4. Geographic location of data collection: United States, South Carolina, Horry County, Conway. Coastal Caronlina University

5. Information about funding sources that supported the collection of the data: 
This study received support from the National Science Foundation (DEB-1655789 to ADR, DEB-1655956 to JPB, and DEB-1655797 to VG). This work was also supported by a small grant from the Odum School of Ecology at the University of Georgia.

SHARING/ACCESS INFORMATION

1. Licenses/restrictions placed on the data: MIT license

2. Links to publications that cite or use the data: forthcoming.

3. Links to other publicly accessible locations of the data: 

4. Links/relationships to ancillary data sets: 

5. Was data derived from another source? no

6. Recommended citation for this dataset: forthcoming manuscript. 


DATA & FILE OVERVIEW

1. File List: 
C_N_fungal_biomass.csv
community_comp_DNA.csv
DOC_dilutions_data.csv
DOC_liquid_media.csv
liquid_media_filter_volumes.csv
measured_temperatures.csv
p_concentration_extracted_biomass.csv
processed_DOC_consumed.csv
stock_LME_concentraitons.csv


METHODOLOGICAL INFORMATION

1. Description of methods used for collection/generation of data: 
see associated publication for information on methods of data collection

2. Methods for processing the data: 
R files provide detailed data processing protocols.

3. Instrument- or software-specific information needed to interpret the data: 
The origional analyses of these data was completed using R version 3.6.2

4. Standards and calibration information, if appropriate: 

5. Environmental/experimental conditions: 
This exeriment was conducted in laboratory incubators.

6. Describe any quality-assurance procedures performed on the data: 


DATA-SPECIFIC INFORMATION FOR: community_comp_DNA.csv

1. Number of variables: 5

2. Number of cases/rows: 81

3. Variable List: 
Lane - the lane on the DGGE rig that was used for the sample
Band.No. - the band number within each row of the DGGE. These each represent a species and are translated in the R script
band_percent - the percent of the intensity of the bands within each lane - used to represent relative abundance of each taxa
temperature - treatment temperatures
replicates - experimental replicates

4. Missing data codes: 
empty cells
5. Specialized formats or other abbreviations used: 
NA


DATA-SPECIFIC INFORMATION FOR: DOC_diluations_data.csv

1. Number of variables: 2

2. Number of cases/rows: 11

3. Variable List: 
DI.water.mL - measured volumes of DI water used to dilute samples for DOC analysis 
sample.mL - measured volumes of samples used in diluations for DOC analysis 

4. Missing data codes: 
no missing data
5. Specialized formats or other abbreviations used: 
NA

DATA-SPECIFIC INFORMATION FOR: DOC_liquid_media.csv

1. Number of variables: 5

2. Number of cases/rows: 105

3. Variable List: 
Temperature - treatment tempeature
Species - species abbreviation letter. translated to names in R script
ID.number - identeficaiton used for analytical lab
doc.ppm - the concentraiton of dissolved organic carbon in the diluted sample in units of parts per million
stock.bottle.number - several batches of stock solution were mixed to fill the different experimental flaks, this column records which batch of stock was used


4. Missing data codes: 
no missing data
5. Specialized formats or other abbreviations used: 
NA

DATA-SPECIFIC INFORMATION FOR: liquid_media_filter_volumes.csv

1. Number of variables: 5

2. Number of cases/rows: 105

3. Variable List: 
Temperature - treatment temperature in celcius
Species - differnet species treatmetns designated by letters
ID number - identificaiton number of the sample chamber
CN volume filtered (mL) - volume of media filtered onto the filter which was used to measure carbon and nitrogen
P volume filtered (mL) - volume of media filtered onto the filter which was used to measure phosphorus

4. Missing data codes: 
empty cells indicate missing data

5. Specialized formats or other abbreviations used: 
NA

DATA-SPECIFIC INFORMATION FOR: measured_temperatures.csv

1. Number of variables: 2

2. Number of cases/rows: 6

3. Variable List: 
Temperature - treatment temperature in degrees celcius
measured_temperature - mean tempeature measured in in the incubator during the experiemnt with a logger


4. Missing data codes: 
no missing data

5. Specialized formats or other abbreviations used: 
NA

DATA-SPECIFIC INFORMATION FOR: nutrients_above_0m_clean.csv

1. Number of variables: 2

2. Number of cases/rows: 105

3. Variable List: 
date- date  in YYYY-MM-DD format
ID.number - identification number of sample chamber
Total P as PO4-P (ppm) - the concentraiton of phosphorus in the diluted sample that was sent to the analytical lab in units of parts per million


4. Missing data codes: 
blank cells are missing data
5. Specialized formats or other abbreviations used: 
NA

DATA-SPECIFIC INFORMATION FOR: processed_DOC_consumed

1. Number of variables: 2

2. Number of cases/rows: 105

3. Variable List: 
ID.number - identificaiton number of the sample chamber
DOC.consumed.mg - mass of liquid media consumed during experiment in miligrams 

4. Missing data codes: 
no missing data
5. Specialized formats or other abbreviations used: 
NA

DATA-SPECIFIC INFORMATION FOR: stock_LME_concentraitons.csv

1. Number of variables: 2

2. Number of cases/rows: 9

3. Variable List: 
stock.bottle.number - bottle number of the stock used to fill the chambers with liquid media
doc.ppm - concentraiton of dissovled organic carbon in diluted samples from DOC stock (before they were incubated)


4. Missing data codes: 
no missing data
5. Specialized formats or other abbreviations used: 
NA