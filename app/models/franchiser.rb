class Franchiser < ApplicationRecord


  validates_format_of :contact_name, :with => /[^u4E00-u9FA5]/, :message => "只能输入中文"
  CONTACTTYPE = {'0' => '销售', '1' => '技术支持', '2' => '维修'}
  ISLEAVED = {0 => '否', 1 => '是'}
  ROLE = {0 => '系统管理员', 1 => '经销商管理员', 2 => '普通经销商用户'}
end
