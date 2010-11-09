Factory.define :tag do |f|
	f.name "Tag Name"
end
Factory.define :user do |f|
end
Factory.define :tagger, :parent => :user do |f|
end
Factory.define :post do |f|
end
Factory.define :tagging do |f|
end
Factory.define :taggable, :parent => :post do |f|
end
