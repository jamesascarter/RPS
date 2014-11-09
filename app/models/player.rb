class Player

	attr_reader :name, :weapon_choice

	def initialize(name, weapon_choice=nil)
		@name = name
		@weapon_choice = weapon_choice
	end
end