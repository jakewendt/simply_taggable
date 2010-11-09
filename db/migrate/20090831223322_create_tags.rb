class CreateTags < ActiveRecord::Migration
	def self.up
		create_table :tags do |t|
			t.references :tagger, :polymorphic => true
			t.string     :name
			t.integer    :taggables_count, :null => false, :default => 0
			t.timestamps
		end
		add_index :tags, [:name,:tagger_id,:tagger_type], :unique => true, :name => 'by_name'
	end

	def self.down
		drop_table :tags
	end
end
