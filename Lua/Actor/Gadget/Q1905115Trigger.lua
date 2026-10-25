require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1905115Trigger = class("Q1905115Trigger", GadgetActorProxy)
Q1905115Trigger.defaultAlias = "Q1905115Trigger"
local Q19051ClientConfig = require("Quest/Client/Q19051ClientConfig")

local subIDs = Q19051ClientConfig.SubIDs
local npcs = Q19051ClientConfig.Npcs
local datas = Q19051ClientConfig.Datas

function Q1905115Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1905115Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1905115Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19051"):RequestInteraction(npcs.Coop_BeidouData.alias)
    self:DestroySelf()
end

function Q1905115Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1905115Trigger
