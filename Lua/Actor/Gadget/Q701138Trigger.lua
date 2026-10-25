require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701138Trigger = class("Q701138Trigger", GadgetActorProxy)
Q701138Trigger.defaultAlias = "Q701138Trigger"
local Q7011ClientConfig = require("Quest/Client/Q7011ClientConfig")

local this
local subIDs = Q7011ClientConfig.SubIDs
local datas = Q7011ClientConfig.Datas
local npcs = Q7011ClientConfig.Npcs
local points = Q7011ClientConfig.Points

function Q701138Trigger:OnPostDataPrepare()
    print("Q701138Trigger - OnPostDataPrepare")
    this = self
end

function Q701138Trigger:OnPostComponentPrepare()
    print("Q701138Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7011)
end

function Q701138Trigger:TriggerIn()
    print("Q701138Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {701138})
    this:DestroySelf()
end

function Q701138Trigger:PreTriggerIn()
    print("Q701138Trigger - PreTriggerIn")
end

function Q701138Trigger:LightUpTriggerIn()
    print("Q701138Trigger - LightUpTriggerIn")
end

function Q701138Trigger:TriggerOut()
    print("Q701138Trigger - TriggerOut")
end

return Q701138Trigger
