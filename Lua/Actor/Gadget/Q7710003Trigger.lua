require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710003Trigger = class("Q7710003Trigger", GadgetActorProxy)
Q7710003Trigger.defaultAlias = "Q7710003Trigger"
local Q77100ClientConfig = require("Quest/Client/Q77100ClientConfig")

local this
local subIDs = Q77100ClientConfig.SubIDs
local datas = Q77100ClientConfig.Datas
local npcs = Q77100ClientConfig.Npcs
local points = Q77100ClientConfig.Points

function Q7710003Trigger:OnPostDataPrepare()
    print("Q7710003Trigger - OnPostDataPrepare")
    this = self
end

function Q7710003Trigger:OnPostComponentPrepare()
    print("Q7710003Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77100)
end

function Q7710003Trigger:TriggerIn()
    print("Q7710003Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710003)
    this:DestroySelf()
end

function Q7710003Trigger:PreTriggerIn()
    print("Q7710003Trigger - PreTriggerIn")
end

function Q7710003Trigger:LightUpTriggerIn()
    print("Q7710003Trigger - LightUpTriggerIn")
end

function Q7710003Trigger:TriggerOut()
    print("Q7710003Trigger - TriggerOut")
end

return Q7710003Trigger
