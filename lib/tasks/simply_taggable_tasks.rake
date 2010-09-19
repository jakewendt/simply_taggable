desc "Explaining what the task does"
namespace :simply_taggable do

	desc "Install"
	task :install => [:prep, :update] do
puts "in install"
	end

	task :prep => :environment do
puts "in prep"	#	just once
#	append require 'simply_taggable/tasks' to Rakefile
	end

	desc "Update"
	task :update => :environment do
puts "in update"

#		FileUtils.mkdir_p('db/migrate') unless File.directory?('db/migrate')
#		rsync_command = <<-EOF.gsub(/\s+/,' ').squish!
#			rsync -ruv 
#			--exclude='*_test_only_*rb'
#			--exclude='versions'
#			vendor/plugins/ucb_ccls_engine/db/migrate db
#		EOF
#		system rsync_command
#
#		FileUtils.mkdir_p('public') unless File.directory?('public')
#		rsync_command = <<-EOF.gsub(/\s+/,' ').squish!
#			rsync -ruv 
#			--exclude='versions'
#			vendor/plugins/ucb_ccls_engine/public .
#		EOF
#		system rsync_command
#
#		rsync_command = <<-EOF.gsub(/\s+/,' ').squish!
#			rsync -ruv 
#			--exclude='app'
#			--exclude='assets'
#			--exclude='config'
#			--exclude='db'
#			--exclude='extensions'
#			--exclude='fixtures'
#			--exclude='helpers'
#			--exclude='log'
#			--exclude='versions'
#			--exclude='test_helper.rb'
#			--exclude='engine_\*_test.rb'
#			vendor/plugins/ucb_ccls_engine/test .
#		EOF
#		system rsync_command

	end

end
