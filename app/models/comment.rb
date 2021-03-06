class Comment < ActiveRecord::Base
  self.table_name = 'admin_comments'

  #empty
  validates :mobile_phone, presence: true
  #length
  validates :mobile_phone, length: { is: 11 }
  #format
  validates :mobile_phone, format: { with: /\A1(3|5|6|7|8|9)[0-9]{9}\z/, message: "请输入正确的手机号码" }

  STATUS = %w[未处理 已处理 垃圾信息]
end
