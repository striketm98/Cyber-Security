Wireshark is an open-source network protocol analyzer tool indispensable for system administration and security. It drills down and displays data travelling on the network. Wireshark allows you to either capture live network packets or to save it for offline analysis.

One of the features of Wireshark that you will love to learn is the display filter which lets you inspect only that traffic you are really interested in. Wireshark is available for various platforms including Windows, Linux, MacOS, FreeBSD, and some others.

Some of the tasks one can perform with Wireshark are

Capturing and finding traffic passing through your network
Inspection of hundreds of different protocols
Live capture of traffic/offline analysis
Troubleshooting dropped packets and latency problems
Looking at attempts of attacks or malicious activities
In this article, we will explain how to install Wireshark on the Ubuntu system. The installation procedures have been tested on Ubuntu 20.04 LTS.

Note:

We have used the command line Terminal for the installation procedure. You can launch the Terminal via Ctrl+Alt+T keyboard shortcut.
You must be a root user or have sudo privileges in order to install and use Wireshark to capture data on your system.
Installing Wireshark
For installing Wireshark, you will need to add the “Universe” repository. Issue the following command in Terminal to do so:

$ sudo add-apt-repository universe
Now issue the following command in Terminal to install Wireshark on your system:

$ sudo apt install Wireshark
When prompted for a password, type sudo password.
After running the above command, you might be asked for confirmation, hit y, and then hit Enter, after which installation of Wireshark will be started in your system.

During the installation of Wireshark, the following window will appear asking you if you want to allow non-superusers to capture packets. Enabling it can be a security risk, so it is better to leave it disabled and hit Enter.
Once the installation of Wireshark is completed, you can verify it using the following command in Terminal:
$ wireshark --version
If Wireshark has installed successfully, you will a similar output displaying the version of Wireshark installed.

Launch Wireshark
Now you are ready to launch and use Wireshark on your Ubuntu machine. In order to launch Wireshark, issue the following command in Terminal:
$ sudo wireshark
If you are logged in as a root user, you can also launch Wireshark form the GUI. Hit the super key and type wireshark in the search bar. When the icon for the Wireshark appears, click on it to launch it.
Remember you will not be able to capture network traffic if you launch Wireshark without root or sudo privilege.

When the Wireshark opens, you will see the following default view:
Using Wireshark
Wireshark is a powerful tool with plenty of features. Here we will just go through the basics of the two important features that are: packet capture and display filter.

Packet Capture
In order to capture packets using Wireshark, follow the below simple steps:

1. From the list of available network interfaces in the Wireshark window, select the interface on which you want to capture packets.

2. From the toolbar at the top, click the start button to start capturing the packets on the selected interface as shown in the following screenshot.

<img width="424" alt="image" src="https://user-images.githubusercontent.com/65080702/169664410-bf0076bb-d80a-4665-8e94-4ef2247cba30.png">

