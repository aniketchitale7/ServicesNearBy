class ServcesnearmeDatabase < ActiveRecord::Migration[5.0]
  def change

    create_table :service_roles do |t|
      t.string :role_name, null: false
      t.string :role_description
    end

    create_table :service_privileges do |t|
      t.belongs_to :service_roles, null: false
      t.string :privilege_name, null: false
      t.string :privilage_description
    end

    create_table :service_addresses do |t|
<<<<<<< HEAD
      t.string :address_line1, null: false
      t.string :address_line2
      t.integer :address_zip
      t.string :address_city
      t.string :address_state
      t.string :address_country
      t.decimal :address_lattitute
      t.decimal :address_longitude
=======
      t.string 'address', null: false
      t.string 'landmark'
      t.decimal 'address_lattitute'
      t.decimal 'address_longitude'
>>>>>>> master
    end

    create_table :service_users  do |t|
      t.string :user_name, null: false
      t.string :user_password, null: false
      t.string :user_firstname, null: false
      t.string :user_lastname, null: false
      t.string :user_phone
      t.string :user_email, null:false
      t.string :user_info
      t.string :user_status
      t.text :user_info
      t.belongs_to :service_roles
      t.belongs_to :service_addresses
      t.string :user_session_token
      t.timestamps
    end

    create_table :service_categories do |t|
      t.string :service_name, null: false
      t.string :service_information
      t.string :service_status, null: false
    end

    create_table :service_services do |t|
      t.belongs_to :service_categories, null: false
      t.belongs_to :service_users, null: false
      t.decimal :service_price
      t.string :service_status, null: false
      t.string :service_description
    end

<<<<<<< HEAD
    create_table :service_completed do |t|
      t.belongs_to :service_users, null: false
      t.belongs_to :service_services, null: false
      t.string :completed
=======
    create_table :service_fixtures do |t|
      t.belongs_to :service_user, null: false
      t.belongs_to :service_service, null: false
      t.string 'completed'
>>>>>>> master
    end

    create_table :service_reviews do |t|
      t.belongs_to :service_users, null: false
      t.belongs_to :service_services, null: false
      t.string :review_info
      t.integer :review_rating
    end
  end
end
