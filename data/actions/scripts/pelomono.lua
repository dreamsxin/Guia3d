-- giant apes hair quest --

function onUse(cid, item, frompos, item2, topos)
 if getPlayerLevel(cid) < 30 then
		doPlayerSendTextMessage(cid,22,"Sorry, you are under lvl 30.")
		return true
	end
	if item.actionid == 21226 then
		queststatus = getPlayerStorageValue(cid,21226)
		if queststatus == -1 or queststatus == 0 then
			doPlayerSendTextMessage(cid,22,"You have found a giant apes hair.")
                        doSendMagicEffect(topos,12)
			doPlayerAddItem(cid,4843,1)
			setPlayerStorageValue(cid,21226,1)

		else
			doPlayerSendTextMessage(cid,22,"Sorry, it is empty.")
		end


	else
		return false
	end
	return true
end