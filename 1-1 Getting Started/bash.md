```bash
awk '$3 > 0 { print $1, $2 * $3 }' input_1.txt
```

```bash
awk '$3 == 0 { print $1}' input_1.txt
```

```bash
awk '$3 == 0' input_1.txt
```

```bash
awk '{ print $1}' input_1.txt
```

```bash
awk '{ print $1}' input_1.txt
```

```bash
awk '{ print $1}'
```

```bash
awk '{ print $1}' input_1.txt input_2.txt
```

```bash
awk -f program.awk input_1.txt
```

```bash
awk '
$3 > 0 { print $1, $2 * $3 }
$3 == 0 { print $1}
' input_1.txt
```

