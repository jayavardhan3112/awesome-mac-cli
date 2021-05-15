tell application "iTerm2"
  tell current window
    create tab with default profile
      tell current session
        write text "cd anuvadak-api-server/ && go run main.go"
      end tell
  end tell
  tell current window
    create tab with default profile
      tell current session
        write text "cd anuvadak-broker-service/ && yarn start"
      end tell
  end tell
  tell current window
    create tab with default profile
      tell current session
        write text "cd dashboard/ && yarn start"
      end tell
  end tell
  tell current window
    create tab with default profile
      tell current session
        write text "cd scrapyd-spider && source venv/bin/activate && scrapyd"
      end tell
  end tell
  tell current window
    create tab with default profile
      tell current session
        write text "cd scrapyd-spider && source venv/bin/activate && echo '3112' | sudo -S hostname localhost && python web_crawler/web_crawler/main.py"
      end tell
  end tell
  tell current window
    create tab with default profile
      tell current session
        write text "redis-server"
      end tell
  end tell
end tell

