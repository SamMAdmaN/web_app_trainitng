if [[ $# -eq 0 ]] ; then
    echo "Provide an environment argument!"
    exit 1
fi

SUFFIX=.$1;

# Production environment app id doesn't have suffix
if [ "$1" = "prod" ] ;
then SUFFIX=""
fi

mkdir -p lib/firebase/$1

flutterfire configure --platforms=ios,android \
--out=lib/firebase/$1/firebase_options.dart \
--android-package-name=com.blocStarterTest.android$SUFFIX \
--ios-bundle-id=com.blocStarterTest.ios$SUFFIX

cp android/app/google-services.json lib/firebase/$1/google-services.json
cp ios/firebase_app_id_file.json lib/firebase/$1/firebase_app_id_file.json
cp ios/Runner/GoogleService-Info.plist lib/firebase/$1/GoogleService-Info.plist

