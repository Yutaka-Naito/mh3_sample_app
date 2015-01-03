class User
	attr_accessor :name, :email

	def initialize(attributes = {}) 
	#classをnewしたときに呼び出される（コンストラクタ？）
	#デフォルト値：空のハッシュ（つまり空のユーザーが作れる）
		@name = attributes[:name]
		@email = attributes[:email]
		#インスタンス変数を設定している
	end

	def formatted_email
		"#{name} <#{@email}>"
	end
end