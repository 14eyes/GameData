require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12037Trigger = class("Q12037Trigger", GadgetActorProxy)
Q12037Trigger.defaultAlias = "Q12037Trigger"
local Q12037ClientConfig = require("Quest/Client/Q12037ClientConfig")

local subIDs = Q12037ClientConfig.SubIDs
local npcs = Q12037ClientConfig.Npcs
local datas = Q12037ClientConfig.Datas

function Q12037Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12037Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q12037Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1203701)
    self:DestroySelf()
end

function Q12037Trigger:TriggerOut()
    print("TriggerOut")
end

return Q12037Trigger
