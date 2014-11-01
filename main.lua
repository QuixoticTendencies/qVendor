function SellGreys()
	local c,i,n,v=0;
	for b=0,4 do
		for s=1,GetContainerNumSlots(b) do
		i={GetContainerItemInfo(b,s)}n=i[7];
			if n and string.find(n,"9d9d9d") then
				v={GetItemInfo(n)}q=i[2]c=c+v[11]*q;
				UseContainerItem(b,s);
				print(n,q);
			end;
		end;
	end;
	print(GetCoinText(c));
end;

function GetNumberOfGreys()
	local q,c,i,n,v=0;
	for b=0,4 do
		for s=1,GetContainerNumSlots(b) do
		i={GetContainerItemInfo(b,s)}n=i[7];
			if n and string.find(n,"9d9d9d") then
				q = q + 1
			end;
		end;
	end;
	return q
end

function GetValueOfGreys()
	local c,i,n,v=0;
	for b=0,4 do
		for s=1,GetContainerNumSlots(b) do
		i={GetContainerItemInfo(b,s)}n=i[7];
			if n and string.find(n,"9d9d9d") then
				v={GetItemInfo(n)}q=i[2]c=c+v[11]*q;
			end;
		end;
	end;
	return GetCoinText(c);
end

function GetFirstGreyItem()
	local c,i,n,v=0;
	for b=0,4 do
		for s=1,GetContainerNumSlots(b) do
		i={GetContainerItemInfo(b,s)}n=i[7];
			if n and string.find(n,"9d9d9d") then
				v={GetItemInfo(n)}q=i[2]c=c+v[11]*q;
				return n
			end;
		end;
	end;
end
function GetLeftmostPopulatedBag()
	local b,i,s;
	for i = 4,0,-1 do
		if GetContainerNumSlots(i) == GetContainerNumFreeSlots(i) then
		else
			local fam = GetItemFamily(GetInventoryItemLink("Player", i + 19))
			if fam == 0 then
				return i
			end
		end
	end
end
function SellLeftmost()
	local c,i,n,v=0;
	local b = GetLeftmostPopulatedBag();
	for s=1,GetContainerNumSlots(b) do
		i={GetContainerItemInfo(b,s)}n=i[7];
		if n then
			v={GetItemInfo(n)}q=i[2]c=c+v[11]*q;
			UseContainerItem(b,s);
			print(n,q);
		end;
	end;
	print(GetCoinText(c));
end;
