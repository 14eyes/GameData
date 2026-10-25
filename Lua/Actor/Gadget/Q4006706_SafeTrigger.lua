require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006706_SafeTrigger = class("Q4006706_SafeTrigger", GadgetActorProxy)
Q4006706_SafeTrigger.defaultAlias = "Q4006706_SafeTrigger"
local Q40067ClientConfig = require("Quest/Client/Q40067ClientConfig")

local subIDs = Q40067ClientConfig.SubIDs
local npcs = Q40067ClientConfig.Npcs
local datas = Q40067ClientConfig.Datas

function Q4006706_SafeTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006706_SafeTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(35, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006706_SafeTrigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4006706)
    self:DestroySelf()
end

function Q4006706_SafeTrigger:TriggerOut()
    print("TriggerOut")
end

return Q4006706_SafeTrigger
