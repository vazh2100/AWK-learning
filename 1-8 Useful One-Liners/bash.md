```bash
# Print the total number of input lines:
awk 'END { print NR }' input_1.txt
```
```bash
# Print the first 10 input lines:
awk 'NR <= 10' input_1.txt
```
```bash
# Print the tenth input line:
awk 'NR == 10' input_1.txt
```
```bash
# Print every tenth input line, starting with line 1:
awk 'NR % 10 == 1' input_1.txt
```
```bash
# Print the last field of every input line:
awk '{ print $NF }' input_1.txt
```
```bash
# Print the last field of the last input line:
awk 'END { print $NF }' input_1.txt
```
```bash
# Print every input line with more than four fields:
awk 'NF > 3' input_1.txt
```
```bash
# Print every input line that does not have exactly four fields:
awk 'NF != 4' input_1.txt
```
```bash
# Print every input line in which the last field is greater than 4:
awk '$NF > 4' input_1.txt
```
```bash
# Print the total number of fields in all input lines:
awk '{ nf += NF }; END { print nf }' input_1.txt
```
```bash
# Print the total number of lines that contain Beth:
awk '/Beth/ { nlines++ } END { print nlines }' input_1.txt
```
```bash
# Print the largest first field and the line that contains it (assumes some $5 is positive):
awk '$5 > max { max = $5; maxline = $0 } END { print max, maxline }' input_1.txt
```
```bash
# Print every line that has at least one field (that is, not empty or all spaces):
awk 'NF == 1' input_1.txt
```

```bash
# Print every line longer than 27 characters:
awk 'length($0) > 27' input_1.txt
```

```bash
# Print the number of fields in every line followed by the line itself:
awk '{ print NF, $0 }' input_1.txt
```

```bash
# Print the fields, in opposite order, of every line:
awk '{ print $1, $3, $4 }' input_1.txt
```
```bash
# Interchange the first two fields of every line and then print the line:
awk '{ temp = $1; $1 = $2; $2 = temp; print }' input_1.txt
```
```bash
# Print every line preceded by its line number:
awk '{ print NR, $0 }' input_1.txt
```
```bash
# Print every line with the first field replaced by the line number:
awk '{ $1 = NR; print }' input_1.txt
```
```bash
# Print every line after erasing the second field:
awk '{ $2 = ""; print }' input_1.txt
```
```bash
# Print in reverse order the fields of every line:
awk '{ for (i = NF; i > 0; i--) printf("%s ", $i); printf("\n")}' input_1.txt
```
```bash
# Print the sums of the fields of every line:
awk '{ sum = 0; for (i = 1; i <= NF; i++) sum = sum + $i; print sum; }' input_1.txt
```
```bash
# Add up all fields in all lines and print the sum:
awk '{ for (i = 1; i <= NF; i++) sum = sum + $i }; END { print sum }' input_1.txt
```
```bash
# Print every line after replacing each field by its absolute value:
awk '{ for (i = 1; i <= NF; i++) if ($i < 0) $i = -$i; print }' input_1.txt
```