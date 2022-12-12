if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/CodeHouse_TG/Lisa-Bot.git /Lisa-Bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Lisa-Bot
fi
cd /Lisa-Bot
pip3 install -U -r requirements.txt
echo "Starting LIsa-Bot...."
python3 bot.py
