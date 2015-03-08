Plugin.create(:aona_ni_nayutime) do
	DEFINED_TIME = Time.new.freeze
	Nrand = Random.new(100)
	def say_aona(service)
		msg="@" + m.user.idname +  "青菜に塩なう（悪い印象を与えた）"
		service.post(:message => msg, :replyto => m)
	end
	on_mention do |ms|
		ms.each do |m|
			#if m.user.idname=~ /bot/ then
				if Nrand.rand(10)<=10 then
					sey_aona(Service.primary)
				end
			#end
		end
	end
end