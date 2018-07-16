class CreateShains < ActiveRecord::Migration
  def change
    create_table :shains do |t|
      t.string :num, :index => true, :null => false
      t.string :name_1
      t.string :name_2
      t.string :name_1_kana
      t.string :name_2_kana
      t.string :busho_id
      t.string :shain_kbn
      t.string :hire_date
      t.string :leave_date
      t.boolean :del_flg, :default => true

#      t.timestamps null: false
    end
  end
end
