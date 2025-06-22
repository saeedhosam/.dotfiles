pragma Singleton
import Quickshell.Io
import Quickshell
import QtQuick

Singleton {
    id: root

    property color background
    property color error
    property color error_container
    property color inverse_on_surface
    property color inverse_primary
    property color inverse_surface
    property color on_background
    property color on_error
    property color on_error_container
    property color on_primary
    property color on_primary_container
    property color on_primary_fixed
    property color on_primary_fixed_variant
    property color on_secondary
    property color on_secondary_container
    property color on_secondary_fixed
    property color on_secondary_fixed_variant
    property color on_surface
    property color on_surface_variant
    property color on_tertiary
    property color on_tertiary_container
    property color on_tertiary_fixed
    property color on_tertiary_fixed_variant
    property color outline
    property color outline_variant
    property color primary
    property color primary_container
    property color primary_fixed
    property color primary_fixed_dim
    property color scrim
    property color secondary
    property color secondary_container
    property color secondary_fixed
    property color secondary_fixed_dim
    property color shadow
    property color surface
    property color surface_bright
    property color surface_container
    property color surface_container_high
    property color surface_container_highest
    property color surface_container_low
    property color surface_container_lowest
    property color surface_dim
    property color surface_tint
    property color surface_variant
    property color tertiary
    property color tertiary_container
    property color tertiary_fixed
    property color tertiary_fixed_dim

    Process {
        id: initScheme
        command: ['sh', '-c', "cat ~/.dotfiles/.config/quickshell/scripts/colors.json"]
        stdout: SplitParser {
            splitMarker: ""
            onRead: data => {
                root.background = JSON.parse(data).background;
                root.error = JSON.parse(data).error;
                root.error_container = JSON.parse(data).error_container;
                root.inverse_on_surface = JSON.parse(data).inverse_on_surface;
                root.inverse_primary = JSON.parse(data).inverse_primary;
                root.inverse_surface = JSON.parse(data).inverse_surface;
                root.on_background = JSON.parse(data).on_background;
                root.on_error = JSON.parse(data).on_error;
                root.on_error_container = JSON.parse(data).on_error_container;
                root.on_primary = JSON.parse(data).on_primary;
                root.on_primary_container = JSON.parse(data).on_primary_container;
                root.on_primary_fixed = JSON.parse(data).on_primary_fixed;
                root.on_primary_fixed_variant = JSON.parse(data).on_primary_fixed_variant;
                root.on_secondary = JSON.parse(data).on_secondary;
                root.on_secondary_container = JSON.parse(data).on_secondary_container;
                root.on_secondary_fixed = JSON.parse(data).on_secondary_fixed;
                root.on_secondary_fixed_variant = JSON.parse(data).on_secondary_fixed_variant;
                root.on_surface = JSON.parse(data).on_surface;
                root.on_surface_variant = JSON.parse(data).on_surface_variant;
                root.on_tertiary = JSON.parse(data).on_tertiary;
                root.on_tertiary_container = JSON.parse(data).on_tertiary_container;
                root.on_tertiary_fixed = JSON.parse(data).on_tertiary_fixed;
                root.on_tertiary_fixed_variant = JSON.parse(data).on_tertiary_fixed_variant;
                root.outline = JSON.parse(data).outline;
                root.outline_variant = JSON.parse(data).outline_variant;
                root.primary = JSON.parse(data).primary;
                root.primary_container = JSON.parse(data).primary_container;
                root.primary_fixed = JSON.parse(data).primary_fixed;
                root.primary_fixed_dim = JSON.parse(data).primary_fixed_dim;
                root.scrim = JSON.parse(data).scrim;
                root.secondary = JSON.parse(data).secondary;
                root.secondary_container = JSON.parse(data).secondary_container;
                root.secondary_fixed = JSON.parse(data).secondary_fixed;
                root.secondary_fixed_dim = JSON.parse(data).secondary_fixed_dim;
                root.shadow = JSON.parse(data).shadow;
                root.surface = JSON.parse(data).surface;
                root.surface_bright = JSON.parse(data).surface_bright;
                root.surface_container = JSON.parse(data).surface_container;
                root.surface_container_high = JSON.parse(data).surface_container_high;
                root.surface_container_highest = JSON.parse(data).surface_container_highest;
                root.surface_container_low = JSON.parse(data).surface_container_low;
                root.surface_container_lowest = JSON.parse(data).surface_container_lowest;
                root.surface_dim = JSON.parse(data).surface_dim;
                root.surface_tint = JSON.parse(data).surface_tint;
                root.surface_variant = JSON.parse(data).surface_variant;
                root.tertiary = JSON.parse(data).tertiary;
                root.tertiary_container = JSON.parse(data).tertiary_container;
                root.tertiary_fixed = JSON.parse(data).tertiary_fixed;
                root.tertiary_fixed_dim = JSON.parse(data).tertiary_fixed_dim;
            }
        }
    }

    Process {
        id: setScheme
        command: ['sh', '-c', "matugen image $(swww query | grep -oP '(?<=image: ).*') -c ~/.config/matugen/quickshell-config.toml && cat ~/.dotfiles/.config/quickshell/scripts/colors.json"]
        stdout: SplitParser {
            splitMarker: ""
            onRead: data => {
                root.background = JSON.parse(data).background;
                root.error = JSON.parse(data).error;
                root.error_container = JSON.parse(data).error_container;
                root.inverse_on_surface = JSON.parse(data).inverse_on_surface;
                root.inverse_primary = JSON.parse(data).inverse_primary;
                root.inverse_surface = JSON.parse(data).inverse_surface;
                root.on_background = JSON.parse(data).on_background;
                root.on_error = JSON.parse(data).on_error;
                root.on_error_container = JSON.parse(data).on_error_container;
                root.on_primary = JSON.parse(data).on_primary;
                root.on_primary_container = JSON.parse(data).on_primary_container;
                root.on_primary_fixed = JSON.parse(data).on_primary_fixed;
                root.on_primary_fixed_variant = JSON.parse(data).on_primary_fixed_variant;
                root.on_secondary = JSON.parse(data).on_secondary;
                root.on_secondary_container = JSON.parse(data).on_secondary_container;
                root.on_secondary_fixed = JSON.parse(data).on_secondary_fixed;
                root.on_secondary_fixed_variant = JSON.parse(data).on_secondary_fixed_variant;
                root.on_surface = JSON.parse(data).on_surface;
                root.on_surface_variant = JSON.parse(data).on_surface_variant;
                root.on_tertiary = JSON.parse(data).on_tertiary;
                root.on_tertiary_container = JSON.parse(data).on_tertiary_container;
                root.on_tertiary_fixed = JSON.parse(data).on_tertiary_fixed;
                root.on_tertiary_fixed_variant = JSON.parse(data).on_tertiary_fixed_variant;
                root.outline = JSON.parse(data).outline;
                root.outline_variant = JSON.parse(data).outline_variant;
                root.primary = JSON.parse(data).primary;
                root.primary_container = JSON.parse(data).primary_container;
                root.primary_fixed = JSON.parse(data).primary_fixed;
                root.primary_fixed_dim = JSON.parse(data).primary_fixed_dim;
                root.scrim = JSON.parse(data).scrim;
                root.secondary = JSON.parse(data).secondary;
                root.secondary_container = JSON.parse(data).secondary_container;
                root.secondary_fixed = JSON.parse(data).secondary_fixed;
                root.secondary_fixed_dim = JSON.parse(data).secondary_fixed_dim;
                root.shadow = JSON.parse(data).shadow;
                root.surface = JSON.parse(data).surface;
                root.surface_bright = JSON.parse(data).surface_bright;
                root.surface_container = JSON.parse(data).surface_container;
                root.surface_container_high = JSON.parse(data).surface_container_high;
                root.surface_container_highest = JSON.parse(data).surface_container_highest;
                root.surface_container_low = JSON.parse(data).surface_container_low;
                root.surface_container_lowest = JSON.parse(data).surface_container_lowest;
                root.surface_dim = JSON.parse(data).surface_dim;
                root.surface_tint = JSON.parse(data).surface_tint;
                root.surface_variant = JSON.parse(data).surface_variant;
                root.tertiary = JSON.parse(data).tertiary;
                root.tertiary_container = JSON.parse(data).tertiary_container;
                root.tertiary_fixed = JSON.parse(data).tertiary_fixed;
                root.tertiary_fixed_dim = JSON.parse(data).tertiary_fixed_dim;
            }
        }
    }

    Process {
        id: walChange
        command: ["sh", "-c", 'swww img "$(find /home/saeed/wallpapers/content -type f | shuf -n 1)" --transition-type fade --transition-fps 60 --transition-duration 1']
    }

    Process {
        id: walDelete
        command: ['sh', '-c', `if rm "$(swww query | grep -oP '(?<=image: ).*')"; then   notify-send "Wallpaper deleted."; else   notify-send "Failed to delete wallpaper: $(swww query | grep -oP '(?<=image: ).*')"; fi`]
    }

    function withAlpha(color: color, alpha: real): color {
        return Qt.rgba(color.r, color.g, color.b, alpha);
    }

    function generateScheme() {
        setScheme.running = true;
    }

    function delWallpaper() {
        walDelete.running = true;
    }

    function changeWal() {
        walChange.running = true;
    }

    Component.onCompleted: {
        initScheme.running = true;
    }
}
