Gem::Specification.new do |s|
  s.name        = 'rails_localizer'
  s.version     = '0.0.1'
  s.date        = '2016-03-03'
  s.summary     = "A simple gem to handle localization with i18n in a rails app"
  s.description = "A simple gem to handle localization with i18n in a rails app"
  s.authors     = ["Bruno d'Auria"]
  s.email       = 'bruno.dauria1@gmail.com'
  s.files       = ["lib/rails_localizer.rb", "lib/rails_localizer/locale_setter.rb", 
                   "lib/rails_localizer/localizer.rb",
                   "lib/rails_localizer/preferred_locale_retriever.rb"]
  s.add_runtime_dependency('http_accept_language', '>=2.0.5')
  s.homepage    =
    'https://github.com/bdauria/rails_localizer'
  s.license       = 'Apache-2.0'

end
