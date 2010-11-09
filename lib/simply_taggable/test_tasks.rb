module SimplyTaggable;end
namespace :test do
	namespace :units do
		Rake::TestTask.new(:simply_taggable => "db:test:prepare") do |t|
			t.pattern = File.expand_path(File.join(
				File.dirname(__FILE__),'/../../test/unit/taggable/*_test.rb'))
			t.libs << "test"
			t.verbose = true
		end
	end
	namespace :functionals do
		Rake::TestTask.new(:simply_taggable => "db:test:prepare") do |t|
			t.pattern = File.expand_path(File.join(
				File.dirname(__FILE__),'/../../test/functional/taggable/*_test.rb'))
			t.libs << "test"
			t.verbose = true
		end
	end
end
Rake::Task['test:functionals'].prerequisites.unshift(
	"test:functionals:simply_taggable" )
Rake::Task['test:units'].prerequisites.unshift(
	"test:units:simply_taggable" )

#	I thought of possibly just including this file
#	but that would make __FILE__ different.
#	Hmmm


