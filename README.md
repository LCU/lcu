# LCU (Learn Code University)

Made using [meteor](http://meteor.com)

## Folder structure
- Code in the `/server` directory only runs on the server.
- Code in the `/client` directory only runs on the client.
- Everything else runs on both the client and server.
- Your static assets (fonts, images, etc.) go in the `/public` directory.

### File loading
- Files in `/lib` are loaded before anything else.
- Any `main.*` file is loaded after everything else.
- Everything else loads in alphabetical order based on the file name.