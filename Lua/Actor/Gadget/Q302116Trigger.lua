require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q302116Trigger = class("Q302116Trigger", GadgetActorProxy)
Q302116Trigger.defaultAlias = "Q302116Trigger"
local Q3021ClientConfig = require("Quest/Client/Q3021ClientConfig")

local subIDs = Q3021ClientConfig.SubIDs
local npcs = Q3021ClientConfig.Npcs
local datas = Q3021ClientConfig.Datas

function Q302116Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q302116Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q302116Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 302116)
    self:DestroySelf()
end

function Q302116Trigger:TriggerOut()
    print("TriggerOut")
end

return Q302116Trigger
