Plugin.create(:aona_ni_nayutime) do
	DEFINED_TIME = Time.new.freeze
	Nrand = Random.new(DEFINED_TIME)
	def say_aona(service)
		msg="@" + m.message.idname() +  "青菜に塩なう（悪い印象を与えた）"
		service.primary.post(:message => msg, :replyto => m)
	end
	on_mention do |ms|
		ms.each do |m|
			if m.message.idname()="babuuuuuuuubot" then
				if Nrand.rand(10)< then
					sey_aona(Service.primary)
			end
		end
	end
end
end