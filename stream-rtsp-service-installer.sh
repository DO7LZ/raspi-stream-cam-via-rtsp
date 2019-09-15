#!/bin/bash
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install vlc
sudo touch stream-rtsp.service
echo "[Unit]" > stream-rtsp.service
echo "Description=auto start stream" >> stream-rtsp.service
echo "After=multi-user.target" >> stream-rtsp.service
echo "[Service]" >> stream-rtsp.service
echo "Type=simple" >> stream-rtsp.service
echo "ExecStart=/home/pi/stream-rtsp.sh" >> stream-rtsp.service
echo "User=pi" >> stream-rtsp.service
echo "WorkingDirectory=/home/pi" >> stream-rtsp.service
echo "Restart=on-failure" >> stream-rtsp.service
echo "[Install]" >> stream-rtsp.service
echo "WantedBy=multi-user.target" >> stream-rtsp.service
sudo cp stream-rtsp.service /etc/systemd/system/stream-rtsp.service
rm stream-rtsp.service
sudo systemctl enable stream-rtsp.service
sudo systemctl start stream-rtsp.service
sudo systemctl status stream-rtsp.service
