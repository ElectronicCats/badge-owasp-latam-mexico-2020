# OWASP Riviera Maya
### (Capture The Flag)

**Instalación en ESP32.**
**Linux**
./esptool.py -b 115200 --port /dev/ttyUSB0 --chip esp32 
   --before default_reset
   --after hard_reset  write_Flash --flash_freq 80m 0x000000 ./badge_v1.1.bin

**Windows**
./esptool.py -b 115200 --port COM3 --chip esp32 
   --before default_reset
   --after hard_reset write_flash --flash_freq 80m 0x000000 ./badge_v1.1.bin
