B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
Sub Class_Globals
	Private mInfo As JavaObject
End Sub

'Initializes the object. You can add parameters to this method if needed.
Public Sub Initialize(info As JavaObject)
	mInfo = info
End Sub

Public Sub getPhysicalHeightDpi As Int
	Return mInfo.RunMethod("getPhysicalHeightDpi",Null)
End Sub

Public Sub 	getPhysicalWidthDpi As Int
	Return mInfo.RunMethod("getPhysicalWidthDpi",Null)
End Sub
