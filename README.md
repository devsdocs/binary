# HerokuDriveRclone
Access Your Google Drive Folder via Heroku using Rclone and Google Service Account (SA)

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
  - Pull or download this repo and push or upload to your private repo. (So you won't expose your SA)
  - Copy SA .json content to <a href="acc.json">acc.json</a> file, and visit URL below.
  - Then go to https://heroku.com/deploy?template=https://github.com/yourusername/yourprivatereponame
  - Notice the `yourusername` and `yourprivatereponame` on url above, use your own.
  - Heroku can detect your private repo if you have active login on the same browser.
  - Insert your app name, server location and Google Drive folder/Team Drive ID, make sure your .json have access to your folder/Team Drive.
  - Wait for build and done.

# Extra(s)
  - Setup a basic http atuh for single user with adding `--user` and `--pass` flags to <a href="entrypoint.sh#5">this line</a>
  - Example: `--user devsdocs_u --pass devsdocs_p`
  - Go <a href="https://rclone.org/commands/rclone_serve_http/#authentication">here</a> if you want to setup multiple user for your app.

# Tip(s)
  - To change folder, just replace your folder ID in your Heroku App Config Vars and restart your dyno(s)
  - Keep your free heroku account live with <a href="https://cron-job.org">Cron-Job</a>
