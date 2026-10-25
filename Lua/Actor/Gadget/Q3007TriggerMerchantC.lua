require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3007TriggerMerchantC = class("Q3007TriggerMerchantC", GadgetActorProxy)
Q3007TriggerMerchantC.defaultAlias = "Q3007TriggerMerchantC"
local Q3007ClientConfig = require("Quest/Client/Q3007ClientConfig")

local subIDs = Q3007ClientConfig.SubIDs
local npcs = Q3007ClientConfig.Npcs
local datas = Q3007ClientConfig.Datas

function Q3007TriggerMerchantC:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3007TriggerMerchantC:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3007TriggerMerchantC:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3007"):RequestInteraction(npcs.Npc12555Data.alias)
    self:DestroySelf()
end

function Q3007TriggerMerchantC:TriggerOut()
    print("TriggerOut")
end

return Q3007TriggerMerchantC
