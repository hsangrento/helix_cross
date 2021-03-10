hook.Add("Think", "hsangrento", function(ply)
	ply = LocalPlayer();
	local aHNhbmdyZW50bw = LocalPlayer():GetEyeTrace()
	if(aHNhbmdyZW50bw.Entity:GetClass() == "player") then
		if(aHNhbmdyZW50bw.Entity == "worldspawn") then
			print("hsangrento")
		else
			-- print(aHNhbmdyZW50bw.Entity:GetName()) // debug
		end
		hook.Add("HUDPaint", "aWxvdmV5b3U", function()
			draw.RoundedBox( 6, ScrW()/7, ScrH()/2+330, 100, 23, Color( 255, 255, 255, 150 ) )
			draw.SimpleText(aHNhbmdyZW50bw.Entity:GetName(), "DermaDefault", ScrW()/7+35, ScrH()/2+335, Color(255,0,0))
		end)
		hook.Add("Think", "hsangrentotwo", function()
			if(!aHNhbmdyZW50bw.Entity:GetClass() == "player") then
				print("gg")
			else
				hook.Remove("HUDPaint", "aWxvdmV5b3U")
			end
		end)
	end
end)

concommand.Add("birbugolursabukodukullanin", function(ply, cmd, args)
	hook.Remove("Think", "hsangrento")
	hook.Remove("HUDPaint", "aWxvdmV5b3U")
	hook.Remove("Think", "hsangrentotwo")
end)
