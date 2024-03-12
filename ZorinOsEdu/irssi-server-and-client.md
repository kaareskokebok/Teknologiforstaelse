# Irc-server

## Table of contents

- [Installing irc on Debian server](#installing-irc-on-debian-server)
  - [Step 1: Install ircd-hybrid](#step-1-install-ircd-hybrid)
  - [Step 2: Configure ircd-hybrid](#step-2-configure-ircd-hybrid)
  - [Step 3: Start ircd-hybrid](#step-3-start-ircd-hybrid)
- [Connecting to the server](#connecting-to-the-server)
  - [Step 1: Install irssi](#step-1-install-irssi)
  - [Step 2: Run irssi and connect](#step-2-run-irssi-and-connect)
  - [Step 3: Installing and running oidentd](#step-3-installing-and-running-oidentd)
  - [Configuring oidentd (optional)](#configuring-oidentd-optional)
- [Commands in irssi](#commands-in-irssi)
  - [How to become an Operator (OP)](#how-to-become-OP-operator)
- [Logging in as an admin](#logging-in-as-an-admin)
  - [Step 1: Configure Operator Account on Your IRC Server](#step-1-configure-operator-account-on-your-irc-server)
  - [Step 2: Connect to Your IRC Server Using Irssi](#step-2-connect-to-your-irc-server-using-irssi)
  - [Step 3: Log In as an Operator](#step-3-log-in-as-an-operator)
  - [Notes and Troubleshooting](#notes-and-troubleshooting)

## Installing irc on Debian server 
Or just install on any Linux-OS.

### Step 1: Install ircd-hybrid

First, update your package list, then install `ircd-hybrid`:

```bash
sudo apt-get update
sudo apt-get install ircd-hybrid
```

### Step 2: Configure ircd-hybrid
#### (Skip this for now! Go to Step 3!)
After installation, you'll need to configure your IRC server. The main configuration files are located in `/etc/ircd-hybrid`. The primary configuration file you'll want to edit is `ircd.conf`.

1. **Edit the Configuration File**: You'll need to edit `/etc/ircd-hybrid/ircd.conf` to suit your needs. You can use any text editor like `nano` or `vim`. 

```bash
sudo nano /etc/ircd-hybrid/ircd.conf
```

2. **Configure Basic Settings**: Look for sections like `serverinfo`, `admin`, and `class`. You'll want to set your server's name, description, and administrative contact. Make sure to also review connection classes and adjust them as needed for your anticipated load and security requirements.

3. **Set Up Operator (Optional)**: If you want to create an IRC operator account, find the `operator` block and configure an operator username and password.

4. **Adjust Network Settings**: Ensure the `listen` block is configured for the IP addresses and ports your server should listen on. By default, it's set to listen on all interfaces (`0.0.0.0` or `::` for IPv6) on port 6667.

### Step 3: Start ircd-hybrid

After configuring your IRC server, you need to restart `ircd-hybrid` to apply the changes:

```bash
sudo systemctl restart ircd-hybrid
```

Ensure that the service is running properly:

```bash
sudo systemctl status ircd-hybrid
```

## Connecting to the server
### Step 1: Install irssi
Just run 
```bash
sudo apt-get install irssi
```

### Step 2: Run irssi and connect
Type `irssi` to run irssi. Connect using the following command:
```bash
/connect 192.168.1.124
```
Where 192.168.1.124 is the address of the irssi-server. If you want to connect to the irssi-server from
the same computer as the server, just use 
```bash
/connect localhost
```
**If you get an error msg on trying to connect, you may need to install identd first.**

### Step 3: Installing and running oidentd
`identd` refers to a daemon (background service) that implements the Ident Protocol. When an IRC server requests identification for a connecting user, `identd` responds with the username associated with the user's connection.

You can install an Ident server on Linux using the package management system. The most common package for this purpose is `oidentd`. Here's how you can install it:

1. Open your terminal.

2. Update your package lists to ensure you have the latest repository information:
   ```bash
   sudo apt-get update
   ```

3. Install `oidentd`:
   ```bash
   sudo apt-get install oidentd
   ```

4. Once installed, the `oidentd` service should start automatically. You can check its status to ensure it's running:
   ```bash
   sudo systemctl status oidentd
   ```

5. If it's not running, you can start it with:
   ```bash
   sudo systemctl start oidentd
   ```

6. To have `oidentd` start automatically on boot:
   ```bash
   sudo systemctl enable oidentd
   ```

### Configuring oidentd (optional)

After installation, you might need to configure `oidentd` to work correctly with your setup. Configuration files are typically located in `/etc/oidentd.conf` or a similar path. For most users, the default configuration should suffice, but you can customize it as needed for your specific requirements.

Make sure your firewall settings allow traffic on TCP port 113 if you're behind a firewall or using a router. You might need to forward this port to your machine where `oidentd` is running.

With `oidentd` installed and properly configured, your connection to IRC servers requesting identification through the Ident Protocol should now work without the previously mentioned error.

## Commands in irssi
You can find the available commands in the documentation here:
- [irssi.org/documentation/help/](https://irssi.org/documentation/help/)

Remember that some commands are only available to OPs (Operators). 

### How to become OP (operator)
When you start a new channel by `/join #newchan`, you are automatically Operator of your channel.
You can, among other things, kick a user from your channel with `/kick jens`, where jens is the nickname. You can 
also promote another user to OP, to help moderate your channel with `/OP jens`, now jens is an OP and can also kick etc. other users.

## Logging in as an admin

Logging in as an admin (or operator) on an IRC server using Irssi involves a couple of steps. These include setting up an operator account on your IRC server and then authenticating with that account through Irssi. Assuming you've already configured an operator account on your IRC server (as mentioned in previous steps for setting up an IRC server like `ircd-hybrid`), here's how to log in as an admin:

### Step 1: Configure Operator Account on Your IRC Server

In your IRC server's configuration file (for example, `/etc/ircd-hybrid/ircd.conf` for ircd-hybrid), you should have an operator block defined. It looks something like this:

```plaintext
operator {
  name = "adminName"; /* Operator's username */
  user = "*@*";       /* Allowed hostname or IP mask */
  password = "password";
  encrypted = no;     /* Change to yes if the password is encrypted */
  ...
};
```

Ensure this is correctly set up and the IRC server is restarted for the changes to take effect.

### Step 2: Connect to Your IRC Server Using Irssi

Open Irssi by typing `irssi` in your terminal and connect to your server. If the server is running locally, you can connect using:

```irc
/connect localhost
```

Replace `localhost` with your server's address if you're connecting over a network.

### Step 3: Log In as an Operator

Once connected to your IRC server, you need to authenticate as an operator. This is done using the `OPER` command in Irssi, which looks like this:

```irc
/OPER adminName password
```

Replace `adminName` with the operator username and `password` with the password you've configured in your server's `ircd.conf`.

After executing the `/OPER` command with the correct credentials, you should be authenticated as an IRC operator. Being an operator gives you higher privileges on the server, such as the ability to manage channels, kick users, and change server settings.

### Notes and Troubleshooting:

- **Password Encryption**: If your IRC server configuration specifies that the operator password is encrypted (`encrypted = yes`), you'll need to encrypt your password using the method expected by your IRC server (often MD5 or SHA). The process for doing this varies by server software, so refer to your server's documentation for instructions.
- **User Hostmask Matching**: Make sure the `user` field in the operator block correctly matches your connection. The `*@*` is a wildcard allowing any hostname or IP, but for security reasons, you might have specified a particular hostname or IP mask.
- **IRC Server Documentation**: Each IRC server software has its own specifics for operator accounts and authentication. If you're using a different server than `ircd-hybrid`, consult its documentation for precise instructions.
- **Security**: Use secure methods to keep your operator password confidential, and consider using SSL/TLS for connections to your IRC server to prevent eavesdropping.

By following these steps, you should be able to log in as an admin (operator) on your IRC server using Irssi.
