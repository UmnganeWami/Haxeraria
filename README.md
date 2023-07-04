# Haxeraria  
(very wip atm)

# Setting up
install haxe (if you allready havent)  
install Reflaxe (https://github.com/RobertBorghese/reflaxe)
install Reflaxe/csharp  
(though, till its fixed, you should use my fork of it by runnning `haxelib git csharp https://github.com/Krismowo/reflaxe.CSharp`)
copy the contents of the github repo to a new folder in `Documents\My Games\Terraria\tModLoader\ModSources`  
(make sure the folder name and the name of "modID" and the "modID" folder in the "haxe" folder are all the same (you can rename them))

to edit the mod name you open build.txt and change "modID" to your mods name  

# Compiling  
run `build.bat` 
open up tmodloader (if it isnt allready open)  
press "workshop"  
press "develop mods"  
your mod should show up here now, if it doesnt then something might be wrong with the folder setup in "Setting up"  
(if a class isnt being compiled that should be make sure that it's imported in import.hx)  