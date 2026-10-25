require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710306Trigger = class("Q7710306Trigger", GadgetActorProxy)
Q7710306Trigger.defaultAlias = "Q7710306Trigger"
local Q77103ClientConfig = require("Quest/Client/Q77103ClientConfig")

local this
local subIDs = Q77103ClientConfig.SubIDs
local datas = Q77103ClientConfig.Datas
local npcs = Q77103ClientConfig.Npcs
local points = Q77103ClientConfig.Points

function Q7710306Trigger:OnPostDataPrepare()
    print("Q7710306Trigger - OnPostDataPrepare")
    this = self
end

function Q7710306Trigger:OnPostComponentPrepare()
    print("Q7710306Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77103)
end

function Q7710306Trigger:TriggerIn()
    print("Q7710306Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710306)
    this:DestroySelf()
end

function Q7710306Trigger:PreTriggerIn()
    print("Q7710306Trigger - PreTriggerIn")
end

function Q7710306Trigger:LightUpTriggerIn()
    print("Q7710306Trigger - LightUpTriggerIn")
end

function Q7710306Trigger:TriggerOut()
    print("Q7710306Trigger - TriggerOut")
end

return Q7710306Trigger
