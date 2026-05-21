# rm
Override `rm` command in order to avoid accidentally deleting important files. It moves the specified file or directory to the macOS `.Trash` directory instead of deleting it permanently.

If you explicitly use the `-rf` flag (e.g., `rm -rf <directory>`), it will fall back to the original macOS `rm` tool and permanently delete the target.

## Install command globally

From the project root, run:

```bash
chmod +x install.sh
./install.sh
```

After installation, the command is available as:

```bash
rm <file-or-directory-to-delete>
```

To permanently delete a directory using the system `rm`:

```bash
rm -rf <directory-to-delete>
```
