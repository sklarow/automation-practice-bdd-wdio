automation-practice-bdd-wdio
====================

Project to run WebdriverIO tests with [Cucumber](https://cucumber.io/) and brings **true** [BDD](http://en.wikipedia.org/wiki/Behavior-driven_development) to JavaScript. Instead of writing complicated test code that only developers can understand, Cucumber maps an ordinary language to code and allows to start with the test process in the early stages of your product development.

## Requirements

- Node version 8 or higher
- A preconfigured Selenium Grid, preinstalled browser driver or cloud provider account

Although this project works fine with NPM we recommend to use Yarn (>= 1.0.0) instead,  due to its speed & solid dependency locking mechanism. To keep things simple we use yarn in this guide, but feel free to replace this with NPM if that is what you are using.

Also this project doesn't cover setting up a proper test environment. You need to download specific browser driver yourself and run the prior starting tests or use a cloud provider like [SauceLabs](https://saucelabs.com/).

## Quick start

Choose one of the following options:

1. Download the latest stable releaseo r clone the git repo

2. Clean the project (Optional):
- *On OSX/Linux:*
-- Run `yarn run clean`

- *On Windows:*
-- Remove the directories `/.git`, `/.github`, `/demo-app` & `/test`
-- Remove the files `.travis.yml`, `jest.json` & `wdio.BUILD.conf.js`
-- Remove all the demo features from the `/src/features` directory

3. Install the dependencies (`yarn install`)

4. To run your tests just call the [WDIO runner](http://webdriver.io/guide/testrunner/gettingstarted.html):

```sh
$ yarn run wdio
```

## Features (scenarios) tested:

- Cart (Add item to the cart, Edit item quantity from the cart, Remove item from the cart)
- SignIn (SignIn with invalid email, SignIn with valid email and empty password, SignIn with valid email and wrong password, SignIn with valid credential  )
- QuickView (Check the Quickview informations)

# Running single feature
Sometimes it's useful to only execute a single feature file, to do so use the following command:

```sh
$ npx wdio wdio.conf.js --spec ./src/features/SignIn.feature
```

# For more information about the project:
https://webdriver.io/docs/gettingstarted.html
https://github.com/webdriverio/cucumber-boilerplate
