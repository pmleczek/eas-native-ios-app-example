# Building Fully Native iOS Apps with Expo EAS

## 📄 Overview

[Expo Application Services (EAS)](https://expo.dev/eas) is a set of powerful and highly customizable tools for building your React Native apps, automating the CI/CD and streamlined submissions to the app stores. It turns out that we can go beyond that scope and easily configure EAS to build native iOS projects. This repository contains a native iOS project and the EAS configurations required to enable building it with EAS builds and workflows.

## 🗂️ Project structure

<pre>
.
├── <a href="./.eas">.eas/</a> # Expo EAS configurations
│   ├── <a href="./.eas/build">build/</a> # Custom build configurations
│   │   ├── <a href="./.eas/build/build-ios.yml">build-ios.yml</a> # Build configuration for iOS
│   ├── <a href="./.eas/workflows">workflows/</a> # EAS workflow configurations
│   │   ├── <a href="./.eas/workflows/create-ios-build.yml">create-ios-build.yml</a> # Workflow for building iOS app
├── <a href="./NativeExample">NativeExample/</a> # Native app files
│   ├── <a href="./NativeExample/ContentView.swift">ContentView.swift</a> # Tab navigation
│   ├── <a href="./NativeExample/HomeView.swift">HomeView.swift</a> # Home screen
│   ├── <a href="./NativeExample/NativeExampleApp.swift">NativeExampleApp.swift</a> # Main app entrypoint
│   ├── <a href="./NativeExample/SVGScreenView.swift">SVGScreenView.swift</a> # SVG screen (using the SPM dependency)
├── <a href="./app.json">app.json/</a> # Expo project configurations
├── <a href="./eas.json">eas.json/</a> # Expo EAS configurations
├── <a href="./package.json">package.json/</a> # Minimal package.json needed for EAS
</pre>

## 🔨 Building the project

### ⚙️ Preqrequisites

Make sure that you have the latest version of Expo CLI installed:

```bash
npm install -g eas-cli
```

And that you are authenticated with your Expo account (you can create a free account at [expo.dev](https://expo.dev/signup)):

```bash
eas login
```

If you're cloning this repository make sure to replace the project ID in `app.json` with the ID of your EAS project.

### 💻 Locally 

Run the local EAS build

```bash
eas build -p ios -e development-simulator --local
```

### ☁️ On EAS cloud

Run the EAS build

```bash
eas build -p ios -e development-simulator
```

Or start the workflow

```bash
eas workflow:run create-ios-build.yml
```

## [Community Discord](https://discord.swmansion.com)

[Join the Software Mansion Community Discord](https://discord.swmansion.com) to chat about  and other Software Mansion solutions.

## This app is created by [Software Mansion](https://swmansion.com)

Since 2012 [Software Mansion](https://swmansion.com) is a software agency with experience in building web and mobile apps. We are Core React Native Contributors and experts in dealing with all kinds of React Native issues. We can help you build your next dream product – [Hire us](https://swmansion.com/contact/projects?utm_source=swm_photos&utm_medium=readme).
