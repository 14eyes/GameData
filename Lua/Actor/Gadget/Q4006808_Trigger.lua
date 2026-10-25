require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006808_Trigger = class("Q4006808_Trigger", GadgetActorProxy)
Q4006808_Trigger.defaultAlias = "Q4006808_Trigger"
local Q40068ClientConfig = require("Quest/Client/Q40068ClientConfig")

local subIDs = Q40068ClientConfig.SubIDs
local npcs = Q40068ClientConfig.Npcs
local datas = Q40068ClientConfig.Datas

function Q4006808_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006808_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(47, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006808_Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4006808)
    self:DestroySelf()
end

function Q4006808_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4006808_Trigger
