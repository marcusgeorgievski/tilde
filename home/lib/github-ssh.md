# Generating a new SSH key and adding it to the ssh-agent

[GitHub Documentation](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

## Steps

1. **Create new SSH key using the provided email as a label:**

```sh
ssh-keygen -t ed25519 -C "marcusgeorgievski@outlook.com"
```

2. **Start the ssh-agent in the background:**

```sh
eval "$(ssh-agent -s)"
```

3. **Modify your `~/.ssh/config` file to automatically load keys into the ssh-agent and store passphrases in your keychain:**

- Check to see if your `~/.ssh/config` file exists in the default location:
  ```sh
  open ~/.ssh/config
  ```
- If not, create it:

  ```sh
  touch ~/.ssh/config
  ```

- In the `~/.ssh/config` file, add the following Host block to the top of the file (replace `~/.ssh/id_ed25519` with the path to your private key file):
  ```plaintext
  Host github.com
    AddKeysToAgent yes
    UseKeychain yes
    IdentityFile ~/.ssh/id_ed25519
  ```

4. **Add your SSH private key to the ssh-agent and store your passphrase in the keychain (replace `~/.ssh/id_ed25519` with the path to your private key file):**

```sh
ssh-add --apple-use-keychain ~/.ssh/id_ed25519
```

# Adding a new SSH key to your GitHub account

[GitHub Documentation](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)

## Steps

1. **Copy the contents of the `id_ed25519.pub` file to your clipboard:**

```sh
pbcopy < ~/.ssh/id_ed25519.pub
```

2. **Add the SSH key to your GitHub account:**

- In the upper-right corner of any page on GitHub, click your profile photo, then click **Settings**.
- In the "Access" section of the sidebar, click **SSH and GPG keys**.
- Click **New SSH key** or **Add SSH key**.
- In the "Title" field, add a descriptive label for the new key. For example, if you're using a personal laptop, you might call this key "Personal laptop".
- Select the type of key, either authentication or signing. For more information about commit signing, see [About commit signature verification](https://docs.github.com/en/authentication/managing-commit-signature-verification/about-commit-signature-verification).
- In the "Key" field, paste your public key.
- Click **Add SSH key**.
- If prompted, confirm access to your account on GitHub. For more information, see [Sudo mode](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/sudo-mode).
