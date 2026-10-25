require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7712512Trigger = class("Q7712512Trigger", GadgetActorProxy)
Q7712512Trigger.defaultAlias = "Q7712512Trigger"
local Q77125ClientConfig = require("Quest/Client/Q77125ClientConfig")

local this
local subIDs = Q77125ClientConfig.SubIDs
local datas = Q77125ClientConfig.Datas
local npcs = Q77125ClientConfig.Npcs
local points = Q77125ClientConfig.Points

function Q7712512Trigger:OnPostDataPrepare()
    print("Q7712512Trigger - OnPostDataPrepare")
    this = self
end

function Q7712512Trigger:OnPostComponentPrepare()
    print("Q7712512Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77125)
end

function Q7712512Trigger:TriggerIn()
    print("Q7712512Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7712512)
    this:DestroySelf()
end

function Q7712512Trigger:PreTriggerIn()
    print("Q7712512Trigger - PreTriggerIn")
end

function Q7712512Trigger:LightUpTriggerIn()
    print("Q7712512Trigger - LightUpTriggerIn")
end

function Q7712512Trigger:TriggerOut()
    print("Q7712512Trigger - TriggerOut")
end

return Q7712512Trigger
