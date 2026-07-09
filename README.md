# DWG2DWFX
**AutoDWG DWG to DWF Component**

## License Notice
1. Free trial / non-commercial use: GNU LGPLv3
2. Commercial production use, closed-source integration requires purchasing our commercial license.

Contact info@autodwg.com for commercial authorization.

## AutoDWG DWG to DWF Control Component
DWG2DWF-X is a Control(COM) for converting DWG to DWF. It supports AutoCAD version R9 to latest version AutoCAD 2027.

### Key features
- Convert DWG/DXF to DWF
- Merge Multiple DWG/DXF Files into a Single DWF
- Compatibility with DWF 6.0 Version
- Customizable Background Color Setting
- Three Output Formats Available: ASCII, Binary, Compressed Binary
- Conversion Process Independent of AutoCAD

### Free Trial Download Link
https://github.com/autodwg/DWG2DWFX/releases/download/v1.1.2/DWG2DWFX-v1.1.2.zip


## User Guide
### Getting Started
Quick setup (The steps below are for 64-bit installation.)

#### Step 1: Register the DLL Component
Double-click `reg.bat` to automatically register `AutoDWG64.dll` on your system.

If registration fails:
Open Command Prompt as Administrator via:
Start Menu → Windows System → Right-click "Command Prompt" → Run as Administrator

Manually register the DLL using command:
```cmd
regsvr32 AutoDWG64.dll
```
#### Step 2: Test with Example VBScript
Use the provided sample script Convert.vbs in the Examples folder to verify functionality.
Ensure the script executes without errors and generates the expected DWF output.

**Sample Code**

Sample Code (VB) for your reference:
```
Dim obj
set obj = CreateObject("AutoDWG.DWFConverter") 

'obj.FontPath = "D:\Fonts"
'obj.EnableLineWeight = 1

obj.InputFile = "Office.dwg"
obj.Background = 0 	'Autocad color index 0~255, 255-white, 0-black
obj.ColorMode  = 1  	'0-is black/white  1- color

obj.Format = 3 		'Set dwf format, 1-- compress binary (default) 2-- binary 3-- ascii
obj.Version = 6.0 	'Supports version 6.0(default), 5.5, 4.2

MsgBox "Begin converting..."
	obj.ConvertAllLayout "Office.dwf"
MsgBox "Conversion complete"

If Err.Number < 0 Then
		MsgBox Err.Description
End If
```

## License Notice
1. Free trial / non-commercial use: GNU LGPL v2.1
2. Commercial production use, closed-source integration requires purchasing our commercial license.

Contact info@autodwg.com for commercial authorization.
