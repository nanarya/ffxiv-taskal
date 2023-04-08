# frozen_string_literal: true

# == Schema Information
#
# Table name: tasks
#
#  id           :bigint           not null, primary key
#  completed_at :datetime
#  description  :text
#  memo         :text
#  priority     :integer          default("normal"), not null
#  progress     :integer          default("todo"), not null
#  repeat       :integer          default("none"), not null
#  title        :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Task < ApplicationRecord
  enum :priority, {
    lowest: 0,
    low: 1,
    normal: 2,
    high: 3,
    highest: 4
  }, prefix: true

  enum :repeat, {
    none: 0,
    daily: 1,
    weekly: 2
  }, prefix: true

  enum :progress, {
    todo: 0,
    done: 1,
    archived: 2
  }, prefix: true
end
