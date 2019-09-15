# Stream live video from local Raspberry Pi camera to Synology Surveillance Station

Simple shell script for installing a service to stream the local camera video into local network via rtsp.

Code was originally proposed in the blog of Chris Carey. See this link for description: https://chriscarey.com/blog/2017/04/30/achieving-high-frame-rate-with-a-raspberry-pi-camera-system/comment-page-1/

Tested successfully with a Raspberry Pi 4 (2GB) on raspbian buster and a Surveillance Station running on a Synology DS415+.

## Usage

1. Copy all files into the directory /home/pi/
2. Execute the stream-rtsp-service-installer.sh script once. This will setup the camera streaming as a systemd service.
3. (If needed: Make any changes to the stream-rtsp.sh script to modify the camera settings.)
4. Open Synology Surveillance Station.
- Go to IP-Kamera --> Hinzufügen --> Kamera hinzufügen --> Schnelles Setup
- "Marke" = "Benutzerdefiniert"
- "Typ" = "Streaming - RTSP" 
- "Pfad:" = "<local ip>:8554/stream.sdp"

## Optional security improvements

- Installation of fail2ban
- Scheduling automatic updates and upgrades via crontab
- Activation and configuration of iptables to allow only access to the streaming port, ports for updates and perhaps to ssh.
