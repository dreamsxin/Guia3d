function onSay(cid, words, param)
	if(param == "") then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You need to type the parameter.")
		return false
	end

	local player = getPlayerByName(param)
	local str = ""
	local pos = {x=40, y=430, z=7}
	if player ~= LUA_NULL then
		doPlayerSendTextMessage(player,22,"Welcome to the Jail.")
		doTeleportThing(player,pos)
		doSendMagicEffect(pos,12)
		str = "Player has been jailed."
	else
		str = "Player not found."
	end

	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, str)

	return false
end
