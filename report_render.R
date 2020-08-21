#!/usr/bin/env Rscript

library(rmarkdown)
library(tools)

# Get command line arguments
args = commandArgs(trailingOnly=TRUE)
args_len <- length(args);

# Read inputs
snp_mat <- read.table(file_path_as_absolute(args[1]), header = T, check.names = FALSE, sep = "\t", row.names = 1)
nwk <- file_path_as_absolute(args[2])
status_table <- read.table(file_path_as_absolute(args[3]), header = T, check.names = FALSE, sep = "\t", row.names = 1)
report <- file_path_as_absolute(args[4])
location <- args[5]

# Check length of arguments
if (args_len == 5) {
    ar_df <- read.table(file_path_as_absolute(args[5]), header = T, stringsAsFactors = F)
}

# Render the report
render(report, output_dir=location, output_file='report.pdf')
