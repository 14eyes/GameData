require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602407Trigger = class("Q602407Trigger", GadgetActorProxy)
Q602407Trigger.defaultAlias = "Q602407Trigger"
local Q6024ClientConfig = require("Quest/Client/Q6024ClientConfig")

local this
local subIDs = Q6024ClientConfig.SubIDs
local datas = Q6024ClientConfig.Datas
local npcs = Q6024ClientConfig.Npcs
local points = Q6024ClientConfig.Points

function Q602407Trigger:OnPostDataPrepare()
    print("Q602407Trigger - OnPostDataPrepare")
    this = self
end

function Q602407Trigger:OnPostComponentPrepare()
    print("Q602407Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(200, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6024)
end

function Q602407Trigger:TriggerIn()
    print("Q602407Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 602407)
    this:DestroySelf()
end

function Q602407Trigger:PreTriggerIn()
    print("Q602407Trigger - PreTriggerIn")
end

function Q602407Trigger:LightUpTriggerIn()
    print("Q602407Trigger - LightUpTriggerIn")
end

function Q602407Trigger:TriggerOut()
    print("Q602407Trigger - TriggerOut")
end

return Q602407Trigger
