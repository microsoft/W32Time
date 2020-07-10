##### :star: More by the Microsoft Core Networking team can be found using the [MSFTNet](https://github.com/topics/msftnet) topic

# W32Time

## SoftwareTimeStamping

### Description

This is a PowerShell Module and DSC Resources that can Get/Enable/Disable the Software Timestamping configuration.

**Note** The PowerShell cmdlets and DSC resources do NOT restart the network adapters.  This is required prior to timestamping settings being effectual.  To do this, you can use Restart-NetAdapter or restart the computer.

#### Installation

This module can be installed from the PowerShell Gallery.  To do this run the following command from an elevated PowerShell prompt:
```Install-Module SoftwareTimestamping```

Alternatively you can copy the SoftwareTimeStamping Folder into C:\Program Files\WindowsPowerShell\Modules

#### Test

Please try out our [validation guide](https://github.com/microsoft/W32Time/blob/master/Timestamping/docs/Validation%20Guide%20-%20Software%20Timestamping.docx)!

## Precision Time Protocol

### Description

Windows includes a PTPv2 (IEEE 1588v2) slave in the following versions of Windows:

- Windows 10 October 2018 Update (and later)
- Windows Server 2019 (and later)

This folder contains resources for the PTP Client

For more information, please see https://aka.ms/PTPValidation

## Contributing

This project welcomes contributions and suggestions.  Most contributions require you to agree to a
Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us
the rights to use your contribution. For details, visit https://cla.microsoft.com.

When you submit a pull request, a CLA-bot will automatically determine whether you need to provide
a CLA and decorate the PR appropriately (e.g., label, comment). Simply follow the instructions
provided by the bot. You will only need to do this once across all repos using our CLA.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or
contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.
