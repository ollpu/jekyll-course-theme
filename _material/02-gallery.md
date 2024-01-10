---
title: Element Gallery
slug: gallery
sections:
 - Note
 - Code
 - Math
 - Table
---

# Element Gallery

## Note

{: .note }
Proin fermentum _mollis_ elit id porta. Morbi vulputate risus a dictum
scelerisque. **Nunc** purus felis, maximus vel euismod non, dictum id nibh.
Aenean facilisis leo est, _in vehicula diam iaculis_ (_vitae_). Morbi gravida
varius orci, in tempus eros laoreet a. In volutpat, risus nec tempus
consequat, est ex fringilla lacus, ac fringilla nisl nibh sed sapien.
Maecenas vel libero nec nunc rutrum venenatis eget ac nisi. Suspendisse
egestas, nunc et interdum mattis, dolor lacus congue lacus, vitae
condimentum nulla tortor finibus ante. Vestibulum non elit odio. Fusce
porta lacus nisi, quis eleifend nulla imperdiet quis.

<div class="note" markdown="1">
A note with content other than just one paragraph.

```
such as a code snippet
```
</div>

<!-- The .note-title can optionally be made a title (#, ##, ###, ...) for
     semantics but a plain paragraph will work as well. -->

{: .note-title }
### Title here

{: .note }
A note with a title

## Code

### SQL code

```sql
SELECT
  Kurssit.nimi, Opettajat.nimi
FROM
  Kurssit, Opettajat
WHERE
  Kurssit.opettaja_id = Opettajat.id;
```

### SQLite console

```console?lang=sqlite
sqlite> SELECT 2*(1+3);
8
sqlite> SELECT 'tes' || 'ti';
testi
sqlite> SELECT 3 < 5;
1
```

### Python code

{: .code-title }
main.py
```python
import tuotteet

print("1 - Lisää uusi tuote")
print("2 - Hae tuotteen hinta")
print("3 - Sulje ohjelma")

while True:
    komento = input("Anna komento: ")

    if komento == "1":
        nimi = input("Tuotteen nimi: ")
        hinta = input("Tuotteen hinta: ")
        tuotteet.lisaa_tuote(nimi, hinta)

    if komento == "2":
        nimi = input("Tuotteen nimi: ")
        hinta = tuotteet.hae_hinta(nimi)
        if hinta:
            print("Hinta on", hinta)
        else:
            print("Ei löytynyt")

    if komento == "3":
        break
```

### Code with line numbers

<!-- The console?lang=.. syntax is unfortunately not supported here -->

{% highlight python linenos %}
def count_even(numbers):
    result = 0
    for x in numbers:
        if x % 2 == 0:
            result += 1
    return result

def count_odd(numbers):
    result = 0
    for x in numbers:
        if x % 2 == 1:
            result += 1
    return result
{% endhighlight %}

### Wide text

```
Praesent nec pellentesque magna. Nunc tincidunt tempor diam aliquet gravida. Praesent tincidunt ipsum felis, vel facilisis magna tincidunt ac. Duis gravida
vestibulum urna, ac blandit elit aliquet vel. In hac habitasse platea dictumst. Fusce faucibus ipsum non maximus luctus. Pellentesque nec arcu id ipsum
pharetra fermentum. Cras viverra, enim rutrum pharetra convallis, metus tortor gravida neque, et rhoncus dolor metus vel dolor. Etiam interdum dictum tortor,
finibus ullamcorper eros dapibus vitae. Aenean eget lacus eu sem luctus dignissim quis a tortor. Class aptent taciti sociosqu ad litora torquent per
conubia nostra, per inceptos himenaeos. Donec pretium a orci vel rhoncus.
```

### Inline

Text and `inline code`, also `longer string of inline code which should wrap to multiple lines`.

## Math

Inline $$\KaTeX$$ math

Block:

$$
\hat f(\omega) = \int_{-\infty}^{\infty} e^{-i2\pi\omega x} f(x) \mathit{dx}
$$

## Table

|            | Header line | Other column        |
| ---------- | ----------- | ------------------- |
| First item | Content     | _Content_           |
| Other item | Other       |                     |
| ---------- | ----------- | ------------------- |
| Separate   | section     | Longer content text |

### Database table

{: .inline title="Suoritukset" }
| id | opiskelija_id | kurssi_id |
| -- | ------------- | --------- |
| 1  | 123123        | 111       |
| 2  | 321321        | 111       |
| 3  | 123123        | 222       |
| 4  | 321321        | 333       |

{: .inline title="Kurssit" }
| id  | op |
| --- | -- |
| 111 | 5  |
| 222 | 10 |
| 333 | 5  |

### Minimum cell width

{: .cell-w-3 }
| A | BB | CCC | |
| - | -- | --- | |
| 1 | 12 | 12345678 | |

