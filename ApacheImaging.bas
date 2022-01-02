B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.9
@EndOfDesignText@
Sub Class_Globals
	Private imaging As JavaObject
End Sub

'Initializes the object. You can add parameters to this method if needed.
Public Sub Initialize
	imaging.InitializeStatic("org.apache.commons.imaging.Imaging")
End Sub

Public Sub getImageInfo(path As String) As ApacheImageInfo
	Dim f As JavaObject
	f.InitializeNewInstance("java.io.File",Array(path))
	Dim imageInfo As JavaObject = imaging.RunMethod("getImageInfo",Array(f))
	Dim imageInfoWrapper As ApacheImageInfo
	imageInfoWrapper.Initialize(imageInfo)
	Return imageInfoWrapper
End Sub