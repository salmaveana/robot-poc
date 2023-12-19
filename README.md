# robot-poc
A Robot Framework POC with Selenium

# Installing Robot Framework

It is good practice to use a virtual environment to not mess with other installed stuff. First create a directory:

`mkdir /Users/user/robot`

Then let's create the `venv`:

`python3 -m venv /Users/user/robot`

Activate the recently installed `venv`:

`source /Users/user/robot/bin/activate`

Now let's use pip to install Robot:

`pip install robotframework`

Verify Robot installation using the following command:

`robot --version`

Lastly, let's install the Selenium library for Robot:

`pip install robotframework-seleniumlibrary`

# Downloading Selenium Driver

Install the useful tool [webdrivermanager](https://github.com/MarketSquare/webdrivermanager):

`pip install webdrivermanager`

Then, install the necessary webdriver:

`webdrivermanager chrome`

or if you need a different version other than latest, use: 

`webdrivermanager chrome:<version>`

`webdrivermanager` should handle all the hassle. 

If using Chrome version >115 use [Chrome for testing](https://googlechromelabs.github.io/chrome-for-testing/). Press `Ctrl + F` and search for `chromedriver`.

# Using Robot Framework + SeleniumLibrary

All the content needed for this demo is stored in: `robot_selenium_demo.robot`. 

The purpose of this demo is to illustrate how Selenium works along Robot Framework. 

The test consist of:

1. Open test URL in target browser. 
2. Input username and password.
3. Submit credentials. 
4. Verify successful login. 

## Usage

`robot robot_selenium_demo.robot`

## Results

The demo goes quickly but results are stored in the following files:

- log.html
- report.html

# Acknowledgements

Thanks to [Practice Test Automation](https://practicetestautomation.com/practice-test-login/) for their awesome resources. 

