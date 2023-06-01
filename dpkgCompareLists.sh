#!/bin/zsh

# Store the path to the initial_packages.txt file
initial_packages_file="$1"

# Generate a list of currently installed packages
dpkg --get-selections | awk '{print $1}' > dpkh.temp.installed.txt

# Compare the installed packages with the initial_packages.txt file and store the differences
comm -23 <(sort dpkh.temp.installed.txt) <(sort $initial_packages_file) > installed_packages_diff.txt

# Rename installed_packages_diff.txt to dpkh.temp.installed.txt
mv installed_packages_diff.txt dpkh.temp.installed.txt

# Echo the list of installed packages
echo "The following packages are installed:"
cat dpkh.temp.installed.txt

# Display a message indicating the process is complete
echo "The installed packages have been compared to $initial_packages_file. The list of installed packages has been saved to dpkh.temp.installed.txt"
