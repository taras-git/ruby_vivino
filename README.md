Testing with Ruby, Cucumber and Appium

IMPORTANT!
The project uses APK file, which has to be placed into 'features/support' folder.
Due to its big size, it is not uploaded to Git, and has to be added separately.
Name of the APK should be exact 'app-world-beta (1).apk'

Prerequisites (installed components):
- Appium 
- Ruby (v 2.6.6)
- Cucumber
- Android emulator 
- Android APK 

The Project consists of 2 testcases, written in Gerkin syntax (file 'home.feature').
Each step is mapped to its correspondent definition (file 'step_definition/home_steps.rb').

Running the test execution:
1. Open android emulator and run one virtual device
2. Run Appium server
3. Execute command "cucumber" from the project directory

Result - test are passed on the virtual Android device.
