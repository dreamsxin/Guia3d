function onUse(cid, item, frompos, item2, topos)

al = getPlayerAccess(cid)
if al > 6 then
	if item.itemid == 2310 then
		doSendMagicEffect(topos,2)
		doRemoveItem(item2.uid,1)
	end
	return true
else
	return false
end
end