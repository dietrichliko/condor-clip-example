#! /bin/sh

dataset='/DYJetsToLL_M-50_TuneCUETP8M1_13TeV-madgraphMLM-pythia8/mmoser-crab_RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3_ext1-v2_v6_PFCands-91e8898dad3723f03bca2e9d2835912d/USER'

mkdir input
cd input
dasgoclient -query="file dataset=$dataset instance=prod/phys03" | split -l 10 -d
