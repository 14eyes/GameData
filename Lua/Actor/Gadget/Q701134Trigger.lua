require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701134Trigger = class("Q701134Trigger", GadgetActorProxy)
Q701134Trigger.defaultAlias = "Q701134Trigger"
local Q7011ClientConfig = require("Quest/Client/Q7011ClientConfig")

local this
local subIDs = Q7011ClientConfig.SubIDs
local datas = Q7011ClientConfig.Datas
local npcs = Q7011ClientConfig.Npcs
local points = Q7011ClientConfig.Points

function Q701134Trigger:OnPostDataPrepare()
    print("Q701134Trigger - OnPostDataPrepare")
    this = self
end

function Q701134Trigger:OnPostComponentPrepare()
    print("Q701134Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(8.22663, 15.373028, 15.408354, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7011)
end

function Q701134Trigger:TriggerIn()
    print("Q701134Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {701134})
    this:DestroySelf()
end

function Q701134Trigger:PreTriggerIn()
    print("Q701134Trigger - PreTriggerIn")
end

function Q701134Trigger:LightUpTriggerIn()
    print("Q701134Trigger - LightUpTriggerIn")
end

function Q701134Trigger:TriggerOut()
    print("Q701134Trigger - TriggerOut")
end

return Q701134Trigger
