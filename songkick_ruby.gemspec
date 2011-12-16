Gem::Specification.new do |s|
  s.name = "songkick_ruby"
  s.version = "1.2.1"
  s.author = "Gregory Marcilhacy"
  s.email = "g.marcilhacy@gmail.com"
  s.homepage = "http://github.com/gregorym/songkick_ruby"
  s.summary = "Ruby wrapper of the songkick api"

  s.add_dependency('json', '>= 1.5.0')

  s.require_path = "lib"
  s.files = %w(
    README.textile
    songkick_ruby.gemspec
    lib/songkick.rb
    lib/songkick
    lib/songkick/client.rb
    lib/songkick/client/calendar.rb
    lib/songkick/client/event.rb
    lib/songkick/client/search.rb
    lib/songkick/client/user.rb
    lib/songkick/client/request.rb
    lib/songkick/client/validations.rb
    lib/songkick/client/errors.rb
  )
  
  s.test_files = %w(
    spec/songkick_spec.rb
  )
end
