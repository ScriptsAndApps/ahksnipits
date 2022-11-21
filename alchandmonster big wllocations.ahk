; 
; script with gui for AHKv2
;
#Requires AutoHotkey v2.0-beta
#NoTrayIcon
#SingleInstance Ignore
setKeyDelay 50, 50
setMouseDelay 50
#maxThreadsPerHotkey 10 ;important to disable after loop is enabled
SetWorkingDir A_ScriptDir

CoordMode "Pixel", "Screen"

Global counter2 :=0
Global maxloop2 :=100

Global oGui

global myList := [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
global mouselocations := [

[1302,428], ;1   alch tab 

[1275,554], ;2   alch spell

[1275,554], ;3   alch item

[507,508] ;4     monster location

]


WinSGui()
WinSGui() {
	global mouselocations
    Global oGui
    oGui := Gui("AlwaysOnTop Resize MinSize +DPIScale","Use hotkeys")
    oGui.OnEvent("Close",WinSClose)
    oGui.Add("Text","w250","")
    oGui.Add("Checkbox","x10 y10 w150 h15 vEnableMouse1","Run script (F3)").OnEvent("Click",startcb)
    oGui.Add("Text","y25","")
    oGui.Show("NoActivate")

    oGui.Move(200,150)  ;;;;; start up locattiioonn

    createNewGui(1,0,0,true,"0xFF0000")
    createNewGui(2,0,0,true,"0xFF0000")
    createNewGui(3,0,0,true,"0xFF0000")
    createNewGui(4,0,0,true,"0xFF0000")

    setlocation(1,mouselocations[1][1], mouselocations[1][2])
    setlocation(2,mouselocations[2][1], mouselocations[2][2])
    setlocation(3,mouselocations[3][1], mouselocations[3][2])
    setlocation(4,mouselocations[4][1], mouselocations[4][2])

}


setlocation(id,locationx,locationy){
      global myList
	GuiObj := GuiFromHwnd(myList[id])
      if(GuiObj!="")
	{
		GuiObj.Move(locationx-6,locationy-6)
	}
} 

createNewGui(id,locationx,locationy,boolround,colll){

	 global myList
	
       oGuix := Gui("AlwaysOnTop -Caption MinSize +DPIScale  E0x20","Use hotkeysr")
	 oGuix.BackColor := colll
       oGuix.Show("NoActivate w70 h70 NA")
	 oGuix.Move(locationx,locationy)
	 WinSetTransparent 98, oGuix.Hwnd

	 if(boolround){
        	finalRegion := DllCall("CreateEllipticRgn", "Int", 0, "Int", 0, "Int", 12, "Int", 12)
            DllCall("SetWindowRgn", "UInt", oGuix.Hwnd, "UInt", finalRegion, "UInt", true)
	 }
	
	 myList[id]:=oGuix.Hwnd


	;GuiFromHwnd(MyGui.Hwnd).Title

}




WinSClose(GuiObj) {
    ExitApp
}

Global instance :=0

startcb(*) {
	if(oGui["EnableMouse1"].Value==1)
	{
		start()
	}
}
start(*) {

       Global instance
        if(instance==0){
 		instance :=1
		while (oGui["EnableMouse1"].Value==1)
		{
		     
		      doLoop1()
       		}
       		instance :=0	
       }
}
;hotkey name down here this is f3 ( $f3:: )
$f3::{
	oGui["EnableMouse1"].Value := !oGui["EnableMouse1"].Value
	if(oGui["EnableMouse1"].Value==1)
	{
		start()
	}
}
doLoop1() {  


		Click mouselocations[1][1], mouselocations[1][2] ;<<<<<<<<<< alch tab click ;<<<<<<<<<<
		
		sleep Random(195,302)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}


		Click mouselocations[2][1], mouselocations[2][2]  ;<<<<<<<<<< alch spell click ;<<<<<<<<<<
		
		
		
		sleep Random(900,1200)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
             bb :=  Random(0,6000)
		if (bb >=4000){
			sleep bb
		}
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		
		Click mouselocations[3][1], mouselocations[3][2]  ;<<<<<<<<<< alch inventory item click ;<<<<<<<<<<
		
		
		sleep Random(595,725)

		if (Random(0,6999)=6666){
			sleep Random(10,7777)
		}
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(595,725)
		
		Click mouselocations[4][1], mouselocations[4][2] ;<<<<<<<<<< monster auto click ;<<<<<<<<<<
	
		sleep Random(10,400)
		
		Click mouselocations[4][1], mouselocations[4][2] ;<<<<<<<<<< monster auto click ;<<<<<<<<<<
		sleep Random(10,400)
		
		Click mouselocations[4][1], mouselocations[4][2] ;<<<<<<<<<< monster auto click ;<<<<<<<<<<
		sleep Random(10,400)
		
		Click mouselocations[4][1], mouselocations[4][2] ;<<<<<<<<<< monster auto click ;<<<<<<<<<<
		sleep Random(10,400)
		
		Click mouselocations[4][1], mouselocations[4][2] ;<<<<<<<<<< monster auto click ;<<<<<<<<<<
		sleep Random(10,400)
		
		Click mouselocations[4][1], mouselocations[4][2] ;<<<<<<<<<< monster auto click ;<<<<<<<<<<
		sleep Random(10,400)
		
		Click mouselocations[4][1], mouselocations[4][2] ;<<<<<<<<<< monster auto click ;<<<<<<<<<<
		sleep Random(10,400)
		
		Click mouselocations[4][1], mouselocations[4][2] ;<<<<<<<<<< monster auto click ;<<<<<<<<<<
		sleep Random(10,400)
		
		Click mouselocations[4][1], mouselocations[4][2] ;<<<<<<<<<< monster auto click ;<<<<<<<<<<
		
		if (Random(0,6999)=6666){
			sleep Random(10,7777)
		}
			
		
}
