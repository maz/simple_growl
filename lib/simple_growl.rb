# encoding: UTF-8
require "simple_growl/version"
require 'open3'

module SimpleGrowl
  def notify(title, message)
    #the following applescript code is taken from the sample on the growl website: http://growl.info/downloads
    Open3.popen2("/usr/bin/env osascript") do |stdin, stdout, wait_thr|
      stdin<<"tell application \"System Events\"
        set isRunning to (count of (every process whose bundle identifier is \"com.Growl.GrowlHelperApp\")) > 0
    end tell

    if isRunning then
        tell application id \"com.Growl.GrowlHelperApp\"
            -- Make a list of all the notification types 
            -- that this script will ever send:
            set the allNotificationsList to ¬
                {\"simple-growl notification\"}
        
            -- Make a list of the notifications 
            -- that will be enabled by default.      
            -- Those not enabled by default can be enabled later 
            -- in the 'Applications' tab of the growl prefpane.
            set the enabledNotificationsList to ¬
                {\"simple-growl notification\"}
        
            -- Register our script with growl.
            -- You can optionally (as here) set a default icon 
            -- for this script's notifications.
            register as application ¬
                \"simple-growl\" all notifications allNotificationsList ¬
                default notifications enabledNotificationsList ¬
                icon of application \"Terminal\"
        
            --       Send a Notification...
            notify with name ¬
                \"simple-growl notification\" title ¬
                #{title.to_s.inspect} description ¬
                #{message.to_s.inspect} application name \"simple-growl\"
        
        end tell
    end if"
      stdin.flush
    end
  end
  
  module_function :notify
end
