require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701328Trigger = class("Q701328Trigger", GadgetActorProxy)
Q701328Trigger.defaultAlias = "Q701328Trigger"
local Q7013ClientConfig = require("Quest/Client/Q7013ClientConfig")

local this
local subIDs = Q7013ClientConfig.SubIDs
local datas = Q7013ClientConfig.Datas
local npcs = Q7013ClientConfig.Npcs
local points = Q7013ClientConfig.Points

function Q701328Trigger:OnPostDataPrepare()
    print("Q701328Trigger - OnPostDataPrepare")
    this = self
end

function Q701328Trigger:OnPostComponentPrepare()
    print("Q701328Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(17.816044, 12.043702, 7.6138325, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7013)
end

function Q701328Trigger:TriggerIn()
    print("Q701328Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {701328})
    this:DestroySelf()
end

function Q701328Trigger:PreTriggerIn()
    print("Q701328Trigger - PreTriggerIn")
end

function Q701328Trigger:LightUpTriggerIn()
    print("Q701328Trigger - LightUpTriggerIn")
end

function Q701328Trigger:TriggerOut()
    print("Q701328Trigger - TriggerOut")
end

return Q701328Trigger
