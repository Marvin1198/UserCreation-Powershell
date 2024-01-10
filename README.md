# Active Directory User Creation Script

## Overview

This PowerShell script automates the creation of user accounts in Active Directory. It includes functionality to create a new Organizational Unit (OU) named "Projects" and generates user accounts within that OU. The script sets various attributes for each user, such as name, address, and additional information.

## Features

- **Organizational Unit Creation:** The script creates an OU named "Projects" within the specified domain.

- **User Account Creation:** User accounts are generated with customizable attributes, including name, address, and descriptive information.

- **Account Expiration:** An account expiration date is set for each user.

- **Security Questions:** Each user's "info" attribute is updated with a predefined security question and answer.

## Usage

1. **Modify Script Variables:** Update the script variables such as `$FacilitiesOU` and `$OU` to match your specific domain structure.

2. **Run the Script:** Execute the script in a PowerShell environment with the necessary permissions.

    ```powershell
    .\CreateUsers.ps1
    ```

3. **Review Output:** Verify the successful creation of OUs and user accounts.

## Important Notes

- Ensure that the script is executed with appropriate permissions to create OUs and user accounts in Active Directory.

- Customize the script further based on specific requirements and attributes for user accounts.

## License

This project is licensed under the [MIT License](LICENSE).

Feel free to contribute, report issues, or suggest improvements!
