require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3014GuardMerchantTrigger = class("Q3014GuardMerchantTrigger", GadgetActorProxy)
Q3014GuardMerchantTrigger.defaultAlias = "Q3014GuardMerchantTrigger"
local Q3014ClientConfig = require("Quest/Client/Q3014ClientConfig")

local subIDs = Q3014ClientConfig.SubIDs
local npcs = Q3014ClientConfig.Npcs
local datas = Q3014ClientConfig.Datas

function Q3014GuardMerchantTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3014GuardMerchantTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3014GuardMerchantTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3014"):RequestInteraction(npcs.Npc12657Data.alias)
    self:DestroySelf()
end

function Q3014GuardMerchantTrigger:TriggerOut()
    print("TriggerOut")
end

return Q3014GuardMerchantTrigger
