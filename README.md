# SVS-ImageDescription-metadata-editor
Allows editing of ImageDescription metadata tag in Motic EasyScanOne .svs files to allow import to viewers such as Cytomine

Windows batch file to edit a key metadata field in SVS files exported by Motic EasyScanOne microscope slide scanner.

Purpose was to facilitate SVS file import into Cytomine (https://cytomine.coop/) which seems to require "Aperio Image Library" in the ImageDescription metadata tag field.

Additional comment is added to UserComment field to document the change.

Metadata-edited .svs files can still be read by the MOTIC DSAssistant software (https://www.motic.com/As_Support_Download/) but has not been tested on other viewers.

**** Requires exiftool.exe to be located in same directory

**** exiftool.exe by Phil Harvey, can be obtained from https://www.sno.phy.queensu.ca/~phil/exiftool/

To use, simply drag the exported .svs file onto the batch file icon. Note: Exported file must be already in same directory as batch file icon.

Metadata will be edited, file will be exported to a subdirectory ("processed\"), original file will be deleted.

New file will have "Aperio Image Library v10.0.51.." preceding "Motic..." in the ImageDescription field. This works just fine for purpose stated above.

Batch script by Paraic Kenny, Gundersen Medical Foundation, June 2019.
