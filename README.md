# Conduit-LXC-Installation-Script
Dieses Repository enthält ein Skript zur automatischen Installation und Konfiguration des Conduit Matrix-Servers innerhalb eines LXC-Containers (z. B. Proxmox). Das Skript richtet alles ein, einschließlich Node.js, npm, Cloning von Conduit und systemd-Service für automatischen Start.

Hier ist eine **strukturierte Schritt-für-Schritt-Erklärung**, wie du ein GitHub-Repository für dein Conduit-Installationsskript erstellst und dokumentierst. Du kannst diesen Text direkt als README.md nutzen oder als Anleitung posten:

---

# Conduit LXC Installation Script

Dieses Repository enthält ein Skript zur automatischen Installation und Konfiguration des Conduit Matrix-Servers innerhalb eines LXC-Containers (z. B. Proxmox). Das Skript richtet alles ein, einschließlich Node.js, npm, Cloning von Conduit und systemd-Service für automatischen Start.

## Schritt-für-Schritt-Anleitung



Repository lokal klonen

```bash
https://github.com/Mehdi-Fadaei/Conduit-LXC-Installation-Script.git
cd conduit-lxc-install
```


Skript hinzufügen

1. Erstelle die Datei `conduit_install_ct.sh`:

```bash
chmod +x conduit_install_ct.sh
```

Benutzung:
1. Skript in den Container kopieren.
2. Ausführbar machen: `chmod +x conduit_install_ct.sh`
3. Ausführen: `./conduit_install_ct.sh`


Nutzung

* Im LXC-Container:

```bash
curl -O https://raw.githubusercontent.com/USERNAME/conduit-lxc-install/main/conduit_install_ct.sh
chmod +x conduit_install_ct.sh
./conduit_install_ct.sh
```

* Conduit läuft danach automatisch beim Start des Containers.
