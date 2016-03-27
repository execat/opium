require_relative '../info.rb'

module Info::Additional
  def additional_visible
    %w[rspec heroku ec2 arangodb firebase dynamodb youtube].map(&:to_sym)
  end

  def additional
    {
      d3: {
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
      jasmine: {
        language: "JavaScript",
        website: "",
        logo: "",
        example_projects: [],
        wikipedia: "",
        github: "",
        additional_info: "",
      },
      mocha: {
        language: "JavaScript",
        website: "",
        logo: "",
        example_projects: [],
        wikipedia: "",
        github: "",
        additional_info: "",
      },
      es6: {
        language: "JavaScript",
        website: "",
        logo: "",
        example_projects: [],
        wikipedia: "",
        github: "",
        additional_info: "",
      },
      modernizr: {
        language: "JavaScript",
        website: "",
        logo: "",
        example_projects: [],
        wikipedia: "",
        github: "",
        additional_info: "",
      },
      rspec: {
        language: "Ruby",
        website: "http://rspec.info/",
        logo: "other-rspec.png",
        example_projects: [

        ],
        wikipedia: "https://en.wikipedia.org/wiki/RSpec",
        github: "https://github.com/rspec/rspec",
        additional_info: "gem install rspec",
      },
      heroku: {
        language: "Hosting",
        website: "http://heroku.com",
        logo: "other-heroku.png",
        example_projects: [],
        wikipedia: "https://en.wikipedia.org/wiki/Heroku",
        additional_info: "",
      },
      ec2: {
        language: "Hosting",
        website: "https://aws.amazon.com/ec2/",
        logo: "other-ec2.png",
        wikipedia: "https://en.wikipedia.org/wiki/Amazon_Elastic_Compute_Cloud",
      },
      arangodb: {
        language: "Database",
        website: "https://www.arangodb.com/",
        logo: "other-arango.png",
        wikipedia: "https://en.wikipedia.org/wiki/ArangoDB",
        github: "https://github.com/arangodb/arangodb",
        additional_info: "",
        license: "Apache 2.0",
      },
      firebase: {
        language: "Database",
        website: "https://www.firebase.com/",
        logo: "other-firebase.png",
        wikipedia: "https://en.wikipedia.org/wiki/Firebase",
        additional_info: "",
      },
      dynamodb: {
        language: "Database",
        website: "https://aws.amazon.com/dynamodb/",
        logo: "other-dynamodb.png",
        wikipedia: "https://en.wikipedia.org/wiki/Amazon_DynamoDB",
      },
      youtube: {
        language: "Music",
        website: "https://www.youtube.com/watch?v=p6j8fuvQICI",
        logo: "other-youtube.png",
        additional_info: "https://www.youtube.com/watch?v=p6j8fuvQICI",
      },
    }
  end
end
