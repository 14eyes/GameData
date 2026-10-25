require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701139Trigger = class("Q701139Trigger", GadgetActorProxy)
Q701139Trigger.defaultAlias = "Q701139Trigger"
local Q7011ClientConfig = require("Quest/Client/Q7011ClientConfig")

local this
local subIDs = Q7011ClientConfig.SubIDs
local datas = Q7011ClientConfig.Datas
local npcs = Q7011ClientConfig.Npcs
local points = Q7011ClientConfig.Points

function Q701139Trigger:OnPostDataPrepare()
    print("Q701139Trigger - OnPostDataPrepare")
    this = self
end

function Q701139Trigger:OnPostComponentPrepare()
    print("Q701139Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7011)
end

function Q701139Trigger:TriggerIn()
    print("Q701139Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {701139})
    this:DestroySelf()
end

function Q701139Trigger:PreTriggerIn()
    print("Q701139Trigger - PreTriggerIn")
end

function Q701139Trigger:LightUpTriggerIn()
    print("Q701139Trigger - LightUpTriggerIn")
end

function Q701139Trigger:TriggerOut()
    print("Q701139Trigger - TriggerOut")
end

return Q701139Trigger
