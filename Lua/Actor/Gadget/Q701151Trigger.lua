require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701151Trigger = class("Q701151Trigger", GadgetActorProxy)
Q701151Trigger.defaultAlias = "Q701151Trigger"
local Q7011ClientConfig = require("Quest/Client/Q7011ClientConfig")

local this
local subIDs = Q7011ClientConfig.SubIDs
local datas = Q7011ClientConfig.Datas
local npcs = Q7011ClientConfig.Npcs
local points = Q7011ClientConfig.Points

function Q701151Trigger:OnPostDataPrepare()
    print("Q701151Trigger - OnPostDataPrepare")
    this = self
end

function Q701151Trigger:OnPostComponentPrepare()
    print("Q701151Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7011)
end

function Q701151Trigger:TriggerIn()
    print("Q701151Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {701151})
    this:DestroySelf()
end

function Q701151Trigger:PreTriggerIn()
    print("Q701151Trigger - PreTriggerIn")
end

function Q701151Trigger:LightUpTriggerIn()
    print("Q701151Trigger - LightUpTriggerIn")
end

function Q701151Trigger:TriggerOut()
    print("Q701151Trigger - TriggerOut")
end

return Q701151Trigger
