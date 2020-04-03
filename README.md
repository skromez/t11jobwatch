# Simple real-time job reporting watch application (React/Tizen)

## Motivation
This is an experimental project to use React and TypeScript to develop Tizen Web watch applications.

## Getting Started
I created two projects the first with Tizen Studio, the second with [Create React App](https://github.com/facebook/create-react-app) TypeScript. Then I combined the two together.
I learned a number of tricks from [rovale/react-tizen-watch](https://github.com/rovale/react-tizen-watch), his work was pioneering, but I made a number of things differently.
- Ronald used only the TAU CSS files, I kept the entire TAU library
- Ronald used Redux and plain JS, I use hooks and TypeScript
- Ronald basically kept the React index.html, I kept the Tizen Studio index.html

Since I installed yarn, both npm and yarn can be used on my suystem.

Here are the key points:
- New projects can be created with **Tizen Web VSC extension**. Tizen Studio is not working any more, since we have node_modules and when Tizen Studio is started, it tries to compile all folders in the workspace.
- Quick testing as if it were a mobile application, simply run **npm start**  
- Deploy and test on emulator
  - Start emulator with
    - **em-cli list-vm**
    - **em-cli launc -n vmname**
  - Run my **deploy.cmd** in terminal window. I became a kind of Tizen CLI expert.
  - Unfortunately, I found no way to start Chrome to debug the application running on the emulator.
- Debug application with Tizen Web Simulator (Google Chrome)
  - npm run build
  - serve -s build
  - Tizen Web: Run Web Simulator
  - http://localhost:5000 in Web Simulator and Ctrl + Shift I to open Dev Tools for debugging

