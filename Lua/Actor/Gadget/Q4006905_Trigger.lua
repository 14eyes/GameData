require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006905_Trigger = class("Q4006905_Trigger", GadgetActorProxy)
Q4006905_Trigger.defaultAlias = "Q4006905_Trigger"
local Q40069ClientConfig = require("Quest/Client/Q40069ClientConfig")

local subIDs = Q40069ClientConfig.SubIDs
local npcs = Q40069ClientConfig.Npcs
local datas = Q40069ClientConfig.Datas

function Q4006905_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006905_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006905_Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4006905)
    self:DestroySelf()
end

function Q4006905_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4006905_Trigger
