import json
import sqlite3

# Load JSON file
with open("prayer.json") as f:
    raw = json.load(f)

# Open SQLite DB
conn = sqlite3.connect("prayers.db")
cursor = conn.cursor()

# Create table
cursor.execute("""
    CREATE TABLE IF NOT EXISTS prayers (
        date TEXT,
        prayer_name TEXT,
        time TEXT
    )
""")

# Loop through each month key ("1", "2", ..., "12")
for month_key in raw["data"]:
    for day in raw["data"][month_key]:
        date = day["date"]["readable"]
        for prayer_name, time in day["timings"].items():
            cursor.execute(
                "INSERT INTO prayers VALUES (?, ?, ?)", (date, prayer_name, time)
            )

conn.commit()
conn.close()
