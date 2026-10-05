Clear-Host
Echo "Keeping system active... Press 'Ctrl + C' in this window to stop."

# Create the shell object to simulate keystrokes
$wscript = New-Object -ComObject Wscript.Shell;

# Loop indefinitely
while ($true) {
    # Send the F15 keypress
    $wscript.sendkeys("{F15}")
    
    # Wait for 60 seconds before doing it again
    Start-Sleep -Seconds 60
}
