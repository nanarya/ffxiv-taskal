title = 'title'

FactoryBot.create(:task, title: title, player: Player.first) unless Task.find_by(title: title)
