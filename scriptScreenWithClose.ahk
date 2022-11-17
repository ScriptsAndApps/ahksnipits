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
WinSGui()
WinSGui() {

    Global oGui
	
    oGui := Gui("AlwaysOnTop Resize MinSize +DPIScale","Screen to see hotkeys enabled")
    oGui.OnEvent("Close",WinSClose)
	
	oGui.Add("Text",,"")
    oGui.Add("Checkbox","w150 Left vEnableMouse1","Loop unlimited (F3)").Value := 0
	
	oGui.Add("Text",,"")
    oGui.Add("Checkbox","w150 Left vEnableMouse2","Loop for " maxloop2 " times (F4)").Value := 0
	
	oGui.Add("Text",,"")
	
    oGui.Show("NoActivate")
}
WinSClose(GuiObj) {
    ExitApp
}
Global instance :=0
;hotkey name down here this is f3 ( $f3:: )
$f3::{
	Global instance
	oGui["EnableMouse1"].Value := !oGui["EnableMouse1"].Value
	while (oGui["EnableMouse1"].Value==1)
	if(instance==0){
		instance :=1
		doLoop1()
		instance :=0	
	}
}

;hotkey name down here this is f4 ( $f4:: )
$f4::{
	Global counter2
	Global maxloop2 
	oGui["EnableMouse2"].Value := !oGui["EnableMouse2"].Value
	while (oGui["EnableMouse2"].Value==1)
	{
		doLoop2()
		if(counter2>maxloop2){ ; this disables the loop after x amount of loops
			oGui["EnableMouse2"].Value := 0
			counter2:=0
		}counter2 := counter2+1
	}

}
doLoop2() {
		doLoop1()
}
doLoop1() {



		Click 880, 288 ;<<<<<<<<<< alch tab click ;<<<<<<<<<<
		
		
		
		sleep Random(195,302)
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}


		Click 860, 413 ;<<<<<<<<<< alch spell click ;<<<<<<<<<<
		
		
		
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
		
		
		Click 860, 413 ;<<<<<<<<<< alch inventory item click ;<<<<<<<<<<
		
		
		sleep Random(595,725)

		if (Random(0,6999)=6666){
			sleep Random(10,7777)
		}
	    if(oGui["EnableMouse1"].Value!=1){
			return
		}
		
		sleep Random(595,725)
		
		Click 352, 380 ;<<<<<<<<<< monster auto click ;<<<<<<<<<<
		
		sleep Random(10,400)
		
		Click 352, 380 ;<<<<<<<<<< monster auto click ;<<<<<<<<<<
		sleep Random(10,400)
		
		Click 352, 380 ;<<<<<<<<<< monster auto click ;<<<<<<<<<<
		sleep Random(10,400)
		
		Click 352, 380 ;<<<<<<<<<< monster auto click ;<<<<<<<<<<
		sleep Random(10,400)
		
		Click 352, 380 ;<<<<<<<<<< monster auto click ;<<<<<<<<<<
		sleep Random(10,400)
		
		Click 352, 380 ;<<<<<<<<<< monster auto click ;<<<<<<<<<<
		sleep Random(10,400)
		
		Click 352, 380 ;<<<<<<<<<< monster auto click ;<<<<<<<<<<
		sleep Random(10,400)
		
		Click 352, 380 ;<<<<<<<<<< monster auto click ;<<<<<<<<<<
		sleep Random(10,400)
		
		Click 352, 380 ;<<<<<<<<<< monster auto click ;<<<<<<<<<<
		
		if (Random(0,6999)=6666){
			sleep Random(10,7777)
		}
			
		
}
