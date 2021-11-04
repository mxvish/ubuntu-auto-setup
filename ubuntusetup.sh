#choose Eng & location=NY
#mv /media/pioneer/UNTITLED/* ./
#sudo sh ubuntusetup.sh

#apt-fast-----------------------------
sudo add-apt-repository -y ppa:apt-fast/stable
sudo apt-get -y install apt-fast
sudo apt-fast -y update
sudo apt-fast -y upgrade

#remove-----------------------------
sudo apt -y remove firefox
sudo apt -y remove nano
sudo apt -y remove ed 
sudo apt -y remove gedit
sudo apt -y remove seahorse
sudo apt -y remove gnome-logs

#install-----------------------------
sudo apt-fast -y install default-jdk 
sudo snap install zoom-client
sudo snap install discord

sudo apt-fast -y install apt-transport-https curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt-fast -y update
sudo apt-fast -y install brave-browser

#sudo apt-fast -y install nodejs
sudo dpkg -i first/slack-desktop-4.17.0-amd64.deb
#sudo sh first/VMware-Player-*.bundle
sudo apt-fast -y install chrome-gnome-shell
sudo apt-fast -y install ibus-mozc
sudo snap install onlyoffice-desktopeditors
sudo apt-fast -y install mpg321
sudo apt-fast -y install imagemagick
sudo apt-fast -y install r-base
sudo apt-fast -y install ./first/rstudio*.deb
sudo apt-fast -y install thunderbird

#edit & mv files-----------------------------
mv bashrc .bashrc
source ~/.bashrc
sudo apt-fast -y install emacs-nox
mv emacs .emacs
mv user-dirs.dirs .config/
mv Desktop .Desktop
mv Downloads .Downloads
mv Public .Public
rm -r Templates Documents Music Pictures Videos
mkdir downloads
sudo mv main.conf /etc/bluetooth

#configure system settings-----------------------------
gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false
gsettings set org.gnome.desktop.notifications show-banners false
gsettings set org.gnome.desktop.notifications show-in-lock-screen false
xrandr --output HDMI-1 --left-of eDP-1 
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('ibus', 'mozc-jp')]"
timedatectl set-timezone Asia/Tokyo
gsettings set org.gnome.shell favorite-apps []

#configure system settings from tweaks-----------------------------
gsettings set org.gnome.desktop.background picture-options scaled
gsettings set org.gnome.desktop.interface text-scaling-factor 1.2
gsettings set org.gnome.desktop.interface gtk-key-theme 'Emacs'
setxkbmap -option "ctrl:nocaps"

sudo apt -y autoremove
sudo apt -y autoclean
reboot
"""
settings
	keyboard shortcuts
		web browser
		settings
		hide all normal windows
		close window
		save a screenshot to kenter =shift ctrl 3

emacs
	M-x package install company auto-highlight-symbol

brave-browser
	bravepasswd from onedrive
  	remove all history & autofill form data on exit
	Don't allow sites to send notifications
	sync everything
	appearance
		dark
		hide brave rewards button
	enable
		https://extensions.gnome.org/extension/1131/
		https://extensions.gnome.org/extension/1471/
	new tab page -> new tabs page shows blank page

desk changer
	profiles -> location URI
		remove item /usr/share/*
		add folder ./pictures/wallpaper
	daemon 30 min interval

thunderbird
	univ mail settings
					incoming				outcoming
		protocol	IMAP					SMTP
		server		outlook.office365.com	smtp.office365.com
		port 		993						587
		ssl			SSL/TLS	`				STARTTLS

	theme
		Tools > add-ons
		install "dark reader"

	gmail
		File > New > Existing Mail Account
		enter account info
		protocol=IMAP
	
	appearance
		show nothing in inbox
		apply columns to folders and children in all accounts
	
	edit > preferences > general
		uncheck thunderbird start page

printer
	Ctrl+P on brave browser
	Destination=see more
	Manage > Add > network printer > find network printer
	choose epson > forward > apply

	#print system dialog (> page setup > paper > paper size >) print	

univ wifi eduroam
	authentication PEAP
	No CA certificate is required
	静大ID@shizuoka.ac.jp
	静大ID password

slack
	preferences
		themes -> dark
		advanced -> uncheck Leave app running ~

discord

zoom
	settings
		video
			turn off~
		audio
			automatically~
			mute~
"""
