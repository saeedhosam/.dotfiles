pragma Singleton

import Quickshell
import Quickshell.Io
import QtQuick

Singleton {
    id: root
    property string background
    property string foreground
    property string cursor
    property string color1
    property string color2
    property string color3
    property string color4
    property string color5
    property string color6
    property string color7
    property string color8
    property string color9
    property string color10
    property string color11
    property string color12
    property string color13
    property string color14
    property string color15

    Process {
        command: ["sh", "-c", "source ~/.cache/wal/colors.sh && echo $background"]
        running: true

        stdout: StdioCollector {
            onStreamFinished: root.background = this.text.trim()
        }
    }
    Process {
        command: ["sh", "-c", "source ~/.cache/wal/colors.sh && echo $foreground"]
        running: true

        stdout: StdioCollector {
            onStreamFinished: root.foreground = this.text.trim()
        }
    }
    Process {
        command: ["sh", "-c", "source ~/.cache/wal/colors.sh && echo $cursor"]
        running: true

        stdout: StdioCollector {
            onStreamFinished: root.cursor = this.text.trim()
        }
    }
    Process {
        command: ["sh", "-c", "source ~/.cache/wal/colors.sh && echo $color1"]
        running: true

        stdout: StdioCollector {
            onStreamFinished: root.color1 = this.text.trim()
        }
    }
    Process {
        command: ["sh", "-c", "source ~/.cache/wal/colors.sh && echo $color2"]
        running: true

        stdout: StdioCollector {
          onStreamFinished: root.color2 = this.text.trim()
        }
    }
    Process {
        command: ["sh", "-c", "source ~/.cache/wal/colors.sh && echo $color3"]
        running: true

        stdout: StdioCollector {
            onStreamFinished: root.color3 = this.text.trim()
        }
    }
    Process {
        command: ["sh", "-c", "source ~/.cache/wal/colors.sh && echo $color4"]
        running: true

        stdout: StdioCollector {
            onStreamFinished: root.color4 = this.text.trim()
        }
    }
    Process {
        command: ["sh", "-c", "source ~/.cache/wal/colors.sh && echo $color5"]
        running: true

        stdout: StdioCollector {
            onStreamFinished: root.color5 = this.text.trim()
        }
    }
    Process {
        command: ["sh", "-c", "source ~/.cache/wal/colors.sh && echo $color6"]
        running: true

        stdout: StdioCollector {
            onStreamFinished: root.color6 = this.text.trim()
        }
    }
    Process {
        command: ["sh", "-c", "source ~/.cache/wal/colors.sh && echo $color7"]
        running: true

        stdout: StdioCollector {
            onStreamFinished: root.color7 = this.text.trim()
        }
    }
    Process {
        command: ["sh", "-c", "source ~/.cache/wal/colors.sh && echo $color8"]
        running: true

        stdout: StdioCollector {
            onStreamFinished: root.color8 = this.text.trim()
        }
    }
    Process {
        command: ["sh", "-c", "source ~/.cache/wal/colors.sh && echo $color9"]
        running: true

        stdout: StdioCollector {
            onStreamFinished: root.color9 = this.text.trim()
        }
    }
    Process {
        command: ["sh", "-c", "source ~/.cache/wal/colors.sh && echo $color10"]
        running: true

        stdout: StdioCollector {
            onStreamFinished: root.color10 = this.text.trim()
        }
    }
    Process {
        command: ["sh", "-c", "source ~/.cache/wal/colors.sh && echo $color11"]
        running: true

        stdout: StdioCollector {
            onStreamFinished: root.color11 = this.text.trim()
        }
    }
    Process {
        command: ["sh", "-c", "source ~/.cache/wal/colors.sh && echo $color12"]
        running: true

        stdout: StdioCollector {
            onStreamFinished: root.color12 = this.text.trim()
        }
    }
    Process {
        command: ["sh", "-c", "source ~/.cache/wal/colors.sh && echo $color13"]
        running: true

        stdout: StdioCollector {
            onStreamFinished: root.color13 = this.text.trim()
        }
    }
    Process {
        command: ["sh", "-c", "source ~/.cache/wal/colors.sh && echo $color14"]
        running: true

        stdout: StdioCollector {
            onStreamFinished: root.color14 = this.text.trim()
        }
    }
    Process {
        command: ["sh", "-c", "source ~/.cache/wal/colors.sh && echo $color15"]
        running: true

        stdout: StdioCollector {
            onStreamFinished: root.color15 = this.text.trim()
        }
    }
}
