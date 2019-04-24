class Author

attr_accessor :name, :author

@@posts = []

def initialize(name)
	@name = name
end

def posts
	@@posts
end

def add_post(post)
	post.author = self
	@@posts << post
end

def add_post_by_title(title)
	post = Post.new(title)
	add_post(post)
end

def self.post_count
	@@posts.length
end


end