require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701247Trigger = class("Q701247Trigger", GadgetActorProxy)
Q701247Trigger.defaultAlias = "Q701247Trigger"
local Q7012ClientConfig = require("Quest/Client/Q7012ClientConfig")

local this
local subIDs = Q7012ClientConfig.SubIDs
local datas = Q7012ClientConfig.Datas
local npcs = Q7012ClientConfig.Npcs
local points = Q7012ClientConfig.Points

function Q701247Trigger:OnPostDataPrepare()
    print("Q701247Trigger - OnPostDataPrepare")
    this = self
end

function Q701247Trigger:OnPostComponentPrepare()
    print("Q701247Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(2.85, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7012)
end

function Q701247Trigger:TriggerIn()
    print("Q701247Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {701247})
    this:DestroySelf()
end

function Q701247Trigger:PreTriggerIn()
    print("Q701247Trigger - PreTriggerIn")
end

function Q701247Trigger:LightUpTriggerIn()
    print("Q701247Trigger - LightUpTriggerIn")
end

function Q701247Trigger:TriggerOut()
    print("Q701247Trigger - TriggerOut")
end

return Q701247Trigger
