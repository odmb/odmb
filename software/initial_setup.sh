#! /bin/bash

export CVS_RSH=ssh
export CVSROOT=username@cmscvs.cern.ch:/local/reps/CMSSW

cvs co -d odmbdev UserCode/manuelf/sw/odmbdev

export CVSROOT=:ext:username@isscvs.cern.ch/local/reps/tridas

cvs co TriDAS/emu
cd TriDAS/emu
ln -s ../../odmbdev
bash compile.sh
cd ../..
