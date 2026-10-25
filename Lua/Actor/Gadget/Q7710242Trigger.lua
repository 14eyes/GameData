require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710242Trigger = class("Q7710242Trigger", GadgetActorProxy)
Q7710242Trigger.defaultAlias = "Q7710242Trigger"
local Q77102ClientConfig = require("Quest/Client/Q77102ClientConfig")

local this
local subIDs = Q77102ClientConfig.SubIDs
local datas = Q77102ClientConfig.Datas
local npcs = Q77102ClientConfig.Npcs
local points = Q77102ClientConfig.Points

function Q7710242Trigger:OnPostDataPrepare()
    print("Q7710242Trigger - OnPostDataPrepare")
    this = self
end

function Q7710242Trigger:OnPostComponentPrepare()
    print("Q7710242Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77102)
end

function Q7710242Trigger:TriggerIn()
    print("Q7710242Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710242)
    this:DestroySelf()
end

function Q7710242Trigger:PreTriggerIn()
    print("Q7710242Trigger - PreTriggerIn")
end

function Q7710242Trigger:LightUpTriggerIn()
    print("Q7710242Trigger - LightUpTriggerIn")
end

function Q7710242Trigger:TriggerOut()
    print("Q7710242Trigger - TriggerOut")
end

return Q7710242Trigger
