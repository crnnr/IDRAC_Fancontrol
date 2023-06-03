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

# But why in the hell would I want to run a custom fan control??

Well...

Running custom fan control can provide several benefits in certain scenarios:

1. Temperature Optimization: Custom fan control allows you to fine-tune the fan speed based on temperature ranges specific to your system. By adjusting the fan speed according to the temperature, you can optimize cooling efficiency and maintain a balance between temperature and noise levels.

2. Noise Reduction: In some cases, the default fan control settings may be overly aggressive, resulting in high fan speeds and excessive noise. By implementing custom fan control, you can set more conservative fan speed profiles that prioritize noise reduction while still maintaining adequate cooling.

3. Energy Efficiency: Running fans at higher speeds consumes more energy. By customizing the fan control to adjust speeds based on actual temperature requirements, you can potentially reduce energy consumption and lower power costs.

4. Component Longevity: Consistently high fan speeds can put additional strain on the fan motors and other cooling components. With custom fan control, you can set fan speeds to operate within optimal ranges, potentially extending the lifespan of cooling components.

# But isn't that dangerous? 

While implementing custom fan control can offer benefits, there are potential problems that could occur. It's important to be aware of these challenges:

1. Inadequate Cooling: Incorrectly configuring fan control settings may result in insufficient cooling. If fan speeds are set too low or temperature ranges are not properly defined, it can lead to higher temperatures, increased heat buildup, and potential overheating of system components. This can cause system instability, performance issues, and even hardware damage.

2. Insufficient Fan Speed Control: Some systems may have limitations in their fan control capabilities. It's possible that the fan speed adjustments available through the iDRAC or other management tools may not provide enough granularity or flexibility to achieve the desired balance between cooling and noise levels.

3. Compatibility and Support: Custom fan control scripts or commands may not be compatible with all hardware configurations or firmware versions. It's essential to ensure that the specific commands and features used in the script are supported by your server model and iDRAC version. Incompatible commands or settings could lead to errors or unexpected behavior.

4. Noisy or Unpredictable Fan Behavior: In some cases, custom fan control may result in erratic or noisy fan behavior. If the fan speed adjustments are too frequent or abrupt, it can lead to increased noise levels and potentially disturb the environment or cause annoyance.

*It's very important that you monitor the service running here! Otherwise components could overheat or get damaged!*

# What does this thing acutally do

For each temperature range, the script sends a specific command to the iDRAC using the ipmitool command. The command sends a raw IPMI (Intelligent Platform Management Interface) command to adjust the fan speed. The fan speed values (0x0F, 0x14, 0x1e, etc.) correspond to different percentage levels.
So for example 0x0F is 15% (15 in Hex).
