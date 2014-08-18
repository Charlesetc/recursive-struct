require 'ostruct'

class RecursiveStruct < OpenStruct
	
	def initialize(input = nil)
		@recursive_table = {}
		hash = input
		if hash
			hash.each do |key, value|
				if value.class == Hash
					@recursive_table[key] = RecursiveStruct.new(value)
					hash.delete(key)
				end
			end
		end
		super(hash) 
	end
	
	def to_ary
		self.to_h.to_a
	end
	
	
  # def new_ostruct_member(name)
  #   name = name.to_sym
  #   unless respond_to?(name)
  # 			if name.nil?
  # 				define_singleton_method(name) { @recursive_table[name] }
  # 			else
  # 				yield(name) if block_given?
  # 			end
  #   end
  #   name
  # end
	
	def method_missing(mid, *args)
		mname = mid.id2name
		len = args.length
		if mname.chomp!('=')
			super(mid, *args)
		elsif len == 0
			return @recursive_table[mid] if @recursive_table[mid]
			return @table[mid] if @table[mid]
			@recursive_table[mid] = RecursiveStruct.new
		else
			raise NoMethodError, "undefined method `#{mid}' for #{self}", caller(1)
		end
	end
	
end


# Examples

# r = RecursiveStruct.new
#
# r.time = 'now'
#
# puts r.time
#
# r.dog.breed = 'poodle'
#
# puts r.dog.breed
#
# r.wow.hi.great.golly = 'nope'
#
# puts r.wow.hi.great.golly
#
# hash = {cat: 'none', dog: { color: 'black', breed: 'poodle' }}
#
# i = RecursiveStruct.new hash
#
# puts i.cat
#
# puts i.dog
#
# puts i.dog.color
#
# puts i.dog.breed