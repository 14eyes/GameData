require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006613_Trigger = class("Q4006613_Trigger", GadgetActorProxy)
Q4006613_Trigger.defaultAlias = "Q4006613_Trigger"
local Q40066ClientConfig = require("Quest/Client/Q40066ClientConfig")

local subIDs = Q40066ClientConfig.SubIDs
local npcs = Q40066ClientConfig.Npcs
local datas = Q40066ClientConfig.Datas

function Q4006613_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006613_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(35, 65, 40, false, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006613_Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4006613)
    self:DestroySelf()
end

function Q4006613_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4006613_Trigger
