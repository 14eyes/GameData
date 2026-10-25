require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q300109Trigger = class("Q300109Trigger", GadgetActorProxy)
Q300109Trigger.defaultAlias = "Q300109Trigger"
local Q3001ClientConfig = require("Quest/Client/Q3001ClientConfig")

local subIDs = Q3001ClientConfig.SubIDs
local npcs = Q3001ClientConfig.Npcs
local datas = Q3001ClientConfig.Datas

function Q300109Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q300109Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q300109Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 300109)
    self:DestroySelf()
end

function Q300109Trigger:TriggerOut()
    print("TriggerOut")
end

return Q300109Trigger
