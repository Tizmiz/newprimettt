ITEM.Name = 'Chell (Beta Testers)'
ITEM.Price = 0
ITEM.Model = 'models/player/p2_chell.mdl'
ITEM.AllowedUserGroups = { "developer" }

function ITEM:OnEquip(ply, modifications)
	if not ply._OldModel then
		ply._OldModel = ply:GetModel()
	end
	
	timer.Simple(1, function() ply:SetModel(self.Model) end)
end

function ITEM:OnHolster(ply)
	if ply._OldModel then
		ply:SetModel(ply._OldModel)
	end
end