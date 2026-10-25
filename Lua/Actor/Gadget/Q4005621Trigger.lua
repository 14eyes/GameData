require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005621Trigger = class("Q4005621Trigger", GadgetActorProxy)
Q4005621Trigger.defaultAlias = "Q4005621Trigger"
local Q40056ClientConfig = require("Quest/Client/Q40056ClientConfig")

local subIDs = Q40056ClientConfig.SubIDs
local npcs = Q40056ClientConfig.Npcs
local datas = Q40056ClientConfig.Datas

function Q4005621Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4005621Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4005621Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4005621)
    self:DestroySelf()
end

function Q4005621Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4005621Trigger
