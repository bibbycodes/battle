class Player
  attr_reader :name, :hp
  attr_writer :hp

  def initialize(name)
    @name = name
    @hp = 60
  end

  def attack(player)
    player.hp -= 10
    return player.hp
  end
end