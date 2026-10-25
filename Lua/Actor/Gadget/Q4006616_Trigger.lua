require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006616_Trigger = class("Q4006616_Trigger", GadgetActorProxy)
Q4006616_Trigger.defaultAlias = "Q4006616_Trigger"
local Q40066ClientConfig = require("Quest/Client/Q40066ClientConfig")

local subIDs = Q40066ClientConfig.SubIDs
local npcs = Q40066ClientConfig.Npcs
local datas = Q40066ClientConfig.Datas

function Q4006616_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006616_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006616_Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4006616)
    self:DestroySelf()
end

function Q4006616_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4006616_Trigger
