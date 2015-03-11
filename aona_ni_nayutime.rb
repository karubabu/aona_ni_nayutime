Plugin.create(:aona_ni_nayutime) do
	DEFINED_TIME = Time.new.freeze
	#Nrand = Random.new(100)

	on_mention do |se,ms|
		ms.each do |m|
			if m.user.idname=~ /uubot/  and m[:created] > DEFINED_TIME and !m.retweet? then
				if true then
					Service.primary.post(:message => "#{"@" + m.user.idname + " 青菜に塩なう\n（悪い印象を与えた）"}", :replyto => m)
				end
			end
		end
	end
end
