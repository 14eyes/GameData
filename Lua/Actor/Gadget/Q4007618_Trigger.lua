require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007618_Trigger = class("Q4007618_Trigger", GadgetActorProxy)
Q4007618_Trigger.defaultAlias = "Q4007618_Trigger"
local Q40076ClientConfig = require("Quest/Client/Q40076ClientConfig")

local subIDs = Q40076ClientConfig.SubIDs
local npcs = Q40076ClientConfig.Npcs
local datas = Q40076ClientConfig.Datas

function Q4007618_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007618_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007618_Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4007618)
    self:DestroySelf()
end

function Q4007618_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4007618_Trigger
