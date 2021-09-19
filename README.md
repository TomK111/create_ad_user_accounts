# Create Active Directory User Accounts 

This PowerShell script automates the task if creating a user account in AD, setting a temporary password, making the user change their password upon logging in, and enabling the account
 
## How To Execute This Script

For this script to execute, you must meet the following requirements first:

- You must have Active Directory installed in Windows Server
- You must be on a domain controller
- You must have PowerShell installed
- You must be logged in as an administrator or have administrator privileges 

The temporary password can be changed within the script, but the temporary password is set to **passw0rd**. This might have to be changed depending on your password policies/requirements.

The script will ask for the user's first name and last name. 

Inside the script, you MUST specify the path to the OU (Organizational Unit), in which the user will reside in. 

After successfully entering the first and last name, the user account will be created within AD. 

---

## How To Find OU Path

If you are unsure how to find the OU path, here are the following steps:

- Open Active Directory Users & Computers

- Navigate to the specific OU that you want the user created in

- Right click on it and select **Properties**

- Navigate to **Attribute Editor**

- Scroll down until you find **DistinguishedName** attribute

- The value of that attribute will be the path. Copy and paste it inside the script where it asks for the path. 
