require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7622501Trigger = class("Q7622501Trigger", GadgetActorProxy)
Q7622501Trigger.defaultAlias = "Q7622501Trigger"
local Q76225ClientConfig = require("Quest/Client/Q76225ClientConfig")

local this
local subIDs = Q76225ClientConfig.SubIDs
local npcs = Q76225ClientConfig.Npcs
local points = Q76225ClientConfig.Points

function Q7622501Trigger:OnPostDataPrepare()
    print("Q7622501Trigger - OnPostDataPrepare")
    this = self
end

function Q7622501Trigger:OnPostComponentPrepare()
    print("Q7622501Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76225)
end

function Q7622501Trigger:TriggerIn()
    print("Q7622501Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7622501})
    this:DestroySelf()
end

function Q7622501Trigger:PreTriggerIn()
    print("Q7622501Trigger - PreTriggerIn")
end

function Q7622501Trigger:LightUpTriggerIn()
    print("Q7622501Trigger - LightUpTriggerIn")
end

function Q7622501Trigger:TriggerOut()
    print("Q7622501Trigger - TriggerOut")
end

return Q7622501Trigger
