require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005605Trigger = class("Q4005605Trigger", GadgetActorProxy)
Q4005605Trigger.defaultAlias = "Q4005605Trigger"
local Q40056ClientConfig = require("Quest/Client/Q40056ClientConfig")

local subIDs = Q40056ClientConfig.SubIDs
local npcs = Q40056ClientConfig.Npcs
local datas = Q40056ClientConfig.Datas

function Q4005605Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4005605Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4005605Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4005605)
    self:DestroySelf()
end

function Q4005605Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4005605Trigger
