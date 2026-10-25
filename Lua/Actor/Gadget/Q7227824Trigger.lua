require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7227824Trigger = class("Q7227824Trigger", GadgetActorProxy)
Q7227824Trigger.defaultAlias = "Q7227824Trigger"
local Q72278ClientConfig = require("Quest/Client/Q72278ClientConfig")

local subIDs = Q72278ClientConfig.SubIDs
local npcs = Q72278ClientConfig.Npcs
local datas = Q72278ClientConfig.Datas

function Q7227824Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7227824Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7227824Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7227824)
    self:DestroySelf()
end

function Q7227824Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7227824Trigger
