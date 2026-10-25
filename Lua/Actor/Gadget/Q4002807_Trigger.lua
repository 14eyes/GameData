require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4002807_Trigger = class("Q4002807_Trigger", GadgetActorProxy)
Q4002807_Trigger.defaultAlias = "Q4002807_Trigger"
local Q40028ClientConfig = require("Quest/Client/Q40028ClientConfig")

local subIDs = Q40028ClientConfig.SubIDs
local npcs = Q40028ClientConfig.Npcs
local gadgets = Q40028ClientConfig.Gadgets
local datas = Q40028ClientConfig.Datas

function Q4002807_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4002807_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(4, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4002807_Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40028"):RequestInteraction(npcs.AmborData.alias)
    self:DestroySelf()
end

function Q4002807_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4002807_Trigger
