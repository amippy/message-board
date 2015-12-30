class Message < ActiveRecord::Base
  #名前は必須入力かつ２０文字以内
  validates :name, length: { maximum: 20}, presence: true
  #内容は必須入力かつ２文字以上３０文字以下
  validates :body, length: { minimum: 2 ,maximam: 30} ,presence:true
  #年齢は数字以外入力できない
  validates :age, numericality: { only_integer:true,greater_than:18}
end
