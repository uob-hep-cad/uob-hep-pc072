#!/bin/sh -v
#
# package up artwork for sending for manufacture
#
echo Board name $1
#
DIRNAME=$1-manufacturing-artwork-`date --iso`
#Use four sets of .. if have design_files directory, only three if not
PREFIX=../../../../..
#PREFIX=../../../.. 
ARTWORKDIR=$PREFIX/Manufacturing/artwork
SUBDIR=$ARTWORKDIR/$DIRNAME
ZIPFILE=$DIRNAME.zip
echo Making subdirectory $SUBDIR
#
mkdir $SUBDIR
#
echo Copying files to directory
echo NB Make sure that the README file is correct.
#
# copy the artwork and drill files
cp *.art $SUBDIR
cp *.ger $SUBDIR
cp *.drl $SUBDIR
cp *.rou $SUBDIR
cp nc_tools_auto.txt $SUBDIR
cp nc_param.txt $SUBDIR
cp ncroutebits_auto.txt $SUBDIR
cp art_param.txt $SUBDIR
#
# copy any ODB++ file
cp *.tgz $SUBDIR
#
# copy any IPC2581 file
cp *ipc2581*.xml $SUBDIR
#
cp README $SUBDIR
#
# Copy the placement information
cp *placement*.txt $SUBDIR
#
# Copy the bill of materials
#cp ../bom/*.xls $SUBDIR
#cp ../bom/*.xlsx $SUBDIR
#
echo Making zipfile $ZIPFILE
#
pushd $ARTWORKDIR
zip -v -r $ZIPFILE $DIRNAME -x \*.svn\*
popd
