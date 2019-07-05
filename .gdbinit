source /var/lib/peda/peda.py # you can find peda on Github
set disassembly-flavor intel
define hook-stop
x/i $rip
x/8wx $rsp
end
