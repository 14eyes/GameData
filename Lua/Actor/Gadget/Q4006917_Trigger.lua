require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006917_Trigger = class("Q4006917_Trigger", GadgetActorProxy)
Q4006917_Trigger.defaultAlias = "Q4006917_Trigger"
local Q40069ClientConfig = require("Quest/Client/Q40069ClientConfig")

local subIDs = Q40069ClientConfig.SubIDs
local npcs = Q40069ClientConfig.Npcs
local datas = Q40069ClientConfig.Datas

function Q4006917_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006917_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006917_Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4006917)
    self:DestroySelf()
end

function Q4006917_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4006917_Trigger
