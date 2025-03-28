BEGIN {
    N = 0
}

$2 > 30 { N++; pay += $2 * $3 }

END {
    if (n > 0) print n, "high-pay employees, total pay is", pay, " average pay is", pay
    else print "No employees are paid more than $30/hour"
}