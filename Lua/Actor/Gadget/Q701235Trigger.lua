require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701235Trigger = class("Q701235Trigger", GadgetActorProxy)
Q701235Trigger.defaultAlias = "Q701235Trigger"
local Q7012ClientConfig = require("Quest/Client/Q7012ClientConfig")

local this
local subIDs = Q7012ClientConfig.SubIDs
local datas = Q7012ClientConfig.Datas
local npcs = Q7012ClientConfig.Npcs
local points = Q7012ClientConfig.Points

function Q701235Trigger:OnPostDataPrepare()
    print("Q701235Trigger - OnPostDataPrepare")
    this = self
end

function Q701235Trigger:OnPostComponentPrepare()
    print("Q701235Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(7.3559003, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7012)
end

function Q701235Trigger:TriggerIn()
    print("Q701235Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {701235})
    this:DestroySelf()
end

function Q701235Trigger:PreTriggerIn()
    print("Q701235Trigger - PreTriggerIn")
end

function Q701235Trigger:LightUpTriggerIn()
    print("Q701235Trigger - LightUpTriggerIn")
end

function Q701235Trigger:TriggerOut()
    print("Q701235Trigger - TriggerOut")
end

return Q701235Trigger
