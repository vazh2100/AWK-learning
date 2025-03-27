awk '$2 >= 20' input_1.txt
echo
awk '$2 * $3 > 200 { printf("$%.2f for %s\n", $2 * $3, $1) }' input_1.txt
echo
awk '$1 == "Susie"' input_1.txt
echo
awk '/Susie/' input_1.txt
echo
awk '$2 >= 20 && $3 >= 20' input_1.txt
echo
awk '!($2 < 20 || $3 < 20)' input_1.txt
echo
awk '
NF != 3 { print $0, "number of fields is not equal to 3" }
$2 < 15 { print $0, "rate is too low" }
$2 > 25 { print $0, "rate exceeds $25 per hour" }
$3 < 0 { print $0, "negative hours worked" }
$3 > 60 { print $0, "too many hours worked" }
' input_1.txt
echo
awk '
BEGIN { print "NAME RATE HOURS" }
{ print }
' input_1.txt
