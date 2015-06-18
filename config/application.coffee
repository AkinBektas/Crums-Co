
# For an explanation of the steroids.config properties, see the guide at
# http://guides.appgyver.com/steroids/guides/project_configuration/config-application-coffee/

steroids.config.name = "C&C"

# ## Start Location
steroids.config.location = "http://localhost/views/Page1/index.html"

# ## Tab Bar
steroids.config.tabBar.enabled = true
steroids.config.tabBar.tabs = [
  {
    title: "Mijn ingredienten"
    icon: "icons/87.png"
    location: "http://localhost/views/Page1/index.html"
  },
  {
    title: "Recepten"
    icon: "icons/8.png"
    location: "http://localhost/views/Page2/index.html"
  },
  {
    title: "Settings"
    icon: "icons/25.png"
    location: "http://localhost/views/Page3/index.html"
  }
]
steroids.config.tabBar.tintColor = "ffffff"
steroids.config.tabBar.tabTitleColor = "444444"
steroids.config.tabBar.selectedTabTintColor = "4a87ee"
steroids.config.tabBar.selectedTabBackgroundImage = ""

steroids.config.tabBar.backgroundImage = ""
      

# ## Preloads
# steroids.config.preloads = [
#   {
#     id: "google"
#     location: "http://www.google.com"
#   }
# ]
    

# ## Drawers 
# steroids.config.drawers =
#   left:
#     id: "leftDrawer"
#     location: "http://localhost/leftDrawer.html"
#     showOnAppLoad: true
#     widthOfDrawerInPixels: 200 
#   right:
#     id: "rightDrawer"
#     location: "http://localhost/rightDrawer.html"
#     showOnAppLoad: true
#     widthOfDrawerInPixels: 200 
#   options:
#     centerViewInteractionMode: "Full"
#     closeGestures: ["PanNavBar", "PanCenterView", "TapCenterView"]
#     openGestures: ["PanNavBar", "PanCenterView"]
#     showShadow: true
#     stretchDrawer: true
#     widthOfLayerInPixels: 0


# ## Initial View
# steroids.config.initialView =
#   id: "initialView"
#   location: "http://localhost/initialView.html"

# ## Navigation Bar
steroids.config.navigationBar.tintColor = "eeeeee"
steroids.config.navigationBar.titleColor = "444444"
steroids.config.navigationBar.buttonTintColor = ""

steroids.config.navigationBar.buttonTintColor = "eeeeee"
steroids.config.navigationBar.buttonTitleColor = "444444"

# steroids.config.navigationBar.borderColor = "#000000"
# steroids.config.navigationBar.borderSize = 2

# steroids.config.navigationBar.landscape.backgroundImage = ""
# steroids.config.navigationBar.portrait.backgroundImage = ""

# ## Android Loading Screen
steroids.config.loadingScreen.tintColor = "#262626"

# ## iOS Status Bar
steroids.config.statusBar.enabled = true
steroids.config.statusBar.style = "light"

# ## File Watcher
# steroids.config.watch.exclude = ["www/my_excluded_file.js", "www/my_excluded_dir"]

# ## Pre- and Post-Make Hooks
# steroids.config.hooks.preMake.cmd = "echo"
# steroids.config.hooks.preMake.args = ["running yeoman"]
# steroids.config.hooks.postMake.cmd = "echo"
# steroids.config.hooks.postMake.args = ["cleaning up files"]

# ## Default Editor
# steroids.config.editor.cmd = "subl"
# steroids.config.editor.args = ["."]
  