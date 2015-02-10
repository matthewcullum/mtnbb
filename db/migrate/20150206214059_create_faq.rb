class CreateFaq < ActiveRecord::Migration
  def change
    create_table :faqs do |t|
      t.string :title
      t.text :description
    end
  end
end
