Meta = {
  options: {
    namespace: "lcu"
  },

  converters: {
    meta: function(property, content) {
      var options = _.isObject(property) ? property : {
        name: 'property',
        property: property,
        content: content
      };

      return options;
    }
  },

  config: function(opts) {
    _.extend(Meta.options, opts.options);
    _.extend(Meta.converters, opts.converters);
  },

  setVar: function(key, value) {
    Session.set(Meta.options.namespace + "." + key, value);
  },

  getVar: function(key) {
    return Session.get(Meta.options.namespace + "." + key);
  },

  set: function(property, content) {
    var meta = Meta.getVar("tag") || {};
    var m = Meta.converters.meta(property, content);
    meta[m.property] = m;
    Meta.setVar("tag", meta);
  },

  unset: function(property) {
    var meta = Meta.getVar("tag") || {};
    delete meta[property];
    Meta.setVar("tag", meta);
  },

  arr: function() {
    var meta = Meta.getVar("tag");
    return _.toArray(meta);
  },

  hash: function() {
    return Meta.getVar("tag");
  }
};

Template.MetaTags.helpers({

  tags: function() {
    return Meta.arr();
  },

  _MetaTag: function() {
    var attrs = {};
    attrs.name = this.property;
    attrs.content = this.content;

    return Blaze.Template(function() {
      return HTML.META(attrs);
    });
  }
});

Meteor.startup(function() {
  Blaze.render(Template.MetaTags, document.head);
});
