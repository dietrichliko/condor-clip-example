#! /bin/sh
#
# Example to run a ROOT job on T2_AT_Vienna using CMS connect 
#
# Dietrich Liko

# Where are we

echo "Staring job on $(date) on $(hostname)"

# Setup LCG View

source /cvmfs/sft.cern.ch/lcg/views/setupViews.sh LCG_99 x86_64-centos7-gcc8-opt

# Do the analysis

./analysis.py $1

# Transfer the results to EOS

xrdcp output.root root://root://eos.grid.vbc.ac.at//store/user/$2/out$1.root 


