--Example change voc and masterpos--

function onUse(cid, item, frompos, item2, topos)

	if getPlayerVocation(cid) > 0 then   --orcos empadronarse
		newpos = {x=321, y=537, z=7}
		doPlayerSetMasterPos(cid, newpos)
		doPlayerSendTextMessage(cid,22,"Now you live near orclanIsland.")
		doTeleportThing(cid,newpos)
		doSendMagicEffect(newpos,12)
		return 1
	else
		doPlayerSendTextMessage(cid,22,"Sorry, you dont have a vocation.")
		return 0
	end
end