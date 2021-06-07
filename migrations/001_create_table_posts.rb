class CreateTablePosts < Sequel::Migration
    def up
      create_table :post do
        primary_key :id
        column :title, :text
        column :content, :text
        column :created_at, :timestamp
        column :updated_at, :timestamp
      end
    end
    end