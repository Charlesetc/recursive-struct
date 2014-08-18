# Recursive-Struct

##### Perfect Open Structs.

## Examples

Setting a Recursive Struct is easy:

```
lord_trumpet = RecursiveStruct.new
lord_trumpet.species = 'dog'
lord_trumpet.fur.color = 'black'
lord_trumpet.owner.hair.color = 'brown'
```

Getting one is easier:

```
lord_trumpet.species # => "dog"
lord_trumpet.fur.color # => "black"
lord_trumpet.owner.hair.color # => "brown"
```

Note: You _cannot_ assign a value to an intermediate method.
```
lord_trumpet.owner # => #<RecursiveStruct>
lord_trumpet.owner = 'Paul'
lord_trumpet.owner # => #<RecursiveStruct>
```


#### Initialize with a Hash

```
jet_plane = RecursiveStruct.new seats: 24, passengers: { first: 'joe', second: 'bob' ... }

jet_plane.seats # => 24
jet_plane.passengers.first # => 'joe'
```


## Installation

Add this line to your application's Gemfile:

    gem 'recursive-struct'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install recursive-struct
	
## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
