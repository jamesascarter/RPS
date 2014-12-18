class Player

	attr_accessor :name, :weapon_choice

	def initialize(name, weapon_choice=nil)
		@name = name
		@weapon_choice = weapon_choice
	end
end