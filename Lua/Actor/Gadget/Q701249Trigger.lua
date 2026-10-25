require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701249Trigger = class("Q701249Trigger", GadgetActorProxy)
Q701249Trigger.defaultAlias = "Q701249Trigger"
local Q7012ClientConfig = require("Quest/Client/Q7012ClientConfig")

local this
local subIDs = Q7012ClientConfig.SubIDs
local datas = Q7012ClientConfig.Datas
local npcs = Q7012ClientConfig.Npcs
local points = Q7012ClientConfig.Points

function Q701249Trigger:OnPostDataPrepare()
    print("Q701249Trigger - OnPostDataPrepare")
    this = self
end

function Q701249Trigger:OnPostComponentPrepare()
    print("Q701249Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(26, 5, 5, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7012)
end

function Q701249Trigger:TriggerIn()
    print("Q701249Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {701249})
    this:DestroySelf()
end

function Q701249Trigger:PreTriggerIn()
    print("Q701249Trigger - PreTriggerIn")
end

function Q701249Trigger:LightUpTriggerIn()
    print("Q701249Trigger - LightUpTriggerIn")
end

function Q701249Trigger:TriggerOut()
    print("Q701249Trigger - TriggerOut")
end

return Q701249Trigger
