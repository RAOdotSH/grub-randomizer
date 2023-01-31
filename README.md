# Grub Randomizer
A shell script to randomzie boot menu theme(s).

## Usage
### Make the script executable
```bash
sudo chmod +x /usr/local/bin/grubRandomizer.sh
```

### Add the script to the crontab
```bash
sudo crontab -e
```

### Add the following line to the crontab
```bash
@reboot /usr/local/bin/grubRandomizer.sh
```

### Save and exit the crontab

### Reboot the system
```bash
sudo reboot
```

### End of script
