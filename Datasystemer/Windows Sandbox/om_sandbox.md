# About Windows Sandbox

In Windows Sandbox, without any specific configuration file, the user is provided with a clean, isolated, and temporary desktop environment where they can run software and browse the internet without affecting the host system. Here's what a user can typically do inside an unconfigured Windows Sandbox:

1. **Run Applications:** You can run both pre-installed and newly downloaded applications. Windows Sandbox includes a set of basic utilities and apps that come with Windows.

2. **Internet Browsing:** It comes with Microsoft Edge, allowing for web browsing. Any browsing activity and data remain inside the sandbox and are deleted once it's closed.

3. **Install Software:** Users can download and install software to test. This is particularly useful for safely running untrusted or new software without risking the host system.

4. **Access Files:** While a non-configured Sandbox doesn't have access to host system files by default, you can copy files into the Sandbox environment from the host for testing or other purposes.

5. **Network Access:** The Sandbox has network connectivity (unless specifically disabled), allowing for internet access and the ability to download files or access web services.

6. **Basic Windows Features:** Features like the Command Prompt, PowerShell, and Task Manager are available for use.

7. **Testing and Development:** It's ideal for developers and testers to run code and applications in an isolated environment.

However, there are several limitations:

- **No Persistence:** When the Sandbox is closed, all data, including files, software installations, and system changes, are permanently deleted. The Sandbox always starts fresh upon launch.

- **Limited Resources:** The Sandbox uses system resources from the host machine. Its performance is contingent on the host's available resources.

- **No Host System Access:** By default, the Sandbox cannot access files or folders on the host system. You need a configuration file to set up shared folders.

- **Limited Hardware Access:** The Sandbox doesn't have direct access to the physical hardware like USB or GPU acceleration (unless virtual GPU is enabled).

Remember, while Windows Sandbox is a powerful tool for isolation and testing, it's not designed for long-term use or persistent workspaces. It's best utilized for temporary, isolated sessions to test applications, browse websites, or run potentially unsafe software.