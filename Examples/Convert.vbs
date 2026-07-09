Dim obj
set obj = CreateObject("AutoDWG.DWFConverter") 

'obj.FontPath = "D:\Program Files\AutoCAD 2004\Fonts"
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
