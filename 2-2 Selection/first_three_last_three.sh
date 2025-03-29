awk '
{ line[NR] = $0 }
END {
    for (i = 1; i <= 3; i++) print line[i]
    print "..."
    for (i = NR - 2; i <= NR; i++) print line[i]
}'  input.txt

echo
awk '
NR <= 3 { print; next }
{ line[1] = line[2]; line[2] = line[3]; line[3] = $0 }
END {
    print "..."
    for (i = 1; i <= 3; i++) print line[i]
}
' input.txt

echo
awk '
NR <= 3 { print; next }
{ line[NR % 3] = $0 }
END {
    print "..."
    i = (NR+1) % 3
    for (j = 0; j < 3; j++) {
        print line[i]
        i = (i+1) % 3
    }
}
' input.txt

echo
awk '
BEGIN {
    number = ARGV[1]
    delete ARGV[1]
}
 { line[NR] = $0 }
 END {
     for (i = NR; i > NR - number; i--) print line[i]
 }
 ' 10 input.txt

echo
awk '
BEGIN {
    number = 5
}
NR <= number { print NR, $0; next }
{ line[NR % number] = NR " " $0 }
END {
    a = number * 2 - NR
    if (a < 0) {
     print "..."
        i = (NR + 1) % number
        for (j = 0; j < number; j++) {
            print line[i]
            i = (i + 1) % number
        }
    } else if (a < number) {
     print "..."
        i = (NR + 1 + a) % number
        for (j = 0; j < number - a; j++) {
            print line[i]
            i = (i + 1) % number
        }
    }
}
 ' input.txt

