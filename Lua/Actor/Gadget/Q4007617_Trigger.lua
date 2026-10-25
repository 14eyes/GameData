require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007617_Trigger = class("Q4007617_Trigger", GadgetActorProxy)
Q4007617_Trigger.defaultAlias = "Q4007617_Trigger"
local Q40076ClientConfig = require("Quest/Client/Q40076ClientConfig")

local subIDs = Q40076ClientConfig.SubIDs
local npcs = Q40076ClientConfig.Npcs
local datas = Q40076ClientConfig.Datas

function Q4007617_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007617_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007617_Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4007617)
    self:DestroySelf()
end

function Q4007617_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4007617_Trigger
