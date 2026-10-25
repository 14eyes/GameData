require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006707_SafeTrigger = class("Q4006707_SafeTrigger", GadgetActorProxy)
Q4006707_SafeTrigger.defaultAlias = "Q4006707_SafeTrigger"
local Q40067ClientConfig = require("Quest/Client/Q40067ClientConfig")

local subIDs = Q40067ClientConfig.SubIDs
local npcs = Q40067ClientConfig.Npcs
local datas = Q40067ClientConfig.Datas

function Q4006707_SafeTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006707_SafeTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006707_SafeTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4006707)
    self:DestroySelf()
end

function Q4006707_SafeTrigger:TriggerOut()
    print("TriggerOut")
end

return Q4006707_SafeTrigger
