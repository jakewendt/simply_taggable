require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

desc 'Generate documentation for the simply_taggable plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
	rdoc.rdoc_dir = 'rdoc'
	rdoc.title		= 'SimplyTaggable'
	rdoc.options << '--line-numbers' << '--inline-source'
	rdoc.rdoc_files.include('README')
	rdoc.rdoc_files.include('lib/**/*.rb')
end

begin
	require 'jeweler'
	Jeweler::Tasks.new do |gem|
		gem.name = "jakewendt-simply_taggable"
		gem.summary = %Q{one-line summary of your gem}
		gem.description = %Q{longer description of your gem}
		gem.email = "github@jake.otherinbox.com"
		gem.homepage = "http://github.com/jakewendt/simply_taggable"
		gem.authors = ["George 'Jake' Wendt"]
		# gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings

		gem.files = FileList['lib/**/*.rb','app/**/*.rb','db/**/*.rb']

		gem.files -= FileList['db/migrate/*_test_only_*.rb']

#		gem.files = FileList['lib/**/*.rb','bin/**/*.rb','templates/**/*.rb']
#		gem.test_files = []
#		gem.test_files -= FileList['test/test_helper.rb']

		gem.add_dependency('rails', '~> 2')

	end
	Jeweler::GemcutterTasks.new
rescue LoadError
	puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require(File.join(File.dirname(__FILE__), 'config', 'boot'))
require 'rdoc'
require 'rdoc/rdoc'
require 'tasks/rails'
#require 'simply_taggable/tasks'
