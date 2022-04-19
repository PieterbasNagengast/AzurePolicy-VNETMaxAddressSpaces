[![bicepBuild](https://github.com/PieterbasNagengast/AzurePolicy-VNETMaxAddressSpaces/actions/workflows/bicepBuild.yml/badge.svg)](https://github.com/PieterbasNagengast/AzurePolicy-VNETMaxAddressSpaces/actions/workflows/bicepBuild.yml)

# Azure Policy: Max VNET address spaces allowed

## Description

Maximum amount of address spaces allowed on VNET's.

## Background/Use case

Used in scenario's where you want to limit the amount of Address Spaces VNET's can have.
The maximum allowed Address Spaces can be specified as parameter.
If this policy is assigned:

- Creation of VNETs which exeeds the Maximum Address Spaces specified in paramters are denied

> **_NOTE:_** Existing VNET's which exceeds the Maximum Address Spaces specified in parameters will be marked as non-compliant in Azure Policy dashboard.

## Deploy

1. Deploy Policy to Management Group or Subscription level.
2. Assign policy

| Description | Template |
|---|---|
| Deploy to Azure Management Group| [![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FPieterbasNagengast%2FAzurePolicy-VNETMaxAddressSpaces%2Fmain%2FVNETMaxAddressSpaces-MgmtGrp.json)|
| Deploy to Azure Subscription | [![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FPieterbasNagengast%2FAzurePolicy-VNETMaxAddressSpaces%2Fmain%2FVNETMaxAddressSpaces-Sub.json)|
