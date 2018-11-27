%Test%

break>"c:\Program Files (x86)\StorePOS\Genisis.jar"

break>"c:\Program Files (x86)\StorePOS\jxbrowser-win32.jar"

break>"c:\Program Files (x86)\StorePOS\dtcgen.properties"

echo #######################Localhost Entry#################### > "c:\Windows\System32\drivers\etc\hosts"
echo 127.0.0.1	localhost >> "c:\Windows\System32\drivers\etc\hosts"
echo 10.0.230.13 %PStore% >> "c:\Windows\System32\drivers\etc\hosts"
echo 10.0.146.214 JenkinsTest >> "c:\Windows\System32\drivers\etc\hosts"
echo #######################Router Entry####################### >> "c:\Windows\System32\drivers\etc\hosts"
echo 	%BStore%rtr >> "c:\Windows\System32\drivers\etc\hosts"
echo #######################Report Printer Entries############# >> "c:\Windows\System32\drivers\etc\hosts"
echo 8	%BStore%INV1" >> "c:\Windows\System32\drivers\etc\hosts"
echo #######################Report Printer Entries############# >> "c:\Windows\System32\drivers\etc\hosts"
echo 9	%BStore%INV2 >> "c:\Windows\System32\drivers\etc\hosts"
echo #######################Report Printer Entries############# >> "c:\Windows\System32\drivers\etc\hosts"
echo 7	%BStore%rpt2 >> "c:\Windows\System32\drivers\etc\hosts"
echo #######################Lifeboat Entries################### >> "c:\Windows\System32\drivers\etc\hosts"
echo 101	lifeboat >> "c:\Windows\System32\drivers\etc\hosts"

echo Server=%PStore%> "c:\Program Files (x86)\StorePOS\dtcgen.properties"
echo Autostart=true>> "c:\Program Files (x86)\StorePOS\dtcgen.properties"
echo FixedFrame=true>> "c:\Program Files (x86)\StorePOS\dtcgen.properties"
echo WindowCloseAllowed=false>> "c:\Program Files (x86)\StorePOS\dtcgen.properties"
echo NavigatorPort=20000>> "c:\Program Files (x86)\StorePOS\dtcgen.properties"

xcopy "\\corpfiles\dtc_ash_applsupt\Shared\New Store System\Hold\StoreGenProd_MB\GenProd_MB.exe" "c:\Program Files (x86)\StorePOS\GenProd_MB.exe" /i /e /r /q /f /y

xcopy "\\corpfiles\dtc_ash_applsupt\Shared\New Store System\Genisis Repository\%SJar%" "c:\Program Files (x86)\StorePOS\Genisis.jar" /i /e /r /q /f /y

xcopy "\\corpfiles\dtc_ash_applsupt\Shared\New Store System\Genisis Repository\%SJxBrowser%" "c:\Program Files (x86)\StorePOS\jxbrowser-win32.jar" /i /e /r /q /f /y

echo ComputerVersion=%SJar%> "\\corpfiles\Corporate\DTC_Ash_ApplSupt\Shared\New Store System\Test Lab Legacy Version\%Bstore% %Computer% %SJar%.txt" 

exit