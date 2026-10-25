require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7601001Trigger = class("Q7601001Trigger", GadgetActorProxy)
Q7601001Trigger.defaultAlias = "Q7601001Trigger"
local Q76010ClientConfig = require("Quest/Client/Q76010ClientConfig")

local this
local subIDs = Q76010ClientConfig.SubIDs
local datas = Q76010ClientConfig.Datas
local npcs = Q76010ClientConfig.Npcs
local points = Q76010ClientConfig.Points

function Q7601001Trigger:OnPostDataPrepare()
    print("Q7601001Trigger - OnPostDataPrepare")
    this = self
end

function Q7601001Trigger:OnPostComponentPrepare()
    print("Q7601001Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76010)
end

function Q7601001Trigger:TriggerIn()
    print("Q7601001Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7601001)
    this:DestroySelf()
end

function Q7601001Trigger:PreTriggerIn()
    print("Q7601001Trigger - PreTriggerIn")
end

function Q7601001Trigger:LightUpTriggerIn()
    print("Q7601001Trigger - LightUpTriggerIn")
end

function Q7601001Trigger:TriggerOut()
    print("Q7601001Trigger - TriggerOut")
end

return Q7601001Trigger
