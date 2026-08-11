# omarchy-quattro-light-theme

![Preview](assets/preview.png)

A light Omarchy theme built from the colours of two Audi quattro race cars:
a cool grey background taken from the body panels, anthracite as foreground,
and Audi Sport red as the single saturated accent. Every other hue is
desaturated so the red stays the leading colour.

The dark counterpart is
[omarchy-quattro-theme](https://github.com/AlexZeitler/omarchy-quattro-theme).

## Installation

```bash
omarchy theme install https://github.com/AlexZeitler/omarchy-quattro-light-theme
```

## Palette

| Role       | Colour    | Source in the photographs |
|------------|-----------|---------------------------|
| Background | `#E9ECEC` | body panels in the light  |
| Foreground | `#1E1F24` | anthracite of the livery  |
| Accent     | `#C81017` | Audi Sport red            |
| Red        | `#9E1B1F` | livery in shadow          |
| Green      | `#2F6248` | pines along the hillside  |
| Yellow     | `#7A5F14` | door graphics             |
| Cyan       | `#3F6E7A` | glass and chrome          |
| Grey       | `#6E6F74` | asphalt                   |

The Audi Sport red is not an approximation. Measured on the rear panel of the
Sport quattro, the paint reads `#CB0214`.

## VS Code

The repository ships a VS Code colour theme under `vscode-extension/`.
Installing the Omarchy theme installs and selects it automatically. To install
it on its own:

```bash
code --install-extension alexanderzeitler.quattro-light-theme
```

## GTK

Omarchy copies `gtk.css` into `~/.config/omarchy/current/theme` but never
deploys it. GTK reads `~/.config/gtk-3.0/gtk.css` and
`~/.config/gtk-4.0/gtk.css` and nothing else, so out of the box the GTK
colours never reach Nautilus or the GTK file dialogs.

The repository ships a hook that closes the gap. Link it once:

```bash
mkdir -p ~/.config/omarchy/hooks/theme-set.d
ln -s ~/.config/omarchy/themes/quattro-light/hooks/gtk \
  ~/.config/omarchy/hooks/theme-set.d/gtk
```

From then on every theme switch writes the GTK colours of whichever theme you
picked, not just this one. The hook only touches the section between its own
markers, so anything you wrote into those files yourself survives. Switching
to a theme without a `gtk.css` removes the section again.

To undo it, remove the symlink and run `hooks/gtk --remove` once.

## Wallpapers

Click a thumbnail to open the wallpaper in full resolution.

### Audi 90 quattro IMSA GTO

[![Audi 90 quattro IMSA GTO](assets/audi-90-imsa-gto-thumb.jpg)](backgrounds/audi%2090%20quattro%20imsa%20gto.jpg)

### Audi Sport quattro

[![Audi Sport quattro](assets/audi-sport-quattro-thumb.jpg)](backgrounds/audi%20sport%20quattro.png)

## License

MIT
