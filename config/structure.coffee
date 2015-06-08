# Read more about app structure at http://docs.appgyver.com

module.exports =

  # See styling options for tabs and other native components in app/common/native-styles/ios.css or app/common/native-styles/android.css
  tabs: [
    {
      title: "Recept vinden"
      id: "recept-vinden"
      location: "example#recept-vinden"
    }
    {
      title: "Recept toevoegen"
      id: "recept-toevoegen"
      location: "example#recept-toevoegen"
    }
    {
      title: "Instellingen"
      id: "settings"
      location: "example#settings"
    }
  ]

  # rootView:
  #   location: "example#recept-vinden"

  preloads: [
    {
      id: "learn-more"
      location: "example#learn-more"
    }
    {
      id: "using-the-scanner"
      location: "example#using-the-scanner"
    }
    {
      id: "acceleration"
      location: "example#acceleration"
    }
    {
      id: "recept1"
      location: "example#recept1"
    }
  ]

  # drawers:
  #   left:
  #     id: "leftDrawer"
  #     location: "example#drawer"
  #     showOnAppLoad: false
  #   options:
  #     animation: "swingingDoor"
  #
  # initialView:
  #   id: "initialView"
  #   location: "example#initial-view"
