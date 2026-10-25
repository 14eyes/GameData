require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2300415Trigger = class("Q2300415Trigger", GadgetActorProxy)
Q2300415Trigger.defaultAlias = "Q2300415Trigger"
local Q23004ClientConfig = require("Quest/Client/Q23004ClientConfig")

local subIDs = Q23004ClientConfig.SubIDs
local npcs = Q23004ClientConfig.Npcs
local datas = Q23004ClientConfig.Datas

function Q2300415Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2300415Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q2300415Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 2300415)
    self:DestroySelf()
end

function Q2300415Trigger:TriggerOut()
    print("TriggerOut")
end

return Q2300415Trigger
