# ACTools

This is a quick and dirty (for now) app that provides a one stop shop for your animal crossing data needs

Please checkout the links below and support the developers that gave insperation and provided their code open source for everyone to use. Without them I wouldnt have any ideas on how to make this project work as well as it is. I would rather you support them than me.

# Included Tools
* Turnip profit tracker with archive
  - simple turnip math to make sure you arent going to lose money
  - saving of each weeks profits forever!
* Item listing
  - All items, tools, animals, bugs, and recipies in the game


# Install notes

If you want to run this app on your own you will have to import all the data from the master spreadsheet, however some modifications are required.

## Modifications to data
1. each spreadsheet has an image column, however it includes a google sheets formula, find and replace it to get a working image link (this will be done in the backend someday but for now its not updated often enough to make it worth while)
2. Becuase of the way I chose to store data in this app, you will need to ADD a column to each sheet before you save it. (everything works without it, but you lose featrues)
  1. add the colum named "category" to your sheet, and fill it with the name of the tab in the spreadsheet (ex housewares, rugs, wallmounts...) so my datatable will filter things properly.

# TODO
- [ ] Remove scaffolds that wont be used anymore
  - [ ] Re-create one big scaffold to rule them all!
- [ ] Fix UI for turnips
- [ ] Add authentication
- [ ] Add permissions to prevent just anyone from uploading a CSV
- [ ] Style app (obviously)
- [ ] Wishlist / Collection of things you have or want??? (this is a big one that may take some time)
- [ ] prevent duplicates during import and allow data to be updated without creating duplicates
