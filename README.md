# Installing Visual Studio Code, Chromium, and User Configurations on Ubuntu

This Bash script simplifies the installation of Visual Studio Code and Chromium on an Ubuntu system. Additionally, it includes a second script, "script.sh," which allows you to create users with their configurations.

## Usage

1. Open a command prompt.

2. Ensure you have execution permissions for the scripts:

    ```bash
    chmod +x software_install.sh script.sh
    ```

3. Run the installation script:

    ```bash
    ./software_install.sh
    ```

4. Follow the instructions during the installation.

5. To create users with configurations, run the user creation script:

    ```bash
    ./script.sh
    ```

## Configuration

- The installation script downloads Visual Studio Code from the official Microsoft website.
- Chromium is installed using the system's package manager.
- The user creation script sets up users with their configurations.

## Notes

- The installation script uses `wget` to download .deb files, `dpkg` to install .deb packages, and `apt` to install additional packages.
- Ensure you have administrator permissions to run the scripts (using `sudo`).

## Authors

- mat_sama

Feel free to customize this README according to your needs and specific situation. Include your author information and any other relevant details you find useful.
