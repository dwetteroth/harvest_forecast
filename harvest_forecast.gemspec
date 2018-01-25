Gem::Specification.new do |s|
  s.name        = 'harvest_forecast'
  s.version     = '0.0.6'
  s.date        = '2017-12-01'
  s.required_ruby_version = '>= 2.0.0'
  s.summary     = "Harvest & Forecast API Creation."
  s.description = %q{ Ruby client that supports all of the GitHub API methods. It's build in a modular way, that is, you can either instantiate the whole api wrapper Github.new or use parts of it e.i. Github::Client::Repos.new if working solely with repositories is your main concern. Intuitive query methods allow you easily call API endpoints. }
  s.authors     = ["Daniel Wetteroth"]
  s.email       = 'danielcw@gmail.com'
  s.files       = Dir['{lib}/**/*']
  s.require_paths = ["lib"]
  s.has_rdoc    = true
  s.extra_rdoc_files  = ["README.md"]
  s.rdoc_options      = ["--main", "README.md"]
  s.homepage          = 'https://github.com/dwetteroth/harvest_forecast'
  s.license           = 'MIT'


  #dep
  s.add_dependency 'faraday',     '~> 0.8'
end
