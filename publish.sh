bundle exec jekyll build
cd ..
sudo rm -rf /var/www/html/*
sudo chown ielab:www-data ielab.korea.ac.kr/_site -R
cp -rf ielab.korea.ac.kr/_site/* /var/www/html/
