# Creating and managing users

### 2. `adduser`
- **Description**: A more user-friendly way to add a new user, typically a wrapper around `useradd`.
- **Usage**: `adduser [options] username`
- **Example**: `adduser newuser`  
  This command interactively creates a new user and sets up their home directory and other details.

### 3. `usermod`
- **Description**: Modifies a user account.
- **Usage**: `usermod [options] username`
- **Example**: `usermod -L newuser`  
  This locks the `newuser` account.
### 3.5 More `usermod`
Modify user information:
`usermod -c "Full Name" <username>` (changes the user's full name)
`usermod -g <groupname> <username>` (changes the user's primary group)
`usermod -s /bin/bash <username>` (changes the user's default shell)

Lock and unlock a user account:
`passwd -l <username>` (locks the user account)
`passwd -u <username>` (unlocks the user account)

### 4. `deluser`
- **Description**: Deletes a user from the system.
- **Usage**: `userdel [options] username`
- **Example**: `deluser <username>` (deletes the user account and home directory)

### 5. `passwd`
- **Description**: Sets or changes a user's password.
- **Usage**: `passwd [options] username`
- **Example**: `passwd newuser`  
  This command prompts to set a new password for `newuser`.

### 6. `chage`
- **Description**: Changes password expiry information.
- **Usage**: `chage [options] username`
- **Example**: `chage -E 2024-12-31 newuser`  
  Sets the account expiration date for `newuser`.
- **Example**: `chage -d 0 username`
  Forces the user to immediately change password after next login.


### 7. `id`
- **Description**: Displays user and group information for a specified user.
- **Usage**: `id [username]`
- **Example**: `id newuser`  
  Shows the user ID, group ID, and groups the user belongs to.

### 8. `groups`
- **Description**: Displays the groups a user belongs to.
- **Usage**: `groups [username]`
- **Example**: `groups newuser`  
  Lists all groups that `newuser` is a member of.

### 9. `gpasswd`
- **Description**: Administers `/etc/group` and `/etc/gshadow`. Adds and removes users from groups.
- **Usage**: `gpasswd [options] group`
- **Example**: `gpasswd -a newuser sudo`  
  Adds `newuser` to the `sudo` group.

### 10. `groupadd`
- **Description**: Adds a new group to the system.
- **Usage**: `groupadd [options] groupname`
- **Example**: `groupadd developers`  
  Creates a new group named `developers`.

### 11. `groupdel`
- **Description**: Deletes a group.
- **Usage**: `groupdel groupname`
- **Example**: `groupdel temporary`  
  Deletes the `temporary` group.

### 12. `groupmod`
- **Description**: Modifies a group.
- **Usage**: `groupmod [options] groupname`
- **Example**: `groupmod -n newname oldname`  
  Renames group `oldname` to `newname`.

### 13. `getent`
- **Description**: Gets entries from Name Service Switch libraries, which can be used to query information on users and groups.
- **Usage**: `getent database [key ...]`
- **Example**: `getent passwd newuser`  
  Shows the passwd entry for `newuser`.

### 14. `userlock (usermod -l)`
- **Description**: (Note: `userlock` might not be available in all distributions; use `usermod -L` and `usermod -U` for locking and unlocking.) Locks a user account.
- **Usage**: `userlock username`
- **Example**: `usermod -L newuser`  (eller -l)
  Locks `newuser`'s account.

### 15. `userunlock`
- **Description**: (Note: Similar to `userlock`, this might not be directly available; use `usermod -U`.) Unlocks a user account.
- **Usage**: `userunlock username`
- **Example**: `usermod -U newuser`  (eller -u)
  Unlocks `newuser`'s account.


## Using ssh to log into other linux machines users
Install openssh server on your machine:
```bash
sudo apt install openssh-server
```
Users can log into your machine using:
```bash
ssh username@hostip
```
