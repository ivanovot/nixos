# NixOS Configuration

Персональная конфигурация [Nixos](https://nixos.org/download/)


## Установка
### Клонирование
```bash
git clone git@git.domow.su:timo/nixos.git
```
или
```bash
git clone git@github.com:ivanovot/nixos.git
```
### Сборка
```bash
./nixos/src/rebuild.sh
```

## Установка конфигов
```bash
./nixos/src/congig.sh
```
## Файлы
```
├── config
├── configuration.nix
├── flake.lock
├── flake.nix
├── modules
│   ├── modules.nix
│   ├── packages
│   │   ├── cli.nix
│   │   ├── desktop.nix
│   │   ├── flatpak.nix
│   │   ├── gui.nix
│   │   ├── overlay.nix
│   │   ├── system-utils.nix
│   │   ├── thems.nix
│   │   ├── toys.nix
│   │   └── tui.nix
│   └── system
│       ├── bluetooth.nix
│       ├── boot.nix
│       ├── clean.nix
│       ├── datetime.nix
│       ├── env_variables.nix
│       ├── network.nix
│       ├── nix.nix
│       ├── nvidia.nix
│       ├── sound.nix
│       └── users.nix
├── README.md
└── sripts
    ├── config.sh
    ├── louncher.sh
    └── rebuild.sh
```