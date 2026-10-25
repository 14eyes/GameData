require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19136Trigger = class("Q19136Trigger", GadgetActorProxy)
Q19136Trigger.defaultAlias = "Q19136Trigger"
local Q19136ClientConfig = require("Quest/Client/Q19136ClientConfig")

local subIDs = Q19136ClientConfig.SubIDs
local npcs = Q19136ClientConfig.Npcs
local datas = Q19136ClientConfig.Datas

function Q19136Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19136Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19136Trigger:TriggerIn()
    print("TriggerIn")
end

function Q19136Trigger:TriggerOut()
    print("TriggerOut")
    local actor = actorMgr:GetActor("19136")
    actor:FinishQuestID(true, 1913604)
    actor:FinishQuestID(true, 1913605)
    actor:FinishQuestID(true, 1913606)
    actor:FinishQuestID(true, 1913607)
    self:DestroySelf()
end

return Q19136Trigger
