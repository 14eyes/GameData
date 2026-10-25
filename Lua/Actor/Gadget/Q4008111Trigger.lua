require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4008111Trigger = class("Q4008111Trigger", GadgetActorProxy)
Q4008111Trigger.defaultAlias = "Q4008111Trigger"
local Q40081ClientConfig = require("Quest/Client/Q40081ClientConfig")

local subIDs = Q40081ClientConfig.SubIDs
local npcs = Q40081ClientConfig.Npcs
local datas = Q40081ClientConfig.Datas

function Q4008111Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4008111Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4008111Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4008111)
    self:DestroySelf()
end

function Q4008111Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4008111Trigger
