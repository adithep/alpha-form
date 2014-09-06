Package.describe({
  summary: "Provides form functionality",
  version: "0.0.1",
  name: "bads:alpha-form"
});

Package.on_use(function (api, where) {
  api.versionsFrom('METEOR@0.9.2-rc1');
  api.use([
    'bads:alpha-stylus',
    'bads:alpha-layout',
    'bads:core-lib',
    'standard-app-packages',
    'underscore',
    'coffeescript',
  ]);
  api.add_files([
    'alpha-form.html',
    'alpha-form.coffee',
    'form-helpers.coffee',
    'form-events.coffee'], 'client');
});

Package.on_test(function (api) {
  api.use("bads:alpha-form");

  api.add_files('alpha-form_tests.js', ['client', 'server']);
});
