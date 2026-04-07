# Conduit-LXC-Installation-Script
Dieses Repository enthält ein Skript zur automatischen Installation und Konfiguration des Conduit Matrix-Servers innerhalb eines LXC-Containers (z. B. Proxmox). Das Skript richtet alles ein, einschließlich Node.js, npm, Cloning von Conduit und systemd-Service für automatischen Start.

Hier ist eine **strukturierte Schritt-für-Schritt-Erklärung**, wie du ein GitHub-Repository für dein Conduit-Installationsskript erstellst und dokumentierst. Du kannst diesen Text direkt als README.md nutzen oder als Anleitung posten:

---

# Conduit LXC Installation Script

Dieses Repository enthält ein Skript zur automatischen Installation und Konfiguration des Conduit Matrix-Servers innerhalb eines LXC-Containers (z. B. Proxmox). Das Skript richtet alles ein, einschließlich Node.js, npm, Cloning von Conduit und systemd-Service für automatischen Start.

## Schritt-für-Schritt-Anleitung



Repository lokal klonen

```bash
git clone https://github.com/USERNAME/conduit-lxc-install.git
cd conduit-lxc-install
```

Ersetze `USERNAME` durch deinen GitHub-Benutzernamen.

### 3. Skript hinzufügen

1. Erstelle die Datei `conduit_install_ct.sh`:

```bash
nano conduit_install_ct.sh
```

2. Füge den gesamten Skriptinhalt ein (Node.js Installation + Conduit + systemd-Service).
3. Speichern und schließen (`Ctrl+O`, `Enter`, `Ctrl+X`).
4. Skript ausführbar machen:

```bash
chmod +x conduit_install_ct.sh
```

### 4. Änderungen committen

```bash
git add conduit_install_ct.sh
git commit -m "Add Conduit LXC installation script with systemd setup"
```

### 5. Änderungen pushen

```bash
git push origin main
```

Das Skript ist nun in GitHub verfügbar.

### 6. README.md erstellen (optional, falls nicht vorhanden)

```markdown
# Conduit LXC Installation Script

Dieses Skript installiert Conduit Matrix Server innerhalb eines LXC-Containers und richtet systemd für automatischen Start ein.

**Benutzung:**
1. Skript in den Container kopieren.
2. Ausführbar machen: `chmod +x conduit_install_ct.sh`
3. Ausführen: `./conduit_install_ct.sh`
```

```bash
git add README.md
git commit -m "Add README"
git push origin main
```

### 7. Nutzung

* Im LXC-Container:

```bash
curl -O https://raw.githubusercontent.com/USERNAME/conduit-lxc-install/main/conduit_install_ct.sh
chmod +x conduit_install_ct.sh
./conduit_install_ct.sh
```

* Conduit läuft danach automatisch beim Start des Containers.

---

Wenn du willst, kann ich daraus direkt eine **fertige GitHub-Repo-Struktur mit LICENSE, README und Skript** bauen, die du nur pushen musst. Willst du, dass ich das mache?
