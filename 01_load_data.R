pacman::p_load(tidyverse,
               summarytools,
               stringr,
               janitor,
               lubridate,
               zip,
               here)

set_here()
##################################
##################################
##################################

# read in data

# prosecution charges
# 
# unique charges found in the raw suffolk and northwest charges sets.
#
charges <- clean_names(read_csv("https://raw.githubusercontent.com/codeforboston/clean-slate/master/data/processed/prosecution_charges.csv"))

# prosecution_northwest
# 
# all of the charges in northwest
nw <- clean_names(read_csv("https://raw.githubusercontent.com/codeforboston/clean-slate/master/data/processed/prosecution_northwestern.csv"))

# prosecution_suffolk
# 
# all of the charges in suffolk
# 
# zipped https://github.com/codeforboston/clean-slate/blob/master/data/processed/prosecution_suffolk.csv.zip
# couldn't figure out how to read a csv from a zip from a url, can be updated later.

suf <- clean_names(read_csv(here("prosecution_suffolk.csv")))

