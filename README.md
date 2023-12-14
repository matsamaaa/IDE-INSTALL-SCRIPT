# Installing Visual Studio Code and Chromium on Ubuntu

This Bash script simplifies the installation of Visual Studio Code and Chromium on an Ubuntu system. It downloads and installs the applications, configures necessary dependencies, and adds the executables to the system's PATH.

## Usage

1. Open a command prompt.

2. Ensure you have execution permissions for the script:

    ```bash
    chmod +x software_install.sh
    ```

3. Run the script:

    ```bash
    ./software_install.sh
    ```

4. Follow the instructions during the installation.

## Configuration

- The script downloads Visual Studio Code from the official Microsoft website.
- Chromium is installed using the system's package manager.

## Notes

- The script uses `wget` to download .deb files, `dpkg` to install .deb packages, and `apt` to install additional packages.
- Ensure you have administrator permissions to run the script (using `sudo`).

## Authors

- mat_sama

Feel free to customize this README according to your needs and specific situation. Include your author information and any other relevant details you find useful.