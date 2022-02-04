# Azure Policy: Max VNET address spaces allowed

## Description

Maximum amount of address spaces allowed on VNET's.

## Background/Use case

Used in scenraio's where you want to limit the amount of Address Spaces VNET's can have.
The maximum allowed Address Spaces can be specified as parameter.
If this policy is assigned:

- Creation of VNETs which exeeds the Maximum Address Spaces specified in paramters are denied

> **_NOTE:_** Existing VNET's which exceeds the Maximum Address Spaces specified in paramters will be marked as non-compliant in Azure Policy dash.

## Deploy

1. Deploy Policy to Management Group or Subscription level.
2. Assign policy

| Description | Bicep Template |
|---|---|
| Deploy to Azure Management Group| [![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FPieterbasNagengast%2FAzurePolicy-DenyEqualSubnetSizeAndAddressSpace%2Fmain%2FSubnetNotEqualToAddressSpace-MgmtGrp.json)|
| Deploy to Azure Subscription | [![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FPieterbasNagengast%2FAzurePolicy-DenyEqualSubnetSizeAndAddressSpace%2Fmain%2FSubnetNotEqualToAddressSpace-Sub.json)|
