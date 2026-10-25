require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601810Trigger = class("Q601810Trigger", GadgetActorProxy)
Q601810Trigger.defaultAlias = "Q601810Trigger"
local Q6018ClientConfig = require("Quest/Client/Q6018ClientConfig")

local this
local subIDs = Q6018ClientConfig.SubIDs
local datas = Q6018ClientConfig.Datas
local npcs = Q6018ClientConfig.Npcs
local points = Q6018ClientConfig.Points

function Q601810Trigger:OnPostDataPrepare()
    print("Q601810Trigger - OnPostDataPrepare")
    this = self
end

function Q601810Trigger:OnPostComponentPrepare()
    print("Q601810Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6018)
end

function Q601810Trigger:TriggerIn()
    print("Q601810Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 601810)
    this:DestroySelf()
end

function Q601810Trigger:PreTriggerIn()
    print("Q601810Trigger - PreTriggerIn")
end

function Q601810Trigger:LightUpTriggerIn()
    print("Q601810Trigger - LightUpTriggerIn")
end

function Q601810Trigger:TriggerOut()
    print("Q601810Trigger - TriggerOut")
end

return Q601810Trigger
