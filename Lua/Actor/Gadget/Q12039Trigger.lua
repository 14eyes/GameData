require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12039Trigger = class("Q12039Trigger", GadgetActorProxy)
Q12039Trigger.defaultAlias = "Q12039Trigger"
local Q12039ClientConfig = require("Quest/Client/Q12039ClientConfig")

local subIDs = Q12039ClientConfig.SubIDs
local npcs = Q12039ClientConfig.Npcs

function Q12039Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12039Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q12039Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1203915)
    self:DestroySelf()
end

function Q12039Trigger:TriggerOut()
    print("TriggerOut")
end

return Q12039Trigger
