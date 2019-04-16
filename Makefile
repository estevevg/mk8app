
clean:
	rm -rf www/*
	touch www/.gitkeep

install:
	npm install
	#bower install

browser:
	@browserify src/js/app_proto.js -o www/bundle.js
	@gulp build
	@cordova prepare

android: browser
	cordova build android

#www_android:
#	@browserify src/js/app_android.js -o www/bundle.js
#	@node_modules/.bin/gulp build
#	sass src/css/app.scss www/css/app.css
#	@cordova prepare

#android: www_android
#	cordova build android

#ios: www_android
#	cordova build ios

#test: www
#	protractor test/protractor.conf.js
