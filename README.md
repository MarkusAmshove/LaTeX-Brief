![Bild](https://amshove.org/posts/BriefeMitLaTeX/Vorschau.png)

Diese Vorlage habe ich in meinem [Blog](https://amshove.org/posts/2016/02/BriefeMitLaTeX/) vorgestellt.
Sie nutzt [Koma-Skript](http://www.komascript.de/) und [scrlttr2](https://www.ctan.org/pkg/scrlttr2) zur Erstellung eines Briefes mit LaTeX.

# Verwendung der Vorlage

Die eigenen Daten müssen einmalig in der [Absender.lco](https://github.com/MarkusAmshove/LaTeX-Brief/blob/master/Absender.lco) eingegeben werden.
Anschließend können `Brief.tex` und `Absender.lco` für jeden neuen Brief kopiert und mit LaTeX kompiliert werden, wobei der Inhalt des Briefes in `Brief.tex` steht.

# Verwendung in PowerShell

Für die Verwendung des Powershell-Skripts muss die Datei Powershell.ps1 über
```powershell
. .\Powershell.ps1
```

eingebunden werden.

Nun kann man irgendwo in der Powershell mit

```powershell
Neuer-Brief "Titel"
```

einen Brief anfangen. Das kopiert die nötigen Dateien und erstellt dafür einen Unterordner.

Nun die Brief.tex mit dem bevorzugten Texteditor anpassen mit Inhalt, Empfänger usw. und mit
```powershell
Erstelle-Brief
```

den Brief kompilieren lassen.

Hierzu wird pdflatex im PATH benötigt.
