iex (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
Join-Path (Resolve-Path ~).Path "scoop\shims" >> $Env:GITHUB_PATH
scoop bucket add r-bucket https://github.com/cderv/r-bucket.git
scoop install quarto