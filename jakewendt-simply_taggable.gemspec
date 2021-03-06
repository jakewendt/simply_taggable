# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{jakewendt-simply_taggable}
  s.version = "0.3.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["George 'Jake' Wendt"]
  s.date = %q{2011-08-10}
  s.description = %q{longer description of your gem}
  s.email = %q{github@jake.otherinbox.com}
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    "app/models/tag.rb",
    "app/models/tagging.rb",
    "config/routes.rb",
    "generators/simply_taggable/USAGE",
    "generators/simply_taggable/simply_taggable_generator.rb",
    "generators/simply_taggable/templates/autotest_simply_taggable.rb",
    "generators/simply_taggable/templates/migrations/create_taggings.rb",
    "generators/simply_taggable/templates/migrations/create_tags.rb",
    "generators/simply_taggable/templates/simply_taggable.rake",
    "lib/jakewendt-simply_taggable.rb",
    "lib/simply_taggable.rb",
    "lib/simply_taggable/assertions.rb",
    "lib/simply_taggable/base.rb",
    "lib/simply_taggable/tasks.rb",
    "lib/simply_taggable/test_tasks.rb",
    "lib/tasks/simply_taggable_tasks.rake",
    "rails/init.rb"
  ]
  s.homepage = %q{http://github.com/jakewendt/simply_taggable}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{one-line summary of your gem}
  s.test_files = ["test/app/controllers/application_controller.rb", "test/app/models/post.rb", "test/app/models/user.rb", "test/factories.rb", "test/unit/post_test.rb", "test/unit/taggable/tag_test.rb", "test/unit/taggable/tagging_test.rb", "test/unit/user_test.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, ["~> 2"])
      s.add_runtime_dependency(%q<jakewendt-rails_extension>, [">= 0"])
    else
      s.add_dependency(%q<rails>, ["~> 2"])
      s.add_dependency(%q<jakewendt-rails_extension>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, ["~> 2"])
    s.add_dependency(%q<jakewendt-rails_extension>, [">= 0"])
  end
end

