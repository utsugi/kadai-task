class Character
  attr_accessor :type, :hp, :power

  def initialize(type, hp, power)
    self.type = type
    self.hp = hp
    self.power = power
  end

  def name
    self.type
  end

  def attack(character)
    character.hp -= self.power
    puts "
#{self.name}が#{character.name}を攻撃して#{self.power}ポイントのダメージを与えた！"

    if character.hp <= 0
      self.defeat(character)
    end
  end

  def defeat(character)
    puts "
#{self.name}は#{character.name}を倒した！"
  end
end

class Slime < Character
  attr_accessor :suffix

  def initialize(suffix)
    super('スライム', 10, 1000)
    self.suffix = suffix
  end

  def name
    super + self.suffix
  end
end

class Hero < Character
  def initialize
    super('主人公', 1000, 30)
  end
end

hero = Hero.new
slime_A = Slime.new('A')

slime_A.attack(hero)
hero.attack(slime_A)
