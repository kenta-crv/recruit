class Contact
  include ActiveModel::Model

  attr_accessor :company, #会社名
                :name, #担当者
                :tel, #電話番号
                :address, #住所
                :email, #メール
                :period, #掲載希望時期
                :people, #採用希望者数
                :industry, #業種
                :occupation, #職種
                :saraly_select, #給料
                :saraly, #給料
                :transportation, #交通費
                :working, #就業時間
                :qualification, #資格
                :overtime, #残業
                :remarks #備考

  validates :company, {presence: true}
  validates :name, {presence: true}
  validates :tel, {presence: true}
  validates :email, {presence: true}
  validates :address, {presence: true}
end
