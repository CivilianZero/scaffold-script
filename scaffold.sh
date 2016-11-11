dir="$1"
git clone https://github.com/CivilianZero/scaffold.git $dir
cd $dir
echo "Input link to new git repository"
read newgit
git remote set-url origin $newgit
git remote -v
git add .
git commit -m "initial commit"
git push -u origin master
echo "Would you like to run npm install? y/n"
read yn
[ "$yn" == "y" ] && npm i || echo "did not run npm i"
sublime .
