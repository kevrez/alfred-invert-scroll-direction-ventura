# This should work with Ventura 13.1 (2022-12-19)

tell application "System Settings"
    activate
end tell
delay 0.5

tell application "System Events"
    tell process "System Settings"
        click menu item "Trackpad" of menu "View" of menu bar 1
        -- set current pane to pane id "com.apple.preference.keyboard"
        delay 0.5
        click radio button 2 of tab group 1 of group 1 of group 2 of splitter group 1 of group 1 of window 1
        click checkbox "Natural scrolling" of group 1 of scroll area 1 of group 1 of group 2 of splitter group 1 of group 1 of window 1
        tell application "System Settings" to quit
    end tell
end tell

end
