# rm
Override rm command in order to avoid deleting important files. It only delete one file and It is moved to .Trash directory.

## Dependency (macOS)

```bash
brew install trash
```

## Install command globally

From the project root, run:

```bash
chmod +x install.sh
./install.sh
```

After installation, the command is available as:

```bash
rm <file-to-delete>
```
