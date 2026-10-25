require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q79029Trigger1 = class("Q79029Trigger1", GadgetActorProxy)
Q79029Trigger1.defaultAlias = "Q79029Trigger1"
local Q79029ClientConfig = require("Quest/Client/Q79029ClientConfig")

local subIDs = Q79029ClientConfig.SubIDs
local datas = Q79029ClientConfig.Datas

function Q79029Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q79029Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q79029Trigger1:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7902904)
    self:DestroySelf()
end

function Q79029Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q79029Trigger1
