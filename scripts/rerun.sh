#!/bin/bash
#
# Re-run the code locally, to re-create the data and figure.
#
# Usage:
#
#   ./scripts/rerun.sh
#
#SBATCH --partition=gelifes
#SBATCH --time=24:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=10G
#SBATCH --job-name=pirex39
#SBATCH --output=example_39.log
#
rm -rf example_39
rm *.png
time Rscript example_39.R
zip -r pirouette_example_39.zip example_39 example_39.R scripts *.png

