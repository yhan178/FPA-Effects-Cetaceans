This folder contains three files.


(1) 'analysis_river_lengths_against_abund_ranks.Rmd' and (2) a nb.html version of this file
	This file contains code aiming to summarize total lengths of the protected and 
non-protected waters for each porpoise abundance rank in 2006 and 2017, respectively. It uses 
the data in 'yfp_moving_average_06_17.csv' in folder '01_porpoise_encounter_rates\'.
	It produces Fig.3 based on the summarized result.
	It also generates a csv file 'segment_wise_porpoise_abundance.csv', which is used for 
analyses on the PAs' effects on the porpoise (see below and the folder '03_PAs_effects_porpoise\').

(3) 'segment_wise_porpoise_abundance.csv'
	This file was generated from the R markdown file 'analysis_river_lengths_against_abund_ranks.Rmd', 
which contains the calculated moving average encounter rates of the porpoise in 2006 and 2017. 
It has seven columns.
	(a)'groups': the river segment.
	(b)'f_year': the survey year, factor.
	(c)'year': the survey year, numeric.
	(d)'abund_ranks': the corresponding abundance rank the segment belongs to.
	(e)'segment_mean': the avergate of the porpoise abundance for each segment
	(f)'reserve': binary, whether the segment is located in a reserve in 2017.
	(g)'reserve_without_nj': binary, whether the segment is located in a reserve before 2006, 
				    segments belongs to the Nanjing reserve are identified
				    as 'non-PAs' as the reserve was established in 2014. Note we assigned 
				    river segments covered by the Anqing reserve (established in 2007) to 
				    the PA group in 2006 (see the main text for explanation).

For any enquiries please contact yi.han.178@gmail.com 
