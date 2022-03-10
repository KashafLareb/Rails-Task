class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :name

      t.timestamps
    end
    create_table :books do |t|
        t.belongs_to :author, foreign_key: true
        t.string :title
        t.datetime :published_at
        t.timestamps
      end
  end
end
