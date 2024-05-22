# ngrok - get your local web-server online fast

## How to use Ngrok together with Live Server in VS Code 

### Step 1: Install Live Server in VS Code

1. **Open VS Code.**
2. **Install the Live Server extension:**
   - Go to the Extensions view by clicking on the Extensions icon in the Activity Bar on the side of the window or by pressing `Ctrl+Shift+X`.
   - Search for "Live Server" and install it.

### Step 2: Start Live Server

1. **Open your project folder in VS Code.**
2. **Right-click on the `index.html` file (or any other file you want to serve) and select "Open with Live Server".**
3. **Live Server will start and open your site in your default web browser at `http://127.0.0.1:5500` (or another port if 5500 is taken).**

### Step 3: Install Ngrok

1. **Download and install Ngrok:**
   - Visit [Ngrok's official download page](https://ngrok.com/download).
   - Download the version for your operating system.
   - Unzip the downloaded file and place the `ngrok` executable in a directory that's included in your system's PATH.

2. **Authenticate Ngrok (if you haven't already):**
   - Sign up for an Ngrok account at [Ngrok's website](https://ngrok.com/).
   - After signing up, you will get an authentication token.
   - Run `ngrok authtoken YOUR_AUTH_TOKEN` in your terminal to save the authentication token to your configuration file.

### Step 4: Expose Your Local Server to the Internet Using Ngrok

1. **Open a terminal (Command Prompt, PowerShell, or terminal in VS Code).**
2. **Run Ngrok to expose the Live Server:**
   - Since Live Server typically runs on port 5500, use the following command:
     ```sh
     ngrok http 5500
     ```
   - Ngrok will create a public URL for your local server and display it in the terminal. It will look something like `http://random-string.ngrok.io`.

### Step 5: Access Your Website Online

1. **Copy the public URL provided by Ngrok (e.g., `http://random-string.ngrok.io`).**
2. **Share this URL with others, or open it in a different device’s web browser to view your website hosted locally but accessible online.**

### Example Workflow

1. **Install and run Live Server in VS Code:**
   - Open your project.
   - Right-click `index.html` -> "Open with Live Server".
   - Verify your site is running locally at `http://127.0.0.1:5500`.

2. **Run Ngrok in the terminal:**
   - Open a terminal.
   - Run `ngrok http 5500`.
   - Note the public URL provided by Ngrok.

3. **Access the Ngrok URL from any device.**

This setup allows you to quickly share your local development site with others without deploying it to a production server.