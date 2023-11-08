# Bind IP address to domain name

*For example*: Being able to type jens.skolen i stedet for http://192.168.1.103 in the web browser.

To bind an IP address like `http://192.168.1.100` to a domain name on your local computer, 
you can use the hosts file. Here's how you can do it:

1. Run Notepad or any text editor as an administrator.
2. From the Notepad menu, go to File > Open and navigate to `C:\Windows\System32\drivers\etc`.
3. Change the file type filter to "All Files" to see the hosts file.
4. Open the hosts file.
5. Add a line at the end of the file with your IP address and the domain name you want to use, like `192.168.1.100 yourdomain.local`.
6. Save the changes.

This method only affects your local computer and will allow you to use the domain name in your web browser or other applications that resolve domain names using the hosts file.
