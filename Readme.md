# VM Setup Using vitico/dotfiles

This guide will help you set up a new VM using the `vitico/dotfiles` repository's one-liner commands. This approach allows you to download and execute the `setup_dotfiles.sh` script directly from GitHub Raw.

## Prerequisites

Before you begin, ensure you have the following prerequisites:

- A VM or machine running a Linux-based operating system.
- `curl` or `wget` installed on your system.
- `git` installed on your system (only if you plan to clone the repository).

## Setup Steps

1. **Clone the Repository (Optional)**

If you want to clone the entire `vitico/dotfiles` repository, use the following command:

```bash
git clone https://github.com/vitico/dotfiles.git ~/.local/dotfiles
```

2. **Download and Execute the Script**

You can use one of the following commands to download and execute the `setup_dotfiles.sh` script directly from GitHub Raw:

Using `curl`:
```bash
curl -fsSL https://raw.githubusercontent.com/vitico/dotfiles/main/setup_dotfiles.sh -o setup_dotfiles.sh && \
chmod +x setup_dotfiles.sh && \
./setup_dotfiles.sh
```

Using `wget`:
```bash
wget https://raw.githubusercontent.com/vitico/dotfiles/main/setup_dotfiles.sh -O setup_dotfiles.sh && \
chmod +x setup_dotfiles.sh && \
./setup_dotfiles.sh
```

These commands will download the script, make it executable, and then execute it.
