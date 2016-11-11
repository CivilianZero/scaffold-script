dir="$1"
git clone https://github.com/CivilianZero/scaffold.git $dir
cd $dir
echo "Input new git directory"
read newgit
git remote set-url origin $newgit
git remote -v
echo "Would you like to run npm install? y/n"
read yn
[ "$yn" == "y" ] && npm i || echo "did not run npm i"
sublime .
