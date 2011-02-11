#	From `script/generate simply_taggable` ...
unless Gem.source_index.find_name('jakewendt-simply_taggable').empty?
	gem 'jakewendt-simply_taggable'
	require 'simply_taggable/test_tasks'
end
