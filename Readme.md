# ABOUT THE SCRIPT

• This Scripts Runs in a Loop for 2-3 builds

• At first it compiles Vendor and System IMG

• Then Collect Its Cache and upload on drive

• And If System IMG Isnt Compiled at 1st build

• Then it is re-compiled with the help of cache

• Collected in the first build till it is done

• At last with help of cache from 1 and 2 build

• We compile the rom Successfully


# NOW, LET'S SETUP

### 1. Make account on [Cirrus CI](https://cirrus-ci.com/)

• Visit [Market Place](https://github.com/marketplace/cirrus-ci)

• Select Github Account

• Select 'Free Plan'

• Tap on 'Install it for free' then

• Tap on 'Complete Order and Begin Installation'

### 2. Fork This Repo

• To use our drive to store cache or upload rom
  - Your must fork this repo to get the access

• Open [.cirrus.yml](https://github.com/ImSpiDy/cirrus-script/blob/main/.cirrus.yml#L5)

  - Add your Token, Credentials and Gmail

• To encrypt your keys go to [Cirrus](https://cirrus-ci.com/) settings
  
  - Then find 'Owner-Level Secured Variables'
  
  - Paste your Key and tap on 'ENCRYPT'

• Open [build.sh](https://github.com/ImSpiDy/cirrus-script/blob/main/build.sh)
  
  - Set build command according to your rom
  
• Open [Sync](https://github.com/ImSpiDy/cirrus-script/blob/main/sync) Script

  - Set up [Rom Manifest & Branch](https://github.com/ImSpiDy/cirrus-script/blob/main/sync#L10)

  - Set up [local Manifest](https://github.com/ImSpiDy/cirrus-script/blob/main/sync#L15)
  
### 3. Start the build

• Complete github setup and commit it as
````bash
git commit -m "ci: Lets Build rom_name android_verison"
````
• After a successful build compile the rom with
````bash
git commit -m "your msg | R"
````
• Force push and Enjoy :)


# BASIC GUIDE

• If you face any error while compiling, fix it then

  - re-start the build from [Cirrus CI](https://cirrus-ci.com/)
  
  - by tapping on 'Re-Run Failed Task' Or
  
  - Your can use the commands below 
  
  - To re-start the build where it stopped

• Compile Vendor Img | First Build
````bash
git commit -m "your msg | V"
````
• Compile System Img | 2nd Build
````bash
git commit -m "your msg | S"
````
• Compile Full rom | Final build
````bash
git commit -m "your msg | R"
````
• Now trigger cirrus by force push
````bash
git push -f
````
• Cirrus gets triggered by any commit on github repo use [skip ci] at starting of commit msg to stop the trigger
````bash
git commit -m "[skip ci] your msg"
````


### MADE BY
• [SpiDy](https://github.com/ImSpiDy)

• [who-EM-i](https://github.com/who-EM-i)

### CREDIT
• [apon77](https://github.com/apon77)

• [jash69](https://github.com/jash69)
 