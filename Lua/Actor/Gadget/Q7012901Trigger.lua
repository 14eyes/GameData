require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7012901Trigger = class("Q7012901Trigger", GadgetActorProxy)
Q7012901Trigger.defaultAlias = "Q7012901Trigger"
local Q70129ClientConfig = require("Quest/Client/Q70129ClientConfig")

local this
local subIDs = Q70129ClientConfig.SubIDs
local npcs = Q70129ClientConfig.Npcs
local points = Q70129ClientConfig.Points

function Q7012901Trigger:OnPostDataPrepare()
    print("Q7012901Trigger - OnPostDataPrepare")
    this = self
end

function Q7012901Trigger:OnPostComponentPrepare()
    print("Q7012901Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70129)
end

function Q7012901Trigger:TriggerIn()
    print("Q7012901Trigger - TriggerIn")
    actorMgr:GetActor("70129"):RequestInteraction("Npc22748_1", "", true)
    this:DestroySelf()
end

function Q7012901Trigger:PreTriggerIn()
    print("Q7012901Trigger - PreTriggerIn")
end

function Q7012901Trigger:LightUpTriggerIn()
    print("Q7012901Trigger - LightUpTriggerIn")
end

function Q7012901Trigger:TriggerOut()
    print("Q7012901Trigger - TriggerOut")
end

return Q7012901Trigger
