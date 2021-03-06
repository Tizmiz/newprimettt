ITEM.Name = '3D Glasses'
ITEM.Price = 2000
ITEM.Model = 'models/gmod_tower/3dglasses.mdl'
ITEM.Attachment = 'eyes'

function ITEM:OnEquip(ply, modifications)
	ply:PS_AddClientsideModel(self.ID)
end

function ITEM:OnHolster(ply)
	ply:PS_RemoveClientsideModel(self.ID)
end

function ITEM:ModifyClientsideModel(ply, model, pos, ang)
	pos = pos + (ang:Forward() * -1.4) + (ang:Up() * -0.3)	
	return model, pos, ang
end
