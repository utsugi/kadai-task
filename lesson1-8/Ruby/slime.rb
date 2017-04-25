require './character'

module TechAcademy
  module RPG
    module Characters
      class Slime < Character
        # クラス変数
        # クラスの種類そのものなので、最初から代入して、以後変更しない
        @@type = 'スライム'

        # インスタンス変数
        attr_accessor :suffix

        def initialize(suffix)
          super(10, 3)
          self.suffix = suffix
        end

        def name
          # この Slime クラスのクラス変数 type ('スライム') を返す
          @@type + self.suffix
        end

        # クラスメソッド
        def self.description
          puts @@type + 'は、最弱のモンスターだ！'
        end
      end
    end
  end
end