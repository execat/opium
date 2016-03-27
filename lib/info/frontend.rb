require_relative '../info.rb'

module Info::Frontend
  def frontend_visible
    %w[react angular backbone ember]
  end

  def frontend
    {
      react: {
        language: "JavaScript",
        website: "http://facebook.github.io/react/",
        logo: "f-react.png",
        example_projects: [
          {
            name: "vim-awesome",
            version: "",
            github: "https://github.com/divad12/vim-awesome",
            website: "http://vimawesome.com",
            more_info: nil,
            license: "MIT",
          },
          {
            name: "Perseus",
            version: "",
            github: "https://github.com/Khan/perseus",
            website: "http://khan.github.io/perseus/",
            more_info: nil,
            license: "MIT",
          },
        ],
        wikipedia: "https://en.wikipedia.org/wiki/React_(JavaScript_library)",
        github: "https://github.com/facebook/react",
        additional_info: "",
      },
      angular: {
        language: "JavaScript",
        website: "https://angularjs.org/",
        logo: "f-angular.png",
        example_projects: [
          {
            name: "Goread",
            version: "1.2.1",
            github: "https://github.com/mjibson/goread",
            website: "https://www.goread.io/",
            more_info: nil,
            license: "MIT",
          },
          {
            name: "",
            version: "",
            github: "",
            website: "",
            more_info: nil,
            license: "",
          },
        ],
        wikipedia: "https://en.wikipedia.org/wiki/AngularJS",
        github: "https://github.com/angular/angular.js",
        additional_info: "Also see https://github.com/angular/angular.js/wiki/Projects-using-AngularJS and https://www.madewithangular.com/#/",
      },
      polymer: {
        language: "JavaScript",
        website: "",
        logo: "",
        example_projects: [],
        wikipedia: "",
        github: "",
        additional_info: "",
      },
      underscore: {
        language: "JavaScript",
        website: "",
        logo: "",
        example_projects: [],
        wikipedia: "",
        github: "",
        additional_info: "",
      },
      backbone: {
        language: "JavaScript",
        website: "http://backbonejs.org/",
        logo: "f-backbone.png",
        example_projects: [
          {
            name: "Bookmarkly",
            version: "0.5.3",
            github: "https://github.com/dangrossman/Bookmarkly",
            website: "http://bookmarkly.com/",
            more_info: nil,
            license: "MIT",
          },
        ],
        wikipedia: "https://en.wikipedia.org/wiki/Backbone.js",
        github: "https://github.com/jashkenas/backbone",
        additional_info: "",
      },
      ember: {
        language: "JavaScript",
        website: "http://emberjs.com/",
        logo: "f-ember.png",
        example_projects: [
          {
            name: "Hummingbird",
            version: "",
            github: "https://github.com/hummingbird-me/hummingbird",
            website: "http://hummingbird.me/",
            more_info: nil,
            license: "Apache 2.0",
          },
          {
            name: "HN Reader",
            version: "1.10.0",
            github: "https://github.com/chancancode/hn-reader/",
            website: "http://chancancode.github.io/hn-reader/news",
            more_info: nil,
            license: "MIT",
          },
        ],
        wikipedia: "https://en.wikipedia.org/wiki/Ember.js",
        github: "https://github.com/emberjs/ember.js/",
        additional_info: "",
      },
      knockout: {
        language: "JavaScript",
        website: "",
        logo: "",
        example_projects: [],
        wikipedia: "",
        github: "",
        additional_info: "",
      },
    }
  end
end
