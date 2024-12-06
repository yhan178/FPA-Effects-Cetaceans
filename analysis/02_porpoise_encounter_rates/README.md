This folder contains four files.


(1) 'yfp_sightings_06_17.csv'
	This file contains the sighting records of the Yangtze finless porpoise from 
the survey 2006 and 2017. We have generated evenly spaced points with an interval 
of 1 km along the midline of the studied river section. Then we summarized 
the porpoise number for each 1 km interval by identifying the closest point for each 
porpoise sighting record in ArcGIS. This file contains three columns.
	'DistMark': each number corresponds to a 1-km interval, for instance, 
			DistMark = 1 corresponds to the interval [0, 1). 
	'size': the total number of the porpoise observed within the corresponding 
			interval, summarized from two boats in the return survey.
	'year': the survey year.


(2) 'calc_plot_yfp_mov_aver.Rmd' and (3) a nb.html version of the file
	This file contains the code to calculate moving average encounter rates of 
the porpoise. It uses the data in 'yfp_sightings_06_17.csv'.
	It produces Fig. 2a showing the moving average encounter rates of the porpoise 
for both 2006 and 2017.
	It also generates a csv file with the calculated moving average encounter rates, 
'yfp_moving_average_06_17.csv', which is used for analyses on the percentage coverage 
of the PAs (see below and the folder '02_percentage_coverage_of_PAs').


(4) 'yfp_moving_average_06_17.csv'
	This file was generated from the R code file 'calc_plot_yfp_mov_aver.Rmd', which 
contains the calculated moving average encounter rates of the porpoise in 2006 and 2017.
It has eight columns.
	(a)'DistMark': each number corresponds to a 1-km interval, for instance, 
			   DistMark = 1 corresponds to the interval [0, 1). 
	(b)'year': the survey year, numeric.
	(c)'f_year': the survey year, factor.
	(d)'size': the total number of the porpoise observed within the corresponding 
			interval, summarized from two boats in a return survey.
	(e)'mov_aver': the moving average encounter rate of the porpoise
	(f)'reserve': binary, whether the segment is located in a reserve in 2017.
	(g)'reserve_name': the name of the reserve that the segment belongs to, 
			       a non-reserve segment is denoted as 'non-PAs'.
	(h)'reserve_without_nj': binary, whether the segment is located in a reserve before 2006, 
				       segments belongs to the Nanjing reserve are identified as 'non-PAs' 
				       as the reserve was established in 2014.Note we assigned 
				    	 river segments covered by the Anqing reserve (established in 2007) to 
				       the PA group in 2006 (see the main text for explanation).

For any enquiries please contact yi.han.178@gmail.com 
