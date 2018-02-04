class CreateFranchisers < ActiveRecord::Migration[5.1]
  def change
    create_table :franchisers do |t|
      t.integer :company_id                           # 公司id
      t.string  :contact_name                         # 姓名
      t.string  :phone                                # 电话
      t.string  :email                                # Email
      t.string  :office_phone                         # 办公电话
      t.string  :headship                             # 职务
      t.string  :contect_type                         # 职能
      t.string  :address                              # 通讯地址
      t.string  :zip                                  # 邮编
      t.string  :fax                                  # 传真
      t.boolean  :is_leaved, :default => false        # 是否离职
      t.timestamps
    end
  end
end
