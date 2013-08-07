puts self

class Foo
	puts self

	def self.bar
		puts self	
	end
end

Foo.bar