require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3020Trigger = class("Q3020Trigger", GadgetActorProxy)
Q3020Trigger.defaultAlias = "Q3020Trigger"
local Q3020ClientConfig = require("Quest/Client/Q3020ClientConfig")

local subIDs = Q3020ClientConfig.SubIDs
local npcs = Q3020ClientConfig.Npcs
local datas = Q3020ClientConfig.Datas

function Q3020Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3020Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3020Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 302002)
    self:DestroySelf()
end

function Q3020Trigger:TriggerOut()
    print("TriggerOut")
end

return Q3020Trigger
