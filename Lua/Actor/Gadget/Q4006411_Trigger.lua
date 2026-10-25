require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006411_Trigger = class("Q4006411_Trigger", GadgetActorProxy)
Q4006411_Trigger.defaultAlias = "Q4006411_Trigger"
local Q40064ClientConfig = require("Quest/Client/Q40064ClientConfig")

local subIDs = Q40064ClientConfig.SubIDs
local npcs = Q40064ClientConfig.Npcs
local gadgets = Q40064ClientConfig.Gadgets
local datas = Q40064ClientConfig.Datas

function Q4006411_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006411_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCylinderShapeTrigger(13, 4.314697, false, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006411_Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4006411)
    self:DestroySelf()
end

function Q4006411_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4006411_Trigger
