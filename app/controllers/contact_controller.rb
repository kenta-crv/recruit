class ContactController < ApplicationController
  layout "app"
  def index
    @contact = Contact.new
    render :action => 'index'
  end

  def confirm
    @contact = Contact.new(contact_params)
    if @contact.valid?
      render :action =>  'confirm'
    else
      render :action => 'index'
    end
  end

  def thanks
    @contact = Contact.new(contact_params)
    ContactMailer.received_email(@contact).deliver
  end

  private
  def contact_params
    params.require(:contact).permit(
              :company, #会社名
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
    )
  end
end
