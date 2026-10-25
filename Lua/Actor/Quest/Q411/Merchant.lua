require("Actor/ActorCommon")
local SQ411 = require("Actor/Quest/SQ411")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local Merchant = class("Merchant", NpcActorProxy)
Merchant.defaultAlias = "Merchant"
local merchantData = require("Actor/Quest/Q411/Q411Config").MerchantData

function Merchant:PreGetAlias()
    return merchantData.Merchant
end

function Merchant:Start()
    print("start!Merchant")
end

function Merchant:OnDestroy()
    print("Merchant " .. merchantData.MerchantID .. " destroied")
end

return Merchant
