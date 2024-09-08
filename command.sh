npx create-react-app my_app
cd my_app
gh auth login
gh repo create my_app --public
git remote add origin https://github.com/WilliamsNimi/my_app
git push -u origin master
git checkout -b update_logo
sed -i "" 's|img src={logo}|img src="https://www.propelleraero.com/wp-content/uploads/2021/05/Vector.svg"|g' src/App.js
sed -i "" 's|href="https://reactjs.org"|href="https://www.propelleraero.com/dirtmate/"|g' src/App.
git add .
git commit -m "Logo Changes"
git push -u origin update_logo
gh pr create --base master --head update_logo
git checkout master
gh pr merge
# REPO_URL https://github.com/WilliamsNimi/my_app.git
