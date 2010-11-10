if defined?(RAILS_ENV) && RAILS_ENV == 'test'
Factory.define :tagger, :class => :User do |f|
end
Factory.define :taggable, :class => :Post do |f|
end
end
