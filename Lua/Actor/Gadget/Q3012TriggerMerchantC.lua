require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3012TriggerMerchantC = class("Q3012TriggerMerchantC", GadgetActorProxy)
Q3012TriggerMerchantC.defaultAlias = "Q3012TriggerMerchantC"
local Q3012ClientConfig = require("Quest/Client/Q3012ClientConfig")

local subIDs = Q3012ClientConfig.SubIDs
local npcs = Q3012ClientConfig.Npcs
local datas = Q3012ClientConfig.Datas

function Q3012TriggerMerchantC:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3012TriggerMerchantC:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(12, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3012TriggerMerchantC:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3012"):RequestInteraction(npcs.Npc12653Data.alias)
    self:DestroySelf()
end

function Q3012TriggerMerchantC:TriggerOut()
    print("TriggerOut")
end

return Q3012TriggerMerchantC
