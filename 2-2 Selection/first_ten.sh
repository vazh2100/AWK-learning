awk '
NR > 10 { exit }
{ print NR, $0 }
' input.txt
