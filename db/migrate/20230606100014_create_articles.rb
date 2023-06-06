class CreateArticles < ActiveRecord::Migration[6.0]  # Railsのバージョンによっては数字が異なる場合があります
  def change
    create_table :articles do |t|
      t.string :title, null: false, limit: 10
      t.text :content, null: false
      t.string :image # 画像は通常string型で保存し、画像アップロードのためのgem（例：Active Storage, CarrierWave, Paperclip）を使用します

      t.timestamps
    end
  end
end
