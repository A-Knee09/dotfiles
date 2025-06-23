# A Knee's Dotfiles

Minimal and clean Arch Linux rice using Hyprland script from [Jakoolit](https://github.com/JaKooLit/Arch-Hyprland)

Featuring Hyprland + Waybar + Rofi + Kitty + Hyprlock + Swappy  
Powered by Catppuccin Macchiato and JetBrains Mono

# Usage

```bash
git clone https://github.com/A-Knee09/dotfiles.git ~/dotfiles
cd ~/dotfiles
```
>[!IMPORTANT]
> - Make sure you create a backup of your existing configs first before replacing them
> - If you are using [Jakoolit Hyprland script](https://github.com/JaKooLit/Arch-Hyprland) already you can copy paste these files, however backup is still recommended.
> - If you have your own independent rice, you'll need to tweak some configs. For example the rofi and waybar ones use wallust for color sync with wallpaper, whereas some configs like kitty can be directly pasted.

# Screenshots

## 1.Desktop with Image
![swappy-20250622-062435](https://github.com/user-attachments/assets/4b37d7a4-831f-4d39-8d1a-d48bbd64d710)

## 1.Desktop with live wallpaper
https://github.com/user-attachments/assets/f231f241-5a74-4992-9f8c-c749aa072875
>[!NOTE]
>You'll need mpvpaper for enabling live wallpapers. However when using live wallpapers, for obvious reason waybar and rofi colors won't be synced to your live wallpaper.

## 2.Terminal 
![swappy-20250619-083134](https://github.com/user-attachments/assets/434e0513-a13d-456f-ad6f-9c380ecacc76)
> [!NOTE]
> The fastfetch config has a profiles directory which consists of image assets used for zsh terminal and fastfetch, feel free to replace them in `config.jsonc` for fastfetch and `config-compat.jsonc` for zsh terminal

## 3.Rofi
![swappy-20250622-064318](https://github.com/user-attachments/assets/40951490-ff0a-426f-bb79-076abbe79381)
![swappy-20250622-055522](https://github.com/user-attachments/assets/7800f89a-bf1a-418b-953a-148b50402ece)

## 4.Ranger
![swappy-20250610-210749](https://github.com/user-attachments/assets/035f6967-67da-41b4-983c-4fdf5c2fe66b)

## Neovide/Neovim

>[!NOTE]
> I'm using astronvim for my neovim, the greeting Dashboard should be in user.lua , rest of the plugins are installed in default manner

![swappy-20250622-055446](https://github.com/user-attachments/assets/eef420fb-a76d-4eb5-b174-6415d4a35263)
![swappy-20250622-055431](https://github.com/user-attachments/assets/37019dc4-ead5-4e0a-94af-dac44b2daccb)
![swappy-20250622-064045](https://github.com/user-attachments/assets/51a9c907-3592-472c-8221-115824dab771)

## 5.Nemo (File Manager)

![swappy-20250622-073724](https://github.com/user-attachments/assets/182a095d-53b3-42e8-bd46-368cd57c9ab5)


## 6.Hyprlock and Power Screen
![swappy-20250622-062232](https://github.com/user-attachments/assets/b7a6ed94-f58f-4315-b279-8d2d25b2a660)
![swappy-20250622-062751](https://github.com/user-attachments/assets/df608400-6429-4d3e-a04e-9cbc965139b3)


# Included Configs

All configs live under `.config/` and are modular:

- **Hyprland** – window manager
- **Waybar** – status bar
- **Rofi** – launcher
- **Kitty** – terminal emulator
- **Neovim** – code editor setup
- **Swaync** – notifications
- **Wallust** – wallpaper & theme sync
- **Cava**, **Fastfetch**, **Ranger**, **Lazygit**, **Swappy**


## System Info

| Component  | Value                |
|------------|----------------------|
| OS         | Arch Linux           |
| WM         | Hyprland             |
| Terminal   | Kitty                |
| Shell      | Zsh with Oh-my-zsh   |
| Font       | JetBrains Mono NF    |
| Theme      | Catppuccin Macchiato |
| Screenshot | Swappy / OBS         |

---

