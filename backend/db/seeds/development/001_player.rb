name = 'name'

FactoryBot.create(:player, name: name) unless Player.find_by(name: name)
