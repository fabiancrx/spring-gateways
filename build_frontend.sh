cd frontend || exit
flutter build web --release --base-href "/api/"
cp build/web/index.html ../src/main/resources/templates/index.html
cp build/web/* ../src/main/resources/static
cp build/web/index.html ../target/classes/templates/index.html
cp build/web/* ../target/classes/static
cd ..