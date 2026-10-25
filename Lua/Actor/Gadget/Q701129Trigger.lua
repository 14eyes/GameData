require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701129Trigger = class("Q701129Trigger", GadgetActorProxy)
Q701129Trigger.defaultAlias = "Q701129Trigger"
local Q7011ClientConfig = require("Quest/Client/Q7011ClientConfig")

local this
local subIDs = Q7011ClientConfig.SubIDs
local datas = Q7011ClientConfig.Datas
local npcs = Q7011ClientConfig.Npcs
local points = Q7011ClientConfig.Points

function Q701129Trigger:OnPostDataPrepare()
    print("Q701129Trigger - OnPostDataPrepare")
    this = self
end

function Q701129Trigger:OnPostComponentPrepare()
    print("Q701129Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5.5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7011)
end

function Q701129Trigger:TriggerIn()
    print("Q701129Trigger - TriggerIn")
    actorUtils.ShowReminder(1004950006)
    this:DestroySelf()
end

function Q701129Trigger:PreTriggerIn()
    print("Q701129Trigger - PreTriggerIn")
end

function Q701129Trigger:LightUpTriggerIn()
    print("Q701129Trigger - LightUpTriggerIn")
end

function Q701129Trigger:TriggerOut()
    print("Q701129Trigger - TriggerOut")
end

return Q701129Trigger
