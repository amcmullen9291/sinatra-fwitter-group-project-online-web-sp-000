class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    unless ActiveRecord::Base.connection.table_exists?('tweets')
      create_table :tweets do |t|
          t.string :content
        end
      end
  end
end
