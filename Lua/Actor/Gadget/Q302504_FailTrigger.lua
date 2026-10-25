require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q302504_FailTrigger = class("Q302504_FailTrigger", GadgetActorProxy)
Q302504_FailTrigger.defaultAlias = "Q302504_FailTrigger"
local Q3025ClientConfig = require("Quest/Client/Q3025ClientConfig")

local subIDs = Q3025ClientConfig.SubIDs
local npcs = Q3025ClientConfig.Npcs

function Q302504_FailTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q302504_FailTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q302504_FailTrigger:TriggerIn()
    print("TriggerIn")
end

function Q302504_FailTrigger:TriggerOut()
    print("TriggerOut")
    actorUtils.FinishQuestID(true, 302504)
end

return Q302504_FailTrigger
