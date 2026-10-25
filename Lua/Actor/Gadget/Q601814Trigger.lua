require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601814Trigger = class("Q601814Trigger", GadgetActorProxy)
Q601814Trigger.defaultAlias = "Q601814Trigger"
local Q6018ClientConfig = require("Quest/Client/Q6018ClientConfig")

local this
local subIDs = Q6018ClientConfig.SubIDs
local datas = Q6018ClientConfig.Datas
local npcs = Q6018ClientConfig.Npcs
local points = Q6018ClientConfig.Points

function Q601814Trigger:OnPostDataPrepare()
    print("Q601814Trigger - OnPostDataPrepare")
    this = self
end

function Q601814Trigger:OnPostComponentPrepare()
    print("Q601814Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6018)
end

function Q601814Trigger:TriggerIn()
    print("Q601814Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 601814)
    this:DestroySelf()
end

function Q601814Trigger:PreTriggerIn()
    print("Q601814Trigger - PreTriggerIn")
end

function Q601814Trigger:LightUpTriggerIn()
    print("Q601814Trigger - LightUpTriggerIn")
end

function Q601814Trigger:TriggerOut()
    print("Q601814Trigger - TriggerOut")
end

return Q601814Trigger
