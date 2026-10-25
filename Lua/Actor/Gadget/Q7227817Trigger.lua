require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7227817Trigger = class("Q7227817Trigger", GadgetActorProxy)
Q7227817Trigger.defaultAlias = "Q7227817Trigger"
local Q72278ClientConfig = require("Quest/Client/Q72278ClientConfig")

local subIDs = Q72278ClientConfig.SubIDs
local npcs = Q72278ClientConfig.Npcs
local datas = Q72278ClientConfig.Datas

function Q7227817Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7227817Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7227817Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7227817)
    self:DestroySelf()
end

function Q7227817Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7227817Trigger
