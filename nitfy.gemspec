# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{nitfy}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["robl"]
  s.date = %q{2009-07-22}
  s.email = %q{robl at monkeyhelper.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "lib/nitfy.rb",
     "test/nitfy_test.rb",
     "test/test_helper.rb"
  ]
  s.homepage = %q{http://github.com/monkeyhelper/nitfy}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.4}
  s.summary = %q{NITF file parser}
  s.test_files = [
    "test/nitfy_test.rb",
     "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
