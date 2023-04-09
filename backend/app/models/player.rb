# == Schema Information
#
# Table name: players
#
#  id                     :bigint           not null, primary key
#  encrypted_password     :string           default(""), not null
#  name                   :string           default(""), not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#
# Indexes
#
#  index_players_on_name                  (name) UNIQUE
#  index_players_on_reset_password_token  (reset_password_token) UNIQUE
#
class Player < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable,
        authentication_keys: %i[name]

  has_many :tasks
end
