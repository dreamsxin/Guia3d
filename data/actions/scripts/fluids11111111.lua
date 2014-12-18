-- fluids by atolon --

function onUse(cid, item, frompos, item2, topos)
	-- itemid means that is a creature
	if item2.itemid == 1 then
		if item.type == 0 then
			doPlayerSendCancel(cid,"It is empty.")
		else
			if item2.uid == cid then
				doChangeTypeItem(item.uid,0)
				if item.type == 2 then
					doCreatureSay(cid,"it was blood....",19)
				elseif item.type == 4 then
					doCreatureSay(cid,"it was slime!!",19)
                                        doSendMagicEffect(topos,8)
				elseif item.type == 3 then
					doCreatureSay(cid,"hit! hit! fresh beer!!",19)
				elseif item.type == 5 then
					doCreatureSay(cid,"it was fresh lemonade!!",19)
				elseif item.type == 11 then
					doCreatureSay(cid,"arrg is oil!!",19)
				elseif item.type == 15 then
					doCreatureSay(cid,"hit! hit! is wine",19)
				elseif item.type == 6 then
					doCreatureSay(cid,"ohh is milk!",19)
				elseif item.type == 10 then
					doPlayerAddHealth(cid,30)
                                        doSendMagicEffect(topos,12)
				elseif item.type == 13 then
					doCreatureSay(cid,"arrg is urine!",19)
				elseif item.type == 7 then
					doPlayerAddMana(cid,50)
                                        doSendMagicEffect(topos,12)
					doCreatureSay(cid,"Aaaaah...",19)
                                        doRemoveItem(item.uid,1)
				elseif item.type == 19 then
					doCreatureSay(cid,"arrg is mud!",19)
				elseif item.type == 26 then
					doCreatureSay(cid,"arrg hot on my mouth!",19)
                                        doSendMagicEffect(topos,6)
				elseif item.type == 28 then
					doCreatureSay(cid,"arrg swamp water!",19)
                                        doSendMagicEffect(topos,8)
				elseif item.type == 27 then
					doCreatureSay(cid,"rum! rum! the bottle of rum!!",19)
				else
					doCreatureSay(cid,"Gulp.",19)
				end
			else
				doChangeTypeItem(item.uid,0)
				splash = doCreateItem(2025,item.type,topos)
				doDecayItem(splash)
			end
		end
--water--
	elseif (item2.itemid >= 490 and item2.itemid <= 517) or 
		(item2.itemid >= 618 and item2.itemid <= 629) or 
		item2.itemid == 1368 or item2.itemid == 1369 or
		(item2.itemid >= 4828 and item2.itemid <= 4831) or
		(item2.itemid >= 5739 and item2.itemid <= 5740) or
                (item2.itemid >= 618 and item2.itemid <= 629) or
                (item2.itemid >= 4644 and item2.itemid <= 4663) or
		(item2.itemid == 6390) then
		doChangeTypeItem(item.uid,1)

--mud--
	elseif item2.itemid == 103 then
		doChangeTypeItem(item.uid,19)
--lava--
	elseif (item2.itemid >= 598 and item2.itemid < 601) or item2.itemid == 1509 or
               (item2.itemid >= 518 and item2.itemid <= 529) then
		doChangeTypeItem(item.uid,26)
--mud--
	elseif (item2.itemid >= 351 and item2.itemid <= 355) then
		doChangeTypeItem(item.uid,19)

--swamp--
	elseif (item2.itemid >= 602 and item2.itemid <= 605) or
               (item2.itemid >= 4691 and item2.itemid <= 4755) or
               item2.itemid == 4758 then
		doChangeTypeItem(item.uid,4)
--cask--
	elseif item2.itemid == 1771 then
		doChangeTypeItem(item.uid,1)  --water--
	elseif item2.itemid == 1772 then
		doChangeTypeItem(item.uid,3)  --beer--
	elseif item2.itemid == 1773 then
		doChangeTypeItem(item.uid,15) --wine--
	elseif item2.itemid == 5539 then
		doChangeTypeItem(item.uid,27)  --rum--

--end cask--

-- Blood/swamp in decayto corpse --NO FINISH--

	elseif item2.itemid > 2806 and item2.itemid < 3132 or
               (item2.itemid >= 4251 and item2.itemid <= 4327) then
		doChangeTypeItem(item.uid,2)

--rum------
elseif item2.itemid == 5513 or item2.itemid == 5514 then 		
doChangeTypeItem(item.uid, 27)

-- End Blood/swamp in decayto corpse --NO FINISH--

	else
		if item.type == 0 then
			doPlayerSendCancel(cid,"It is empty.")
		else
			doChangeTypeItem(item.uid,0)
			splash = doCreateItem(2025,item.type,topos)
			doDecayItem(splash)
		end
	end
	
	return true
end