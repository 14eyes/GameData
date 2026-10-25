require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3007TriggerMerchantB = class("Q3007TriggerMerchantB", GadgetActorProxy)
Q3007TriggerMerchantB.defaultAlias = "Q3007TriggerMerchantB"
local Q3007ClientConfig = require("Quest/Client/Q3007ClientConfig")

local subIDs = Q3007ClientConfig.SubIDs
local npcs = Q3007ClientConfig.Npcs
local datas = Q3007ClientConfig.Datas

function Q3007TriggerMerchantB:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3007TriggerMerchantB:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3007TriggerMerchantB:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3007"):RequestInteraction(npcs.Npc4018Data.alias)
    self:DestroySelf()
end

function Q3007TriggerMerchantB:TriggerOut()
    print("TriggerOut")
end

return Q3007TriggerMerchantB
