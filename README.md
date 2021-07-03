# dotfiles
My dotfiles. n00b alert!

## Install
On new linux machine, run:
```bash
git clone git@github.com:elgrunt0/dotfiles.git

cd ~/dotfiles
chmod +x install.sh
./install.sh
```

## Updating
If any changes are made to anything in `~/dotfiles/` then we need to update github.
Run:
```bash
cd ~/dotfiles
git add bashrc
git commit -m "Added something to bashrc"
git push origin master
```

## Updating existing machine
Say you're on your work machine and you've already installed dotfiles, but you updated `bashrc` at home and pushed to git. To update the work machine, run:
`git pull origin master`

