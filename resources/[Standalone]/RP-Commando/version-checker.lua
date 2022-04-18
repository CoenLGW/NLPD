-- DO NOT EDIT ANY THING PLEASE THIS IS SO YOU CAN STAY UP TO DATE WITH THE SCRIPT IN THE CONSOLE --
-- DO NOT EDIT ANY THING PLEASE THIS IS SO YOU CAN STAY UP TO DATE WITH THE SCRIPT IN THE CONSOLE --
-- DO NOT EDIT ANY THING PLEASE THIS IS SO YOU CAN STAY UP TO DATE WITH THE SCRIPT IN THE CONSOLE --
-- DO NOT EDIT ANY THING PLEASE THIS IS SO YOU CAN STAY UP TO DATE WITH THE SCRIPT IN THE CONSOLE --
-- DO NOT EDIT ANY THING PLEASE THIS IS SO YOU CAN STAY UP TO DATE WITH THE SCRIPT IN THE CONSOLE --
-- DO NOT EDIT ANY THING PLEASE THIS IS SO YOU CAN STAY UP TO DATE WITH THE SCRIPT IN THE CONSOLE --
-- DO NOT EDIT ANY THING PLEASE THIS IS SO YOU CAN STAY UP TO DATE WITH THE SCRIPT IN THE CONSOLE --
-- DO NOT EDIT ANY THING PLEASE THIS IS SO YOU CAN STAY UP TO DATE WITH THE SCRIPT IN THE CONSOLE --

-------------------------------------------
---- RolePlay Commands Version Checker ----
 ---NEVER EDIT THIS AREA OF THE SCRIPT--- 
-------------------------------------------


local latestversion = 
[[ 
//
||    
||    
||             
||   		      	Fully Operational
|| 	You're Running the Latest Version of JM | Basic Commands
||   			Curent Version | 1.0 [LATEST]
|| 		          
||				    
||            
||
||
\\
]]

-- DO NOT EDIT ANY THING PLEASE THIS IS SO YOU CAN STAY UP TO DATE WITH THE SCRIPT IN THE CONSOLE --
-- DO NOT EDIT ANY THING PLEASE THIS IS SO YOU CAN STAY UP TO DATE WITH THE SCRIPT IN THE CONSOLE --
-- DO NOT EDIT ANY THING PLEASE THIS IS SO YOU CAN STAY UP TO DATE WITH THE SCRIPT IN THE CONSOLE --
-- DO NOT EDIT ANY THING PLEASE THIS IS SO YOU CAN STAY UP TO DATE WITH THE SCRIPT IN THE CONSOLE --
-- DO NOT EDIT ANY THING PLEASE THIS IS SO YOU CAN STAY UP TO DATE WITH THE SCRIPT IN THE CONSOLE --

  
local outdatedversion = 
[[ 
//
||    
||    
||             
||   		      	Fully Operational
|| 	You're Running the Latest Version of JM | Basic Commands
||   			Curent Version | 1.0 [OUTDATED]
|| 		          
||				    
||            
||
||
\\
]]

versionChecker = true -- Set to false to disable version checker


-- Don't touch
resourcename = "JM-BasicRoleplayCommands"
version = "1.0"
rawVersionLink = "https://wastelandofficial.000webhostapp.com/JackModifications/BasicRoleplayCommandsVersion.txt"

-- Check for version updates.
if versionChecker then
print("Script Created by Jack Marshal#1888 | JM @ 2022")
PerformHttpRequest(rawVersionLink, function(errorCode, result, headers)
    if (string.find(tostring(result), version) == nil) then
	    print(outdatedversion)
        print("\n\r[".. GetCurrentResourceName() .."] ^1WARNING: You are running VERSION: ".. version .." of  ".. resourcename .." is not up to date. Just RE-INSTALL it where you got it :D Thank YOU.\n\r")
    else
		print(latestversion)
        print("\n\r[".. GetCurrentResourceName() .."] ^2You are running the latest version of ".. resourcename ..".\n\r")
    end
end, "GET", "", "")
end


-- DO NOT EDIT ANY THING PLEASE THIS IS SO YOU CAN STAY UP TO DATE WITH THE SCRIPT IN THE CONSOLE --
-- DO NOT EDIT ANY THING PLEASE THIS IS SO YOU CAN STAY UP TO DATE WITH THE SCRIPT IN THE CONSOLE --
-- DO NOT EDIT ANY THING PLEASE THIS IS SO YOU CAN STAY UP TO DATE WITH THE SCRIPT IN THE CONSOLE --
-- DO NOT EDIT ANY THING PLEASE THIS IS SO YOU CAN STAY UP TO DATE WITH THE SCRIPT IN THE CONSOLE --
-- DO NOT EDIT ANY THING PLEASE THIS IS SO YOU CAN STAY UP TO DATE WITH THE SCRIPT IN THE CONSOLE --
