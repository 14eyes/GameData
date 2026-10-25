require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701225Trigger = class("Q701225Trigger", GadgetActorProxy)
Q701225Trigger.defaultAlias = "Q701225Trigger"
local Q7012ClientConfig = require("Quest/Client/Q7012ClientConfig")

local this
local subIDs = Q7012ClientConfig.SubIDs
local datas = Q7012ClientConfig.Datas
local npcs = Q7012ClientConfig.Npcs
local points = Q7012ClientConfig.Points

function Q701225Trigger:OnPostDataPrepare()
    print("Q701225Trigger - OnPostDataPrepare")
    this = self
end

function Q701225Trigger:OnPostComponentPrepare()
    print("Q701225Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(7.1126723, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7012)
end

function Q701225Trigger:TriggerIn()
    print("Q701225Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {701225})
    this:DestroySelf()
end

function Q701225Trigger:PreTriggerIn()
    print("Q701225Trigger - PreTriggerIn")
end

function Q701225Trigger:LightUpTriggerIn()
    print("Q701225Trigger - LightUpTriggerIn")
end

function Q701225Trigger:TriggerOut()
    print("Q701225Trigger - TriggerOut")
end

return Q701225Trigger
