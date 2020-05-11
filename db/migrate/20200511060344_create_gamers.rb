# frozen_string_literal: true

class CreateGamers < ActiveRecord::Migration[5.2]
  def change
    create_table :games, &:timestamps
  end
end
