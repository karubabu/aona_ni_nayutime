Plugin.create(:aona_ni_nayutime) do
	DEFINED_TIME = Time.new.freeze
	Nrand = Random.new(100)
	def say_aona(service)
		msg="@" + m.user.idname +  "青菜に塩なう（悪い印象を与えた）"
		service.post(:message => msg, :replyto => m)
	end

	on_mention do |ms|
		ms.each do |m|
			#if m.user.idname=~ /bot/  and m[:created] > DEFINED_TIME and !m.retweet? then
				if true then
					#sey_aona(Service.primary)
					#msg="#{"@" + m.user.idname +  "青菜に塩なう（悪い印象を与えた）"}"
					Service.primary.post(:message => "#{"@" + m.user.idname +  "青菜に塩なう（悪い印象を与えた）"}", :replyto => m)
				end
			#end
		end
	end
end