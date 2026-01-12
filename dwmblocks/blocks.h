//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static Block blocks[] = {
    /* Icon   Command                         Interval Signal */
    {"",     "free -h | awk '/^Mem/ {print $3\"/\"$2}'", 5, 0},         // Memory
    {"",     "iw dev | awk '/ssid/ {print $2}'", 5, 0}, 		// Wi-Fi
    {"",     "/home/khazar/.local/bin/scripts.sh brightnessstate", 1, 0}, 		// Screen brightness
    {"",     "/home/khazar/.local/bin/scripts.sh volumestate", 1, 10}, 			// Volume
    {"",     "/home/khazar/.local/bin/scripts.sh batterystate", 5, 0},                  // Battery percentage
    {"",     "date '+%Y-%m-%d %H:%M'", 60, 0} // Clock
};
//sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
