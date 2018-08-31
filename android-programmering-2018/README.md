###  Husk å skrive inn navnet ditt på linje 2 i scriptet om du ønsker at zip-filen skal ha riktig navn.

Et lite bash script som tar kopi av android-obligen og fjerner overflødige filer før den zipper mappen klar for innlevering (den sletter altså ingen filer i den opprinnelige mappen din).


Gjør den kjørbar:
```
$ chmod +x zipandroidoblig.sh
```

Det letteste er å legge scriptet i AndroidStudioProjects-mappa hvis du ikke allerede har satt opp en path til scripts.

Kjør den i mappen hvor *mappen til* obligen ligger.

Eksempel på bruk:

```
$ ~/AndroidStudioProjects: ./zipandroidoblig.sh Oblig1/
```




For Windows:

https://docs.microsoft.com/en-us/windows/wsl/install-win10

https://superuser.com/questions/1066261/how-to-access-windows-folders-from-bash-on-ubuntu-on-windows/1258087#1258087
