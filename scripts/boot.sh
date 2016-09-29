#!/bin/bash

# DESCRIPTION
# Creates macOS boot disk.

# SETTINGS
installer_path="/Applications/Install macOS Sierra.app/Contents/Resources/createinstallmedia"
disk_path="/Volumes/Untitled"
app_path="/Applications/Install macOS Sierra.app"

# EXECUTION
printf "macOS Boot Disk Tips\n"
printf "  - Use a USB drive (8GB or higher is best).\n"
printf "  - Use Disk Utility to format the USB drive (Use \"Untitled\" for the label).\n"
printf "\nmacOS Boot Disk Usage:\n"
printf "  1. Insert the USB boot disk into the machine to be upgraded.\n"
printf "  2. Reboot the machine.\n"
printf "  3. Hold down the OPTION key before the Apple logo appears.\n"
printf "  4. Select the USB boot disk from the menu.\n"
printf "  5. Format the machine's internal drive using Disk Utility.\n"
printf "  6. Install the new operating system.\n"
printf "\nmacOS Reinstall:\n"
printf "  1. Click the Apple icon from the operating system main menu.\n"
printf "  2. Select the \"Restart...\" menu option.\n"
printf "  3. Hold down the COMMAND+R keys before the Apple logo appears.\n"
printf "  4. Wait for the macOS installer to load from the recovery partition.\n"
printf "  5. Use the dialog options to launch Disk Utility, reinstall the system, etc.\n"

printf "\nCreating macOS boot disk...\n"

if [[ ! -d "$app_path" ]]; then
  printf "ERROR: macOS installer does not exist: $app_path. Use the App Store to download.\n"
  exit 1
fi

if [[ ! -d "$disk_path" ]]; then
  printf "ERROR: Boot disk must be mounted at: $disk_path.\n"
  exit 1
fi

sudo "$installer_path" --volume "$disk_path" --applicationpath "$app_path" --nointeraction
