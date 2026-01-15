положите раскладки с помощью load.sh

./load.sh en_chars
./load.sh ru_chars


Зарегистрируйте раскладки в /usr/share/X11/xkb/rules/evdev.xml:

Добавьте запись в секцию <layoutList>:
<layout>
      <configItem>
        <name>en_chars</name>
        <shortDescription>en</shortDescription>
        <description>English character compatible</description>
        <languageList>
          <iso639Id>eng</iso639Id>
        </languageList>
      </configItem>
    </layout>
    <layout>
      <configItem>
        <name>ru_chars</name>
        <shortDescription>ru</shortDescription>
        <description>Russian character compatible</description>
        <languageList>
          <iso639Id>rus</iso639Id>
        </languageList>
      </configItem>
    </layout>

Также отредактируйте:
bashsudo nano /usr/share/X11/xkb/rules/evdev.lst
```

Добавьте в секцию `! layout` строку:
```

  en_chars         English characters compatible
  ru_chars         Russian characters compatible

сделайте logout или перезагрузите систему