cd frontend || exit
flutter build web --release
mv build/web/index.html ../src/main/resources/templates/index.html
mv build/web/* ../src/main/resources/static
cd ..