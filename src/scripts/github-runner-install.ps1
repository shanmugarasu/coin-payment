mkdir actions-runner; cd actions-runner
Invoke-WebRequest -Uri https://github.com/actions/runner/releases/download/v2.297.0/actions-runner-win-x64-2.297.0.zip -OutFile actions-runner-win-x64-2.297.0.zip
Add-Type -AssemblyName System.IO.Compression.FileSystem ; [System.IO.Compression.ZipFile]::ExtractToDirectory("$PWD/actions-runner-win-x64-2.297.0.zip", "$PWD")
./config.cmd --url https://github.com/shanmugarasu/coin-payment --token senstive_token_value_here
./run.cmd