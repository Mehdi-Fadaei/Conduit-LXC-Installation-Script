#!/bin/bash
# conduit_install_ct.sh
# Führt Conduit-Installation innerhalb eines LXC-Containers aus und richtet systemd für automatischen Start ein

# Variablen
CONDUIT_PORT=3000
INSTALL_DIR="/opt/conduit"

# Update und Abhängigkeiten
apt update && apt upgrade -y
apt install -y git nodejs npm curl build-essential

# Conduit klonen
git clone https://gitlab.com/matrix-org/conduit.git $INSTALL_DIR
cd $INSTALL_DIR
npm install

# systemd-Service erstellen
cat >/etc/systemd/system/conduit.service <<EOL
[Unit]
Description=Conduit Matrix Server
After=network.target

[Service]
Type=simple
WorkingDirectory=$INSTALL_DIR
ExecStart=/usr/bin/npm start
Restart=always
Environment=PORT=$CONDUIT_PORT

[Install]
WantedBy=multi-user.target
EOL

# systemd aktivieren und starten
systemctl daemon-reload
systemctl enable conduit.service
systemctl start conduit.service

echo "Conduit Installation abgeschlossen. Läuft auf Port $CONDUIT_PORT und startet automatisch bei Containerstart."
