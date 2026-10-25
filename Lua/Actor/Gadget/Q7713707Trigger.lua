require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7713707Trigger = class("Q7713707Trigger", GadgetActorProxy)
Q7713707Trigger.defaultAlias = "Q7713707Trigger"
local Q77137ClientConfig = require("Quest/Client/Q77137ClientConfig")

local this
local subIDs = Q77137ClientConfig.SubIDs
local datas = Q77137ClientConfig.Datas
local npcs = Q77137ClientConfig.Npcs
local points = Q77137ClientConfig.Points

function Q7713707Trigger:OnPostDataPrepare()
    print("Q7713707Trigger - OnPostDataPrepare")
    this = self
end

function Q7713707Trigger:OnPostComponentPrepare()
    print("Q7713707Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77137)
end

function Q7713707Trigger:TriggerIn()
    print("Q7713707Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7713707})
    this:DestroySelf()
end

function Q7713707Trigger:PreTriggerIn()
    print("Q7713707Trigger - PreTriggerIn")
end

function Q7713707Trigger:LightUpTriggerIn()
    print("Q7713707Trigger - LightUpTriggerIn")
end

function Q7713707Trigger:TriggerOut()
    print("Q7713707Trigger - TriggerOut")
end

return Q7713707Trigger
