# Streaming server with Nginx
## Github Project Link
- [nginx github](https://github.com/arut/nginx-rtmp-module)

## Information
To set up a basic live video streaming server using Nginx with the RTMP module on a Zorin OS VM and stream from OBS Studio on a Windows computer, follow these steps:

## Steps:
### Step 1: Set Up the Zorin OS VM

1. **Update the system:**
   ```sh
   sudo apt update
   sudo apt upgrade
   ```

2. **Install Nginx and dependencies:**
   ```sh
   sudo apt install nginx libnginx-mod-rtmp
   ```

### Step 2: Configure Nginx with RTMP Module

1. **Edit the Nginx configuration file:**
   ```sh
   sudo nano /etc/nginx/nginx.conf
   ```

2. **Add the RTMP module configuration:**
   ```nginx
   events {
       worker_connections 1024;
   }

   http {
       sendfile on;
       tcp_nopush on;
       tcp_nodelay on;
       keepalive_timeout 65;
       types_hash_max_size 2048;

       include /etc/nginx/mime.types;
       default_type application/octet-stream;

       server {
           listen 80;
           server_name localhost;

           location / {
               root /var/www/html;
               index index.html index.htm;
           }
       }
   }

   rtmp {
       server {
           listen 1935;
           chunk_size 4096;

           application live {
               live on;
               record off;
           }
       }
   }
   ```

3. **Save and exit the editor (Ctrl+O, Enter, Ctrl+X).**

### Step 3: Start Nginx

1. **Restart Nginx to apply the changes:**
   ```sh
   sudo systemctl restart nginx
   ```

2. **Ensure Nginx is running:**
   ```sh
   sudo systemctl status nginx
   ```

### Step 4: Configure OBS Studio on Windows

1. **Open OBS Studio.**

2. **Go to "Settings" > "Stream".**

3. **Set the following:**
   - **Service:** Custom
   - **Server:** `rtmp://<ZORIN_OS_VM_IP>/live`
   - **Stream Key:** Choose any key you like, e.g., `myStream`

4. **Click "Apply" and then "OK".**

### Step 5: Start Streaming

1. **In OBS Studio, click "Start Streaming".**

2. **Open a media player like VLC on any computer and use the following URL to watch the stream:**
   ```sh
   rtmp://<ZORIN_OS_VM_IP>/live/myStream
   ```

By following these steps, you should be able to set up a basic live video streaming server on Zorin OS and stream from OBS Studio on a Windows computer.