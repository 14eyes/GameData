require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701120Trigger = class("Q701120Trigger", GadgetActorProxy)
Q701120Trigger.defaultAlias = "Q701120Trigger"
local Q7011ClientConfig = require("Quest/Client/Q7011ClientConfig")

local this
local subIDs = Q7011ClientConfig.SubIDs
local datas = Q7011ClientConfig.Datas
local npcs = Q7011ClientConfig.Npcs
local points = Q7011ClientConfig.Points

function Q701120Trigger:OnPostDataPrepare()
    print("Q701120Trigger - OnPostDataPrepare")
    this = self
end

function Q701120Trigger:OnPostComponentPrepare()
    print("Q701120Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7011)
end

function Q701120Trigger:TriggerIn()
    print("Q701120Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {701120})
    this:DestroySelf()
end

function Q701120Trigger:PreTriggerIn()
    print("Q701120Trigger - PreTriggerIn")
end

function Q701120Trigger:LightUpTriggerIn()
    print("Q701120Trigger - LightUpTriggerIn")
end

function Q701120Trigger:TriggerOut()
    print("Q701120Trigger - TriggerOut")
end

return Q701120Trigger
