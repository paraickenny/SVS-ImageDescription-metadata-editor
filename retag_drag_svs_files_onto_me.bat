REM Windows batch file to edit a key metadata field in SVS files exported by Motic EasyScanOne microscope slide scanner
REM Purpose was to facilitate SVS file import into Cytomine (https://cytomine.coop/) which seems to require "Aperio Image Library" in the ImageDescription metadata tag field
REM Additional comment is added to UserComment field to document the change
REM Metadata-edited .svs files can still be read by the MOTIC DSAssistant software (https://www.motic.com/As_Support_Download/) but has not been tested on other viewers.
REM Requires exiftool.exe to be located in same directory
REM exiftool.exe by Phil Harvey, can be obtained from https://www.sno.phy.queensu.ca/~phil/exiftool/
REM To use, simply drag the exported .svs file onto the batch file icon.
REM Metadata will be edited, file will be exported to a subdirectory ("processed\"), original file will be deleted.
REM New file will have "Aperio Image Library v10.0.51.." preceding "Motic..." in the ImageDescription field. This works just fine for purpose stated above.
REM Batch script by Paraic Kenny, Gundersen Medical Foundation, June 2019.

echo input file...
echo "%~1"
echo|set /P = "Aperio Image Library v10.0.51.." > test.txt
exiftool  -ImageDescription -T "%~1" >> test.txt
echo contents of file test.txt...
more test.txt
exiftool  -ImageDescription"<=test.txt" "%~1" 
exiftool -UserComment="Scanned on Motic EasyScanOne. ImageDescription tag updated with Aperio details to allow import into Cytomine. Gundersen Cancer Biobank." "%~1"
copy "%~1" processed\
del "%~1"
del "%~1"_original
del test.txt







 
