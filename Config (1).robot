*** Variables ***

#${REMOTE_URL}        http://0.0.0.0:4731/wd/hub
#${PLATFORM_NAME}     iOS
#${DEVICE_NAME}       iPhone
#${APP_LOCATION}      ${CURDIR}/executable-app/EcoNet_4135.ipa
#${BUNDLE_ID}         com.rheem.econetprod
#${AUTOMATION_NAME}    XCUITest
#${UIID}               a2e7b37a3ec4a4e0edda107246b413da2d047d87
#${PLATFORM_VERSION}    13.3.1
#${bootstrapPath}      /usr/local/lib/node_modules/appium/node_modules/appium-webdriveragent
#${agentPath}          /usr/local/lib/node_modules/appium/node_modules/appium-webdriveragent/WebDriverAgent.xcodeproj
#${SCREENSHOT_FOLDER}    ../screenshots/
#${noReset}             False
#${fullReset}           True
#${TIME_OUT}            60000
#${pathScreenShot}       /results/screenshots/
#${connectHardwareKeyboard}      true
#${wdaLocalPort}         8300


${REMOTE_URL}     http://localhost:4723/wd/hub
${PLATFORM_NAME}    %{DEVICEFARM_DEVICE_PLATFORM_NAME}
${DEVICE_NAME}    %{DEVICEFARM_DEVICE_NAME}
${APP}            %{DEVICEFARM_APP_PATH}
${PLATFORM_VERSION}   %{DEVICEFARM_DEVICE_OS_VERSION}

${AUTOMATION_NAME}    XCUITest
${SCREENSHOT_FOLDER}    ../screenshots/
${noReset}             False
${fullReset}           True
${TIME_OUT}            60000
${pathScreenShot}       /results/screenshots/
${connectHardwareKeyboard}      true



*** Keywords ***
Open App
   #start appium
   Open Application    remote_url=${REMOTE_URL}     platformVersion=${PLATFORM_VERSION}    newCommandTimeout=${TIME_OUT}    alias=Rheem    platformName=${PLATFORM_NAME}    deviceName=${DEVICE_NAME}    app=${APP}    noReset=${noReset}    fullReset=${fullReset}


Close All Apps
   quit_application
   #Close All Applications
   log to console    closed all the application
   stop appium
