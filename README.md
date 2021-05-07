# HerokuDriveRclone
Access Your Google Drive Folder using Rclone, Heroku and Google Service Account (SA)

# Credits 
  - <a href="https://github.com/developeranaz">developeranaz</a>
  - <a href="https://rclone.org">Rclone</a>
  - <a href="https://heroku.com">Heroku</a>
  - <a href="https://google.com">Google</a>
  
# Requirements
  - An Google Service Account with Google Drive API activated. Go <a href="https://github.com/xyou365/AutoRclone#step-2-generate-service-accounts-what-is-service-account-how-to-use-service-account-in-rclone">here</a> for reference.
  - Make sure to include your SA address to your drive folder/Team Drive directly or via Google Groups
  - Common sense
  - Heroku account
  
# Steps
  - Pull or download this repo and push to your private repo. (So you won't expose your SA)
  - Copy SA .json content to <a href="acc.json">acc.json</a> file, and visit URL below.
  - Then go to https://heroku.com/deploy?template=https://github.com/'yourusername'>/'yourprivatereponame'
  - Heroku can detect your private repo if you have active login on the same browser.
  - Insert your app name, server location and Google Drive folder/Team Drive ID, make sure your .json have access to your folder/Team Drive.
  - Wait for build and done.

# Tip(s)
  - Keep your free heroku account live with <a href="https://cron-job.org">Cron-Job</a>
