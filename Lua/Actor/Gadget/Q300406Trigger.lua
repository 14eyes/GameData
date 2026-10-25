require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q300406Trigger = class("Q300406Trigger", GadgetActorProxy)
Q300406Trigger.defaultAlias = "Q300406Trigger"
local Q3004ClientConfig = require("Quest/Client/Q3004ClientConfig")

local subIDs = Q3004ClientConfig.SubIDs
local npcs = Q3004ClientConfig.Npcs
local datas = Q3004ClientConfig.Datas

function Q300406Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q300406Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q300406Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3004"):RequestInteraction(npcs.Npc12565Data.alias)
    self:DestroySelf()
end

function Q300406Trigger:TriggerOut()
    print("TriggerOut")
end

return Q300406Trigger
