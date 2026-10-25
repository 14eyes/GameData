require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q79029Trigger = class("Q79029Trigger", GadgetActorProxy)
Q79029Trigger.defaultAlias = "Q79029Trigger"
local Q79029ClientConfig = require("Quest/Client/Q79029ClientConfig")

local subIDs = Q79029ClientConfig.SubIDs
local datas = Q79029ClientConfig.Datas

function Q79029Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q79029Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q79029Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7902901)
    self:DestroySelf()
end

function Q79029Trigger:TriggerOut()
    print("TriggerOut")
end

return Q79029Trigger
