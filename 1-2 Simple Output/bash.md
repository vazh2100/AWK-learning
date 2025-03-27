```bash
awk '{ print }' input_1.txt
```

```bash
awk '{ print $0 }' input_1.txt
```

```bash
awk '{ print $1, $3 }' input_1.txt
```

```bash
# Печатает количество полей в строке, первое и последнее поле
awk '{ print NF, $1, $NF }' input_1.txt
```

```bash
awk '{ print $1, $2 * $3 }' input_1.txt
```

```bash
# Печатает номер строки и строку
awk '{ print NR, $0 }' input_1.txt
```

```bash
awk '{ print "total pay for", $1, "is", $2 * $3 }' input_1.txt
```
