require_relative '../info.rb'

module Info::Backend
  def backend_visible
    %w[sinatra rails meteor django].map(&:to_sym)
  end

  def backend
    {
      sinatra: {
        language: "Ruby",
        website: "http://www.sinatrarb.com/",
        logo: "fw-sinatra.png",
        example_projects: [
          {
            name: "Hike",
            version: "1.4.5",
            github: "https://github.com/zaknelson/hike.io/",
            website: "https://hike.io",
            more_info: nil,
            license: "MIT",
          },
          {
            name: "Monocle",
            version: "1.4.3",
            github: "https://github.com/maccman/monocle",
            website: "http://monocle.io",
            more_info: nil,
            license: "MIT"
          },
        ],
        wikipedia: "https://en.wikipedia.org/wiki/Sinatra_(software)",
        github: "https://github.com/sinatra/sinatra",
        additional_info: "",
      },
      rails: {
        language: "Rails",
        website: "http://rubyonrails.org/",
        logo: "fw-rails.png",
        example_projects: [
          {
            name: "Balder",
            version: "3.2.22",
            github: "https://github.com/espen/balder",
            website: "http://balderapp.com/",
            more_info: "",
            license: "MIT"
          },
          {
            name: "GitLab",
            version: "4.2.1",
            github: "https://github.com/gitlabhq/gitlabhq",
            website: "https://gitlab.com",
            more_info: "",
            license: "MIT Expat License"
          },
          {
            name: "Diaspora",
            version: "4.2.5",
            github: "https://github.com/diaspora/diaspora/",
            website: "https://diasporafoundation.org/",
            more_info: "",
            license: "GNU AGPL 3.0"
          },
        ],
        wikipedia: "https://en.wikipedia.org/wiki/Ruby_on_Rails",
        github: "https://github.com/rails/rails",
        additional_info: "",
      },
      hanami: {
        language: "Ruby",
        website: "http://hanamirb.org/",
        logo: "fw-hanami.png",
        example_projects: [],
        wikipedia: "",
        github: "https://github.com/hanami/hanami",
        additional_info: "",
      },
      meteor: {
        language: "JavaScript",
        website: "https://www.meteor.com/",
        logo: "fw-meteor.png",
        example_projects: [
          {
            name: "Telescope",
            version: "",
            github: "https://github.com/TelescopeJS/Telescope",
            website: "http://demo2.telescopeapp.org/",
            more_info: "http://www.telescopeapp.org/",
            license: "MIT"
          },
        ],
        wikipedia: "https://en.wikipedia.org/wiki/Meteor_(web_framework)",
        github: "https://github.com/meteor/meteor",
        additional_info: "",
      },
      sails: {
        language: "JavaScript",
        website: "http://sailsjs.org/",
        logo: "fw-sails.png",
        example_projects: [],
        wikipedia: "",
        github: "https://github.com/balderdashy/sails",
        additional_info: "",
      },
      echo: {
        language: "JavaScript",
        website: "http://echo.nextapp.com/site/echo3",
        logo: "fw-echo.png",
        example_projects: [],
        wikipedia: "https://en.wikipedia.org/wiki/Echo_(framework)",
        github: "https://github.com/echo3/echo3",
        additional_info: "",
      },
      django: {
        language: "Python",
        website: "https://www.djangoproject.com/",
        logo: "fw-django.png",
        example_projects: [
          {
            name: "Bootcamp",
            version: "1.9.4",
            github: "https://github.com/vitorfs/bootcamp",
            website: "http://trybootcamp.vitorfs.com/",
            more_info: "",
            license: "MIT"
          },
        ],
        wikipedia: "https://en.wikipedia.org/wiki/Django_(web_framework)",
        github: "https://github.com/django/django",
        additional_info: "Check this website for more information: https://code.djangoproject.com/wiki/DjangoResources#Open-SourceDjangoprojects",
      },
      cherrypy: {
        language: "Python",
        website: "http://www.cherrypy.org/",
        logo: "fw-cherrypy.png",
        example_projects: [],
        wikipedia: "https://en.wikipedia.org/wiki/CherryPy",
        github: "https://github.com/cherrypy/cherrypy",
        additional_info: "",
      },
      laravel: {
        langauge: "PHP",
        website: "https://laravel.com/",
        logo: "fw-laravel.png",
        example_projects: [],
        wikipedia: "https://en.wikipedia.org/wiki/Laravel",
        github: "https://github.com/laravel/laravel",
        additional_info: "",
      },
      phoenix: {
        language: "Elixir",
        website: "http://www.phoenixframework.org/",
        logo: "fw-phoenix.png",
        example_projects: [],
        wikipedia: "",
        github: "https://github.com/phoenixframework/phoenix",
        additional_info: "",
      },
      snap: {
        language: "Haskell",
        website: "http://snapframework.com/",
        logo: "fw-snap.png",
        example_projects: [],
        wikipedia: "https://en.wikipedia.org/wiki/Snap_(web_framework)",
        github: "https://github.com/snapframework/snap",
        additional_info: "",
      },
      yesod: {
        language: "Haskell",
        website: "http://www.yesodweb.com/",
        logo: "fw-yesod.png",
        example_projects: [],
        wikipedia: "https://en.wikipedia.org/wiki/Yesod_(web_framework)",
        github: "https://github.com/yesodweb/yesod",
        additional_info: "",
      },
      happstack: {
        language: "Haskell",
        website: "http://www.happstack.com/",
        logo: "fw-happstack.png",
        example_projects: [],
        wikipedia: "https://en.wikipedia.org/wiki/Happstack",
        github: "https://github.com/Happstack/happstack-server",
        additional_info: "",
      },
      weblocks: {
        language: "Common Lisp",
        website: "http://weblocks-framework.info/",
        logo: "fw-weblocks.png",
        example_projects: [],
        wikipedia: "https://en.wikipedia.org/wiki/Weblocks",
        github: "https://github.com/skypher/weblocks",
        additional_info: "",
      },
      play: {
        language: "Scala",
        website: "https://www.playframework.com/",
        logo: "fw-play.png",
        example_projects: [],
        wikipedia: "https://en.wikipedia.org/wiki/Play_Framework",
        github: "https://github.com/playframework/playframework",
        additional_info: "",
      },
      seaside: {
        language: "Smalltalk",
        website: "http://www.seaside.st/",
        logo: "fw-seaside.png",
        example_projects: [],
        wikipedia: "",
        github: "https://en.wikipedia.org/wiki/Seaside_(software)",
        additional_info: "",
      },
      pedestal: {
        language: "Clojure",
        website: "http://pedestal.github.io/pedestal/",
        logo: "fw-pedestal.png",
        example_projects: [],
        wikipedia: "",
        github: "https://github.com/pedestal/pedestal",
        additional_info: "",
      },
    }
  end
end
