#!/bin/bash

# enable transparency for hidden dock items
defaults write com.apple.dock showhidden -bool true; killall dock

# enable the expanded save panel
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# save new documents locally, not to iCloud Drive
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# add a message to login screen
sudo defaults write /Library/Preferences/com.apple.loginwindow LoginwindowText "If lost, please contact Alexander Ganahl by phone: 843.970.2539 or by email: alex.ganahl@gmail.com"
# sudo defaults delete /Library/Preferences/com.apple.loginwindow LoginwindowText

# change default location for screenshots
defaults write com.apple.screencapture location ~/Pictures/Screenshots; killall SystemUIServer

# disable writing of .ds_store files on network shares
defaults write com.apple.desktopservices DSDontWriteNetworkStores TRUE
# defaults delete com.apple.desktopservices DSDontWriteNetworkStores

# disable rearranging spaces by last used
defaults write com.apple.dock mru-spaces -bool false

# enable CrashReporter in Notification Center
defaults write com.apple.CrashReporter UseUNC 1

# stop Photos from opening automatically
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true
# defaults -currentHost delete com.apple.ImageCapture disableHotPlug

# select text in a QuickLook preview window
defaults write com.apple.finder QLEnableTextSelection -bool TRUE; killall finder
# defaults delete com.apple.finder QLEnableTextSelection; killall Finder

# plain text as default format for TextEdit
defaults write com.apple.TextEdit RichText -int 0
# defaults delete com.apple.TextEdit RichText

# disable new disk requests for Time Machine
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true
# defaults delete com.apple.TimeMachine DoNotOfferNewDisksForBackup

# enable autohide for the dock
defaults write com.apple.dock autohide -bool true; killall Dock

# enable key repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# set keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 2

# disable smart quotes and dashes
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# tap to click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true

# tap with two fingers to emulate right click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true

# enable three finger tap (look up)
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerTapGesture -int 2

# enable three finger drag
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -bool true

# zoom in or out
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadPinch -bool true

# smart zoom, double-tap with two fingers
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadTwoFingerDoubleTapGesture -bool true

# rotate
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRotate -bool true

# notification Center
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadTwoFingerFromRightEdgeSwipeGesture -int 3

# swipe between pages with two fingers
defaults write NSGlobalDomain AppleEnableSwipeNavigateWithScrolls -bool true
