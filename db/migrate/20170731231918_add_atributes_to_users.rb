class AddAtributesToUsers < ActiveRecord::Migration[5.0]
  def change
  		add_column :users, :name, :string, null: false, default: ''
        add_column :users, :general_register, :string, null: false, default: ''
        add_column :users, :cpf, :string, null: false, default: ''
        add_column :users, :gender, :string, null: false, default: ''
        add_column :users, :birthday, :date
        add_column :users, :cep, :string
        add_column :users, :state, :string
        add_column :users, :adress, :text
        add_column :users, :adress_number, :string
        add_column :users, :complement, :string
        add_column :users, :city, :string
        add_column :users, :district, :string
        add_column :users, :phone, :string
        add_column :users, :cel, :string, null: false, default: ''
        add_column :users, :university, :string, null: false, default: ''
        add_column :users, :registration_id, :string
        add_column :users, :semester, :integer
        add_column :users, :facebook_profile_link, :text, null: false, default: ''
        add_column :users, :cpf_dual, :string
	    add_column :users, :answer_1, :string
	    add_column :users, :answer_2, :string
	    add_column :users, :answer_3, :string
	    add_column :users, :answer_4, :string
	    add_column :users, :answer_5, :string
	    add_column :users, :justify, :text
	    add_column :users, :experience, :text
	    add_column :users, :face_link, :string
        add_column :users, :completed, :boolean
        add_column :users, :active, :boolean, default: false
        add_column :users, :lot_id, :integer
        add_column :users, :paid_on, :datetime
        add_column :users, :room_id, :integer
        add_column :users, :lider_dual, :boolean, default: false
        add_index :users, [:general_register, :cpf], unique: true
        add_column :users, :inscription_date, :datetime
  end
end
