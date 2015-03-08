Plugin.create(:aona_ni_nayutime) do
	DEFINED_TIME = Time.new.freeze
	#Nrand = Random.new(100)
	def say_aona(m)
		msg="@" + m.user.idname + " " + "青菜に塩なう（悪い印象を与えた）"
		Service.primary.post(:message => msg, :replyto => m)
	end

	on_mention do |s,ms|
		ms.each do |m|
			if m.user.idname=~ /bot/  and m[:created] > DEFINED_TIME and !m.retweet? then
				if true then
					sey_aona(m)
				end
			end
		end
	end
end