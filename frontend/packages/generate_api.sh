openApiGenerator="5.4.0"
fileName="openapi-generator-cli-$openApiGenerator.jar"

openAPIFile="api.yml"
outputDir="openapi"

if test -f $fileName; then
    echo "Already downloaded"
else
    echo "Downloading OpenApiGenerator ..."
    curl -O "https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/$openApiGenerator/openapi-generator-cli-$openApiGenerator.jar"
fi


java -jar $fileName generate \
    -i $openAPIFile \
    -g dart-dio-next \
    -o $outputDir

cd $outputDir
flutter pub get
flutter pub run build_runner build