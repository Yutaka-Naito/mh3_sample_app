#タイトルヘルパーとやってることは同じ
#別にspec.rb内に書いても動くんですけどね
#↑動かなくなったので明示的にパスを渡すことになった

def full_title(page_title)
	base_title="Ruby on Rails Tutorial Sample App"
	if page_title.empty?#ruby文法
		base_title
	else
		"#{base_title} | #{page_title}" # #{}は文字列内展開を意味するruby表記
	end
end
