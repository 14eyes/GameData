require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701137Trigger = class("Q701137Trigger", GadgetActorProxy)
Q701137Trigger.defaultAlias = "Q701137Trigger"
local Q7011ClientConfig = require("Quest/Client/Q7011ClientConfig")

local this
local subIDs = Q7011ClientConfig.SubIDs
local datas = Q7011ClientConfig.Datas
local npcs = Q7011ClientConfig.Npcs
local points = Q7011ClientConfig.Points

function Q701137Trigger:OnPostDataPrepare()
    print("Q701137Trigger - OnPostDataPrepare")
    this = self
end

function Q701137Trigger:OnPostComponentPrepare()
    print("Q701137Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7011)
end

function Q701137Trigger:TriggerIn()
    print("Q701137Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {701137})
    this:DestroySelf()
end

function Q701137Trigger:PreTriggerIn()
    print("Q701137Trigger - PreTriggerIn")
end

function Q701137Trigger:LightUpTriggerIn()
    print("Q701137Trigger - LightUpTriggerIn")
end

function Q701137Trigger:TriggerOut()
    print("Q701137Trigger - TriggerOut")
end

return Q701137Trigger
