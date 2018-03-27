; use firefox
If $CmdLine[1]=="Firefox" Then

   ;ControlFocus("title","text",controlID) Edit1=Edit instance 1
   ControlFocus("文件上传", "","Edit1")


   ; Wait 10 seconds for the Upload window to appear
   WinWait("[CLASS:#32770]","",1)

   ; Set the File name text on the Edit field
   ;ControlSetText("文件上传", "", "Edit1", "E:\GcloudTestFile\ResTestFile.zip")
   ControlSetText("文件上传", "", "Edit1", $CmdLine[2])

   Sleep(1000)

   ; Click on the Open button

   ControlClick("文件上传", "","Button1");

; use chrome
ElseIf $CmdLine[1]=="Chrome" Then

   ;ControlFocus("title","text",controlID) Edit1=Edit instance 1
   ControlFocus("打开", "","Edit1")


   ; Wait 10 seconds for the Upload window to appear
   WinWait("[CLASS:#32770]","",1)


   ; Set the File name text on the Edit field

   ;ControlSetText("文件上传", "", "Edit1", "E:\GcloudTestFile\ResTestFile.zip")
   ControlSetText("打开", "", "Edit1", $CmdLine[2])

   Sleep(1000)

   ; Click on the Open button

   ControlClick("打开", "","Button1");

EndIf