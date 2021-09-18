# format-conversion
Scripts for file format conversion.

## ppt2pdf
This script simply converts all the .ppt files in a folder in .pdf files. 
This script uses [unoconv](https://github.com/unoconv/unoconv) for the conversion, so before running the script you must install unoconv:

```sudo apt-get install unoconv```

Make the scrpit executable:

```chmod +x ppt2pdf.sh```

Then you can run the script:

```./ppt2pdf.sh```

Before conversion, it safely moves existent .pdf files in a folder called *old*, and after conversion moves the processed .ppt in a folder named *ppt*.

## heic2jpg
Utility for .HEIC photo conversion in .jpg output format. This script uses ```libheif-examples``` for the conversion, so before running the script you must install libheif-examples:

```sudo apt-get install libheif-examples```

Make the scrpit executable:

```chmod +x heic2jpg.sh```

Then you can run the script:

```./heic2jpg.sh [/path/to/heic]```

This script will make a subdirectory called *heic* in the given folder path, where moves in it all the processed .heic files, leaving in the direcotry only the .jpg files.

Please note that this script converts file within the maximum quality available by the conversion.
