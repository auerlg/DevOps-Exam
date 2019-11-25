#! /bin/bash
sudo systemctl daemon-reload
sudo systemctl enable --now nodejs
sudo firewall-cmd --add-port=6543/tcp --permanent
sudo firewall-cmd --reload