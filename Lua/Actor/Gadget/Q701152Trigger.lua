require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701152Trigger = class("Q701152Trigger", GadgetActorProxy)
Q701152Trigger.defaultAlias = "Q701152Trigger"
local Q7011ClientConfig = require("Quest/Client/Q7011ClientConfig")

local this
local subIDs = Q7011ClientConfig.SubIDs
local datas = Q7011ClientConfig.Datas
local npcs = Q7011ClientConfig.Npcs
local points = Q7011ClientConfig.Points

function Q701152Trigger:OnPostDataPrepare()
    print("Q701152Trigger - OnPostDataPrepare")
    this = self
end

function Q701152Trigger:OnPostComponentPrepare()
    print("Q701152Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7011)
end

function Q701152Trigger:TriggerIn()
    print("Q701152Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {701152})
    this:DestroySelf()
end

function Q701152Trigger:PreTriggerIn()
    print("Q701152Trigger - PreTriggerIn")
end

function Q701152Trigger:LightUpTriggerIn()
    print("Q701152Trigger - LightUpTriggerIn")
end

function Q701152Trigger:TriggerOut()
    print("Q701152Trigger - TriggerOut")
end

return Q701152Trigger
