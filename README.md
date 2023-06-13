# Clique em / Klicke auf  / Click on / Cliquez sur :

* [Instruções para atualizar (em menos de um minuto)](#instruções-para-atualizar-em-menos-de-um-minuto)
* [Anleitung zur Aktualisierung (innerhalb einer Minute)](#anleitung-zur-aktualisierung-innerhalb-einer-minute)
* [Instructions for updating (in less than a minute)](#instructions-for-updating-in-less-than-a-minute)
* [Instructions pour la mise à jour (en moins d'une minute)](#instructions-pour-la-mise-à-jour-en-moins-dune-minute)

# What is this shell script good for?

The file `opensuse-upgrade.sh` is a shell script to automatically upgrade the OpenSUSE distribution in the simplest way possible.
Meant, for example, to be passed to all those (distant) acquaintances on whose computers you installed OpenSUSE a while ago;
whose installations better be maintained, though they know little about administrating Linux, but [principally](http://opensuse-guide.org/apps.php) use

- a web browser such as `Firefox`,
- an office suite such as `LibreOffice`,
- a media player such as `VLC`,
- a `PDF` viewer such as `Evince` or `Okular`, and,
- perhaps,

    - an email client such as `Thunderbird`, and
    - a picture organizer and editor such as `digikam`, `Kamera` and `Krita`,
    - an audio organizer such as `picard`, `kid3` or `easytag`,
    - have happily discovered `KDEconnect`.

# Word of Warning

It is [officially recommended](https://en.opensuse.org/SDB:System_upgrade#Summary) to update using a DVD;
generally, a manual [GUI](https://linuxkamarada.com/en/2021/12/23/linux-kamarada-and-opensuse-leap-how-to-upgrade-from-152-to-153/) or [CLI](https://www.cyberciti.biz/faq/how-to-upgrade-opensuse-15-2-to-15-3-using-the-cli/) approach to upgrade is more robust.

But they also demand more time and more experience in administering an openSUSE installation:
The whole process of

1. downloading the ISO file of the latest openSUSE installation DVD,
1. loading it onto a bootable USB stick,
1. booting the computer from the USB stick, and
1. following trough the upgrade procedure,

requires more instructions than the ones for the online upgrade given here.
These are for those users who know little about administering an openSUSE installation and are looking for a convenient way to keep it updated.

If finally you decide to follow the instructions given here, you have to trust the [code](https://github.com/Konfekt/opensuse-distribution-upgrade.sh/blob/master/opensuse-upgrade.sh) executed underneath:
Either ask a trustworthy third party that understands this fairly simple code, or inspect it yourself, to see that it only updates repository numbers, the distribution and some multimedia packages.

# Parameters passed to the Script

The first, mandatory, parameter is the version number to be updated to, for example, [openSUSE's current version number](https://en.opensuse.org/openSUSE:Release_Notes), at the time of writing `15.6`.
The second, optional, parameter `--no-packman` skips the installation of multimedia codes, for example, on a [`WSL`](https://github.com/microsoft/WSL/) installation without graphical interface.

# Instructions for updating (in less than a minute)

To update the operating system `openSUSE Leap`:

0. Connect the computer to the Internet.
1. To start a console:

    1. press the `Windows` key (to the left of the space bar) once.
    1. type the word `Konsole` and press the Enter key to launch it.
    1. Then return to this browser window (by clicking on it).

2. To insert the line below that reads `curl ...` into the `Konsole` (where `15.6` is to be replaced by [openSUSE's current version number](https://en.opensuse.org/openSUSE:Release_Notes)):

    ```sh
    curl -s https://raw.githubusercontent.com/Konfekt/opensuse-distribution-upgrade.sh/master/opensuse-upgrade.sh | sudo bash /dev/stdin 15.6
    ```

    1. mark it completely (say by a fast triple click on it),
    1. copy it (by simultaneously pressing the `Ctrl` and `C` keys), and
    1. insert it into the Konsole window by clicking the window and then pressing the `Ctrl`, `SHIFT` and `V` keys simultaneously

    1. press the Enter key.

3. After entering the administrator password (where the entered letters are not displayed) and hitting the Enter key, the update starts and takes about half an hour.

# Anleitung zur Aktualisierung (innerhalb einer Minute)

Zur Aktualisierung des Betriebssystems `openSUSE Leap`:

0. Den Computer mit dem Internet verbinden.
1. Um eine Konsole zu öffnen:

    1. Windowstaste (links neben der Leertaste) einmal drücken.
    1. Das Wort `Konsole` eingeben und die Eingabetaste drücken, um sie zu starten.
    1. Dann zu diesem Browserfenster zurückkehren (durch einen Klick hierauf).

2. Um die folgende Zeile, die mit `curl ...` beginnt in die Konsole einzufügen (wobei `15.6` durch [openSUSEs aktuelle Versionsnummer](https://de.opensuse.org/Versionshinweise) zu ersetzen ist):

    ```sh
    curl -s https://raw.githubusercontent.com/Konfekt/opensuse-distribution-upgrade.sh/master/opensuse-upgrade.sh | sudo bash /dev/stdin 15.6
    ```

    1. vollständig markieren (etwa durch einen schnellen Dreifachklick auf sie),
    1. kopieren (durch gleichzeitges Drücken der Tasten `Strg` und `C`), und
    1. in das Fenster der Konsole einfügen durch Klicken des Fensters und dann gleichzeitges Drücken der Tasten `Strg`, `UMSCHALT` und `V`:

    1. Eingabetaste drücken.

3. Nach Eingabe des Administratorpassworts (wobei die eingegebenen Symbole nicht angezeigt werden) und drücken der Eingabetaste startet die Aktualisierung und dauert etwa eine halbe Stunde.

# Instruções para atualizar (em menos de um minuto)

Para atualizar o sistema operacional `openSUSE Leap`:

0. Conecte o computador à Internet.
1. Para iniciar um console:

    1. Pressione a tecla `Windows` (à esquerda da barra de espaço) uma vez.
    1. Digite a palavra `Konsole` e pressione a tecla `Enter` para inicá-lo.
    1. Em seguida, volte a esta janela do navegador (clicando nela).

2. Para inserir a linha abaixo que começa com `curl ...`  no Konsole (onde `15.6` deve ser substituido pelo [número da versão atual de openSUSE Leap](https://en.opensuse.org/openSUSE:Release_Notes)):

    ```sh
    curl -s https://raw.githubusercontent.com/Konfekt/opensuse-distribution-upgrade.sh/master/opensuse-upgrade.sh | sudo bash /dev/stdin 15.6
    ```

    1. marque-a inteiramente (cliquando rápido três vezes sobre ela),
    1. copie-a (pressionando simultaneamente as teclas `Ctrl` e `C`), e
    1. insira-a na janela da Konsole, clicando a janela e em seguida pressionando simultaneamente as teclas `Ctrl`, `SHIFT` (= a tecla de maiúsculas) e `V`.

    1. pressione a tecla `Enter`.

3. Após digitar a senha de administrador (onde os símbolos teclados não aparecem) e teclar `Enter`, a actualização começa e levará uma meia hora.

# Instructions pour la mise à jour (en moins d'une minute)

Pour mettre à jour le système d'exploitation `openSUSE Leap` :

0. Connectez l'ordinateur à l'Internet.
1. Pour lancer une console :

    1. appuyez une fois sur la touche `Windows` (à gauche de la barre d'espacement).
    1. tapez le mot `Konsole` et appuyez sur la touche Entrée pour la lancer.
    1. Ensuite, revenez à cette fenêtre du navigateur (en cliquant dessus).

2. Insérez la ligne ci-dessous qui se lit `curl ...` dans la console (où `15.6` doit être remplacé par [le numéro de la version actuelle de openSUSE Leap](https://en.opensuse.org/openSUSE:Release_Notes)) :

    ```sh
    curl -s https://raw.githubusercontent.com/Konfekt/opensuse-distribution-upgrade.sh/master/opensuse-upgrade.sh | sudo bash /dev/stdin 15.6
    ```

    1. marquez-la complètement (disons par un triple clic rapide sur elle),
    1. copiez-la (en appuyant simultanément sur les touches "Ctrl" et "C"), et
    1. insérez-la dans la fenêtre de la console en cliquant sur la fenêtre et en appuyant simultanément sur les touches `Ctrl`, `SHIFT` et `V`
    1. appuyez sur la touche Entrée.

3. Après avoir saisi le mot de passe administrateur (où les lettres saisies ne sont pas affichées) et appuyé sur la touche Entrée, la mise à jour commence et prendra environ une demi-heure.
