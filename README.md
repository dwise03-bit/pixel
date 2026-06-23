# pixel

Modular Fedora bootstrap for the Pixel Slate. Run `bootstrap.sh` on a fresh install to provision the full environment.

## Usage

```bash
git clone https://github.com/dwise03-bit/pixel.git
cd pixel
bash bootstrap.sh
```

## Modules

| Module | What it does |
|--------|-------------|
| `01-system.sh` | dnf upgrade + core CLI tools (git, curl, wget, vim, nvim, tmux, htop, btop, fastfetch, eza, bat, ripgrep, fd-find, fzf, gh) |
| `02-display.sh` | Dark mode, fractional scaling, disable animations |
| `03-power.sh` | power-profiles-daemon, balanced profile |
| `04-terminal.sh` | zsh + oh-my-zsh + plugins (autosuggestions, syntax-highlighting) + aliases + atuin |
| `05-devtools.sh` | Node, npm, PM2, Python, build tools |
| `06-docker.sh` | Docker + docker-compose-plugin, add user to docker group |
| `07-claude.sh` | Claude Code (`@anthropic-ai/claude-code`) |
| `08-gnome.sh` | Dark mode, touchpad tap-to-click, clock, keyboard shortcuts, GNOME tweaks |
| `09-pixel-slate.sh` | HiDPI scaling, power timeouts, fwupd firmware updates |
| `10-maintenance.sh` | dnf-automatic (auto security updates), fstrim, firewalld |
| `11-ssh.sh` | Generate SSH key, add VPS to known_hosts, print instructions |
| `12-projects.sh` | Clone wise-defense-saas, dropshipping-factory, claude-config into ~/projects/ |

## After bootstrap

1. Run `ssh-copy-id ubuntu@51.81.80.252` to authorize VPS access
2. Run `gh auth login` to authenticate GitHub CLI
3. Copy `~/.claude/` config from `claude-config` repo or restore from backup
4. Reboot
