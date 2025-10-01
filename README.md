# Overview
Bambu-stats is a docker stack that allows the use of [Grafana Dashboards](https://grafana.com/) to view the printer stats. 
<img width="690" height="450" alt="image" src="https://github.com/user-attachments/assets/a98b010a-8fbc-4047-ae7c-df9bf3f52ad8" />
# How it works
Bambu printers come with an MQTT topic that can be subscribed to which publishes a JSON output of the current printer statistics. This can be scrapped with python, stored in a MySQL and then fetched with Grafana. This stack method allows full customization of the information pulled, allows historical pulling of that data and the customization of how the data is displayed in Grafana.
# How to setup
  ## X1C
   1. On the printer screen, tap the settings button and then record the "Access Code" on your printer. To maintain security you can reset this code at any time but you will be required to re-compose this Docker stack with the new Access Code for it to continue to function. You do not need to enable "LAN only" mode for this to work.<br/>
    <img width="669" height="400" alt="image" src="https://github.com/user-attachments/assets/49ee9c1d-4eed-45bc-ab88-5edd3be6ad34" /><br/>
   2. On the printer screen, tap on the network tab and record the IP address. It is best to set this as a static IP of DHCP reservation to prevent it from changing in the future.<br/>
    <img width="695" height="420" alt="image" src="https://github.com/user-attachments/assets/f8f98d7f-8b75-4aee-b0fd-e011310b74a7" /><br/>
   3. In Docker clone the repository<br/>
   ```
   git clone https://github.com/chorn-dev/bambu-stats.git
   ```
   4. Edit the compose file to include your access code and printer IP 
  ```
  cd bambu-stats
  nano compose.yaml
  ```
  5. Change lines 10 and 11 to match your printer IP and access code<br/>
<img width="335" height="43" alt="image" src="https://github.com/user-attachments/assets/af618af0-d110-4b43-a7e4-e2ae5d1e980e" /><br/>
  6. Create the stack<br/>
  ```
  docker compose up -d
  ```
  7. Navigate to [DOCKER-HOST-IP]:3000 and log in with admin/admin, update the password<br/>


