require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701232Trigger = class("Q701232Trigger", GadgetActorProxy)
Q701232Trigger.defaultAlias = "Q701232Trigger"
local Q7012ClientConfig = require("Quest/Client/Q7012ClientConfig")

local this
local subIDs = Q7012ClientConfig.SubIDs
local datas = Q7012ClientConfig.Datas
local npcs = Q7012ClientConfig.Npcs
local points = Q7012ClientConfig.Points

function Q701232Trigger:OnPostDataPrepare()
    print("Q701232Trigger - OnPostDataPrepare")
    this = self
end

function Q701232Trigger:OnPostComponentPrepare()
    print("Q701232Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(19.445007, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7012)
end

function Q701232Trigger:TriggerIn()
    print("Q701232Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {701232})
    this:DestroySelf()
end

function Q701232Trigger:PreTriggerIn()
    print("Q701232Trigger - PreTriggerIn")
end

function Q701232Trigger:LightUpTriggerIn()
    print("Q701232Trigger - LightUpTriggerIn")
end

function Q701232Trigger:TriggerOut()
    print("Q701232Trigger - TriggerOut")
end

return Q701232Trigger
