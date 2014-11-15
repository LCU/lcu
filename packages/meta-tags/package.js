Package.describe({
  summary: 'Meta tags makes it super simple to manage SEO data.',
  version: "0.2.4",
  name: "meta:tags"
});

Package.on_use(function(api) {
  api.use("underscore", "client");
  api.use("deps", "client");
  api.use("session", "client");
  api.use("ui", "client");
  api.use("templating", "client");

  api.add_files("lib/meta.html", "client");
  api.add_files("lib/meta.js", "client");

  api.export("Meta");

  // check if is this Meteor 0.9 and add 0.9 related code
  if (api.versionsFrom) {
    api.versionsFrom('METEOR@0.9.0');
  }
});

Package.on_test(function(api) {
  api.use(["yasinuslu:blaze-meta", "tinytest", "test-helpers", "underscore", "jquery"], "client");

  api.add_files("tests/test.js", "client");
});
