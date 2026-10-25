require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701238Trigger = class("Q701238Trigger", GadgetActorProxy)
Q701238Trigger.defaultAlias = "Q701238Trigger"
local Q7012ClientConfig = require("Quest/Client/Q7012ClientConfig")

local this
local subIDs = Q7012ClientConfig.SubIDs
local datas = Q7012ClientConfig.Datas
local npcs = Q7012ClientConfig.Npcs
local points = Q7012ClientConfig.Points

function Q701238Trigger:OnPostDataPrepare()
    print("Q701238Trigger - OnPostDataPrepare")
    this = self
end

function Q701238Trigger:OnPostComponentPrepare()
    print("Q701238Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7012)
end

function Q701238Trigger:TriggerIn()
    print("Q701238Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {701238})
    this:DestroySelf()
end

function Q701238Trigger:PreTriggerIn()
    print("Q701238Trigger - PreTriggerIn")
end

function Q701238Trigger:LightUpTriggerIn()
    print("Q701238Trigger - LightUpTriggerIn")
end

function Q701238Trigger:TriggerOut()
    print("Q701238Trigger - TriggerOut")
end

return Q701238Trigger
