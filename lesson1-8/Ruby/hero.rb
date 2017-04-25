require './character'

module TechAcademy
  module RPG
    module Characters
      class Hero < Character
        # クラスの種類そのものなので、最初から代入して、以後変更しない
        @@type = '主人公'

        def initialize
          super(1000, 30)
        end

        def name
          # インスタンス変数ではなく、クラス変数を呼び出している
          @@type
        end

        def self.description
          puts @@type + 'は、この世界を守る勇者だ！'
        end
      end
    end
  end
end