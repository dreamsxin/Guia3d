-- druid enchanted --

function onUse(cid, item, frompos, item2, topos)
 if getPlayerLevel(cid) < 30 then
		doPlayerSendTextMessage(cid,22,"Sorry, you are under lvl 30.")
		return 1
	end

	if item2.itemid == 7516 or item2.itemid == 7517 or item2.itemid == 7518 or item2.itemid == 7519 then
               if getPlayerVocation(cid) == 2 or getPlayerVocation(cid) == 6 then
			doPlayerSendTextMessage(cid,22,"You make an enchanted over you item.")
			doPlayerAddItem(cid,7761,1)
                        doRemoveItem(item.uid,1)
                        doSendMagicEffect(topos,12)


		else
			doPlayerSendTextMessage(cid,22,"Sorry, Druids and Shaman can enchanted this object.")
		end


	else
		return 0
	end
	return 1
end