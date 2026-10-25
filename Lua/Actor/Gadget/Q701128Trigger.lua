require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701128Trigger = class("Q701128Trigger", GadgetActorProxy)
Q701128Trigger.defaultAlias = "Q701128Trigger"
local Q7011ClientConfig = require("Quest/Client/Q7011ClientConfig")

local this
local subIDs = Q7011ClientConfig.SubIDs
local datas = Q7011ClientConfig.Datas
local npcs = Q7011ClientConfig.Npcs
local points = Q7011ClientConfig.Points

function Q701128Trigger:OnPostDataPrepare()
    print("Q701128Trigger - OnPostDataPrepare")
    this = self
end

function Q701128Trigger:OnPostComponentPrepare()
    print("Q701128Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7011)
end

function Q701128Trigger:TriggerIn()
    print("Q701128Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {701128})
    this:DestroySelf()
end

function Q701128Trigger:PreTriggerIn()
    print("Q701128Trigger - PreTriggerIn")
end

function Q701128Trigger:LightUpTriggerIn()
    print("Q701128Trigger - LightUpTriggerIn")
end

function Q701128Trigger:TriggerOut()
    print("Q701128Trigger - TriggerOut")
end

return Q701128Trigger
