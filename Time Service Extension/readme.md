**Windows Admin Center extension - Time Service**

Windows Admin Center extension for [W32Time](https://docs.microsoft.com/windows-server/networking/windows-time-service/windows-time-service-top) enables you to quickly synchronize the date and time for all computers running on Windows 10 or Windows Server 2016 and above. Time synchronization is critical for the proper operation of many Windows services and line-of-business (LOB) applications. The Windows Time service uses the Network Time Protocol (NTP) to synchronize computer clocks on the network. NTP ensures that an accurate clock value, or timestamp, can be assigned to network validation and resource access requests.

In this article, you set your system for accurate time using Windows Admin Center. 

Setting up involves the following tasks:

* Download Time Service nupkg
* Set up Windows Admin Center, if you haven't done so already
* Install the Time Service extension for Windows Admin Center
* Set desired time accuracy for your system
* Check to make sure your system configurations support your desired time accuracy

## Download the Time Service extension.

If you haven't already downloaded the preview extension, download it from [this github page](https://github.com/microsoft/W32Time/blob/master/msft.sme.time-service.0.47.4.nupkg). 

## Setting up Windows Admin Center

If you haven't already installed Windows Admin Center, see [install Windows Admin Center](https://aka.ms/aks-hci-wac-2009). You can run Windows Admin Center either on a Windows 10 machine or on a server. Make sure your Windows Admin Center version is build 2009 or later. 

## Installing the Time Service extension

Once you have obtained the nupkg, you must save the `.nupkg` file locally or to an SMB share and add the file path to the "Feeds" list in your Windows Admin Center extension manager. The `.nupkg` file is a NuGet package that contains the Windows Admin Center extension.

To access your existing extension feed, open Windows Admin Center and select on the gear in the top-right corner of the screen. This will take you to the settings menu. The extension feeds can be found under the **Gateway** section in the **Extensions** menu. Navigate to the **Feeds** tab and select **Add**. In this pane, paste the file path to your copy of the Time Service extension and select **Add**. If your file path was added successfully, you'll receive a success notification. 

Now that we have added the feed, the Time Service extension will be available in the list of available extensions. Once you have the extension selected, select **Install** at the top of the table to install this extension. Windows Admin Center will reload after installation is complete.

## Set desired time accuracy for your system

Once you have intalled the time service extension, log in to your machine on Windows Admin Center and scroll down to the Time Service extension. On the settings page, click on Edit settings. In the dialog box, select your desired accuracy from 5 minutes, 1 second, 50 millisecond or 1 millisecond.

Next choose the time providers that enable you to get the accurate time you selected in the previous step:

- Active Directory: If your machine is domain joined, W32Time service synchronizes time from the domain hierarchy when this option is chosen. This option will be unavailable if your machine is not domain joined.
- Hyper-v Host Time: If your machine is a virtual machine, W32Time service synchronizes time from the Hyper-V host when this option is chosen. This option will be unavailable if your machine is not a virtual machine.
- Network Time Protocol: The Windows Time service uses the Network Time Protocol (NTP) as the default time protocol to synchronize computer clocks on the network. NTP ensures that an accurate clock value, or timestamp, can be assigned to network validation and resource access requests. You can choose NTP as an accurate time provider for your Windows client, server or virtual machine. When you choose NTP, you also have to provide 1 or more external, highly accurate time servers. 
- Precision Time Protocol: Precision Time Protocol (PTP) provides accurate time by enabling network devices to add the latency introduced by each network device into the timing measurements thereby providing a far more accurate time sample to the windows client. You can choose PTP as an accurate time provider for your Windows client, server or virtual machine. When you choose PTP, you also have to provide 1 or more external, highly accurate time servers. For more information on PTP for W32Time, visit [PTP on W32Time announcement blog](https://techcommunity.microsoft.com/t5/networking-blog/top-10-networking-features-in-windows-server-2019-10-accurate/ba-p/339739). Note that if you do not have the right registry keys in place, the option to select PTP on the extension will be disabled. For more information on registry keys for PTP, visit [add registry keys for PTP](https://github.com/microsoft/W32Time/blob/master/Precision%20Time%20Protocol/Windows%20Configuration%20Helpers/PTPClientConfig.txt).
