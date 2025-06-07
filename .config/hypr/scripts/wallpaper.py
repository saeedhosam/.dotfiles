import os
import random
import subprocess
import time

WALL_DIR = os.path.expanduser("~/wallpapers/content/")

def is_daemon_running():
    return subprocess.run(["pgrep", "swww-daemon"], stdout=subprocess.DEVNULL).returncode == 0

if not is_daemon_running():
    subprocess.Popen(["swww-daemon"])
    time.sleep(1)

while True:
    pics = [f for f in os.listdir(WALL_DIR) if os.path.isfile(os.path.join(WALL_DIR, f))]
    if pics:
        pic = os.path.join(WALL_DIR, random.choice(pics))
        subprocess.run([
            "swww", "img", pic,
            "--transition-type", "fade",
            "--transition-fps", "60",
            "--transition-duration", "5"
        ])
    time.sleep(900)
