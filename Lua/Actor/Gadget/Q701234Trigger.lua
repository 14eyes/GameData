require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701234Trigger = class("Q701234Trigger", GadgetActorProxy)
Q701234Trigger.defaultAlias = "Q701234Trigger"
local Q7012ClientConfig = require("Quest/Client/Q7012ClientConfig")

local this
local subIDs = Q7012ClientConfig.SubIDs
local datas = Q7012ClientConfig.Datas
local npcs = Q7012ClientConfig.Npcs
local points = Q7012ClientConfig.Points

function Q701234Trigger:OnPostDataPrepare()
    print("Q701234Trigger - OnPostDataPrepare")
    this = self
end

function Q701234Trigger:OnPostComponentPrepare()
    print("Q701234Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7012)
end

function Q701234Trigger:TriggerIn()
    print("Q701234Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {701234})
    this:DestroySelf()
end

function Q701234Trigger:PreTriggerIn()
    print("Q701234Trigger - PreTriggerIn")
end

function Q701234Trigger:LightUpTriggerIn()
    print("Q701234Trigger - LightUpTriggerIn")
end

function Q701234Trigger:TriggerOut()
    print("Q701234Trigger - TriggerOut")
end

return Q701234Trigger
