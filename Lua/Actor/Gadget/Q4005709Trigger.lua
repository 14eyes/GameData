require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005709Trigger = class("Q4005709Trigger", GadgetActorProxy)
Q4005709Trigger.defaultAlias = "Q4005709Trigger"
local Q40057ClientConfig = require("Quest/Client/Q40057ClientConfig")

local subIDs = Q40057ClientConfig.SubIDs
local npcs = Q40057ClientConfig.Npcs
local datas = Q40057ClientConfig.Datas

function Q4005709Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4005709Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4005709Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4005709)
    self:DestroySelf()
end

function Q4005709Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4005709Trigger
