# !bin/bash

adb shell pm grant com.qlever.fitt 'android.permission.ACCESS_COARSE_LOCATION' && \
adb shell pm grant com.qlever.fitt 'android.permission.ACCESS_FINE_LOCATION' && \
flutter test integration_test