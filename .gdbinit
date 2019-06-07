source /var/lib/peda/peda.py
set disassembly-flavor intel
define hook-stop
x/i $rip
x/8wx $rsp
end
