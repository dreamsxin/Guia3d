-- 10k quest --

function onUse(cid, item, frompos, item2, topos)
 if getPlayerLevel(cid) < 30 then
		doPlayerSendTextMessage(cid,22,"Sorry, you are under lvl 30.")
		return 1
	end
	if item.uid == 2116 then
		queststatus = getPlayerStorageValue(cid,2116)
		if queststatus == -1 or queststatus == 0 then
			doPlayerSendTextMessage(cid,22,"You have found a carlin sword.")
                        doSendMagicEffect(topos,12)
			doPlayerAddItem(cid,2395,1)
			setPlayerStorageValue(cid,2116,1)

		else
			doPlayerSendTextMessage(cid,22,"Sorry, it is empty.")
		end


	else
		return 0
	end
	return 1
end
