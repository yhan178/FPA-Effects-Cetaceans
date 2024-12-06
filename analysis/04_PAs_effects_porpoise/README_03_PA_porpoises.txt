This folder contains three files.


(1) 'DiD_analysis_PAs_effect_on_porpoises.Rmd' and (2) a nb.html version of this file
	This file contains code to test whether the porpoise abundance was higher 
and less prone to decline in the PAs than the non-PAs. It uses the data from the file 
'segment_wise_porpoise_abundance.csv' in folder '02_percentage_coverage_of_PAs'.
	It generates statistical outputs and produces Fig.4 in the main text.
	This file also outputs a csv file containing data of the segment-wise porpoise abundance change,  
'seg_wise_abund_change.csv'.

(3) 'seg_wise_abund_change.csv'
	This file was generated from the R markdown file 'analysis_PAs_effects_on_porpoises.Rmd'. 
It has six columns.
	(a)'groups': the river segment.
	(b)'reserve': binary, whether the segment is located in a reserve in 2017.
	(c)'reserve_without_nj': binary, whether the segment is located in a reserve before 2006, 
				    segments belongs to the Nanjing reserve are identified
				    as 'non-PAs' as the reserve was established in 2014. Note we assigned 
				    river segments covered by the Anqing reserve (established in 2007) to 
				    the PA group in 2006 (see the main text for explanation).
	(d)'abund_06': the segment-wise porpoise abundance in 2006.
	(e)'abund_17': the segment-wise porpoise abundance in 2017.
	(f)'abund_change': the segment-wise porpoise abundance change from 2006 to 2017.

For any enquiries please contact yi.han.178@gmail.com 