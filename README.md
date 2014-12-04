# LCU (Learn Code University)

Made using [meteor][mt]

## [Demo][demo]

There is a demo hosted on [meteor][mt], https://lcu.meteor.com

## Contributing

If you would like to contribute to this project please follow [these](https://github.com/thoughtbot/guides/tree/master/protocol/git#write-a-feature) guidelines to contribute.

## Mission

LCU's Mission is so be able to have people clone this repo onto their own servers where they can run a complete version of Learn Code University.
If people run it on their own servers they have complete control over the data that they are collecting.

## Folder structure
- Code in the `/server` directory only runs on the server.
- Code in the `/client` directory only runs on the client.
- Everything else runs on both the client and server.
- Your static assets (fonts, images, etc.) go in the `/public` directory.

### File loading
- Files in `/lib` are loaded before anything else.
- Any `main.*` file is loaded after everything else.
- Everything else loads in alphabetical order based on the file name.

[mt]: http://meteor.com
[demo]: http://lcu.meteor.com
