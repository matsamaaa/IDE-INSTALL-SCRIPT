# Installing Visual Studio Code and PHPStorm on Ubuntu

This Bash script simplifies the installation of Visual Studio Code and PHPStorm on an Ubuntu system. It downloads and installs the applications, configures necessary dependencies, and adds the executables to the system's PATH.

## Usage

1. Open an command prompt

2. Ensure you have execution permissions for the script:

    ```bash
    chmod +x software_install.sh
    ```

3. Run the script:

    ```bash
    ./software_install.sh
    ```

3. Follow the instructions during the installation.

## Configuration

- The script downloads Visual Studio Code from the official Microsoft website.
- The version of PHPStorm is specified in the script. Make sure to update the `phpstorm_version` variable with the version you want to install.

## Notes

- The script uses `wget` to download .deb and .tar.gz files, `dpkg` to install .deb packages, and `tar` to extract .tar.gz files.
- Ensure you have administrator permissions to run the script (using `sudo`).

## Authors

- mat_sama

Feel free to customize this README according to your needs and specific situation. Include your author information and any other relevant details you find useful.