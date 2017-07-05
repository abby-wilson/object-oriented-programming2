

class Player
  def initialize(gold_coins = 0, health_points = 10, lives = 5)
    @gold_coins = gold_coins
    @health_points = health_points
    @lives = lives
  end

  def level_up
    @lives += 1
  end

  def collect_treasure
    if @gold_coins == % 10
      "#{level_up}"
    end
  end

  def do_battle(damage)
    @damage = damage
    @damage -= 1

    if @health_points < 1
      @lives - 1
      @health_points = 10
    end

    if @lives -= 0
      restart
    end
  end

  def restart
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end
end


player1 = Player.new
player1.do_battle(damage)
