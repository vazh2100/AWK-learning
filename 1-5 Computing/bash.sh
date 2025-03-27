# Счёт по условию
awk '
BEGIN { emp = 10 }
$3 > 15 { emp++ }
END { print emp, "employees worked more than 15 hours" }
' input_1.txt
echo
# NR - количество прочитанных строк
awk 'END { print NR, "employees" }' input_1.txt
echo
# Подсчёт среднего
awk '
{ pay = pay + $2 * $3 }
END {
print NR, "employees"
print "total pay is", pay
print "average pay is", pay/NR }
' input_1.txt
echo
# Поиск максимального значения
awk '
$2 > maxrate { maxrate = $2; maxemp = $1 }
END { print "highest hourly rate:", maxrate, "for", maxemp }
' input_1.txt
echo
# Конкатенация строк
awk '
{ names = names $1 " " }
END { print names }
' input_1.txt
echo
# Печать последней строки
awk 'END { print $0 }' input_1.txt
echo
# Длина строки
awk '{ print $1, length($1) }' input_1.txt
echo
awk '
{ nc += length($0) + 1; nw += NF }
END { print NR, "lines,", nw, "words,", nc, "characters" }
' input_1.txt
