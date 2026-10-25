require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4002803_Trigger = class("Q4002803_Trigger", GadgetActorProxy)
Q4002803_Trigger.defaultAlias = "Q4002803_Trigger"
local Q40028ClientConfig = require("Quest/Client/Q40028ClientConfig")

local subIDs = Q40028ClientConfig.SubIDs
local npcs = Q40028ClientConfig.Npcs
local gadgets = Q40028ClientConfig.Gadgets
local datas = Q40028ClientConfig.Datas

function Q4002803_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4002803_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4002803_Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40028"):RequestInteraction(npcs.AmborData.alias)
    self:DestroySelf()
end

function Q4002803_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4002803_Trigger
