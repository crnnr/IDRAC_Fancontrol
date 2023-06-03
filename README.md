# IDRAC_Fancontrol
This monitors the temperature of a system using the sensors command and adjusts the fan speed of an iDRAC (Integrated Dell Remote Access Controller) based on the temperature readings.


The Integrated Dell Remote Access Controller (iDRAC) is a hardware component and management tool developed by Dell for remote monitoring and management of Dell servers. It provides out-of-band management capabilities, allowing administrators to access and control the server even when the server is powered off or the operating system is unresponsive.

# Key features of iDRAC include:

    1. Remote Access: iDRAC provides secure remote access to the server console, allowing administrators to manage the server as if they were physically present at the server's location. This includes accessing the BIOS, interacting with the operating system, and troubleshooting server issues.

    2. Server Monitoring: iDRAC enables real-time monitoring of hardware components such as CPU, memory, storage, and temperature. It provides alerts and notifications for critical events and allows proactive troubleshooting.

    3. Power Management: iDRAC allows administrators to remotely power on/off or reboot the server. This is particularly useful for remote locations or lights-out data centers.

    4. Firmware and BIOS Management: iDRAC facilitates remote firmware updates, BIOS configuration, and inventory management for Dell servers.

# To use iDRAC, you need the following:

    1. Dell Server with iDRAC: iDRAC is embedded in Dell PowerEdge servers. It is available in different versions (iDRAC6, iDRAC7, iDRAC8, etc.) with varying capabilities. The specific iDRAC version depends on the server model and generation.

    2. Network Connectivity: The server needs to be connected to a network (either local or remote) to enable remote access to iDRAC.

    3. iDRAC License: Some advanced features of iDRAC may require a separate license, such as the Enterprise license. The license level determines the available features and capabilities.

# Setting up iDRAC typically involves the following steps:

    1. Physical Installation: Ensure that the server is properly installed and connected to power and network infrastructure.

    2. Network Configuration: Assign an IP address to the iDRAC interface either through DHCP or by manually configuring a static IP address. This allows remote access to the iDRAC.

    3. Accessing iDRAC: Open a web browser and enter the iDRAC IP address in the address bar. This will bring up the iDRAC login page.

    4. Login and Initial Setup: Enter the default or configured username and password to log in to the iDRAC interface. You can then proceed with the initial setup, including changing the default password, configuring network settings, and enabling necessary services.

    5. Configuration and Management: Once logged into the iDRAC interface, you can explore the available options for remote server management, monitoring, and configuration. This includes accessing the server console, viewing hardware information, configuring alerts, updating firmware, and more.

It's important to consult the specific documentation and user guides provided by Dell for your server model and iDRAC version to ensure the correct setup and configuration process.
