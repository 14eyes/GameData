require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701408Trigger = class("Q701408Trigger", GadgetActorProxy)
Q701408Trigger.defaultAlias = "Q701408Trigger"
local Q7014ClientConfig = require("Quest/Client/Q7014ClientConfig")

local this
local subIDs = Q7014ClientConfig.SubIDs
local datas = Q7014ClientConfig.Datas
local npcs = Q7014ClientConfig.Npcs
local points = Q7014ClientConfig.Points

function Q701408Trigger:OnPostDataPrepare()
    print("Q701408Trigger - OnPostDataPrepare")
    this = self
end

function Q701408Trigger:OnPostComponentPrepare()
    print("Q701408Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7014)
end

function Q701408Trigger:TriggerIn()
    print("Q701408Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {701408})
    this:DestroySelf()
end

function Q701408Trigger:PreTriggerIn()
    print("Q701408Trigger - PreTriggerIn")
end

function Q701408Trigger:LightUpTriggerIn()
    print("Q701408Trigger - LightUpTriggerIn")
end

function Q701408Trigger:TriggerOut()
    print("Q701408Trigger - TriggerOut")
end

return Q701408Trigger
