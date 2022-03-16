echo "SSH tunnel to git generator"
echo "Enter your github email address "
read emailaddress
echo " press enter a bunch of times "
ssh-keygen -t ed25519 -C $emailaddress

echo "ok no more button mashing, starting the agent"

eval `ssh-agent -s`


echo "adding the key to the agent"
ssh-add ~/.ssh/id_ed25519

echo "go to github to your account->Settings->SSH key and paste this in"

cat ~/.ssh/id_ed25519.pub
