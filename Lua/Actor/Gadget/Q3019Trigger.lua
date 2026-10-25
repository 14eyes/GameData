require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3019Trigger = class("Q3019Trigger", GadgetActorProxy)
Q3019Trigger.defaultAlias = "Q3019Trigger"
local Q3019ClientConfig = require("Quest/Client/Q3019ClientConfig")

local subIDs = Q3019ClientConfig.SubIDs
local npcs = Q3019ClientConfig.Npcs
local datas = Q3019ClientConfig.Datas

function Q3019Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3019Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3019Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 301907)
    self:DestroySelf()
end

function Q3019Trigger:TriggerOut()
    print("TriggerOut")
end

return Q3019Trigger
