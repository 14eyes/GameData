require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7517813Trigger1 = class("Q7517813Trigger1", GadgetActorProxy)
Q7517813Trigger1.defaultAlias = "Q7517813Trigger1"
local Q75178ClientConfig = require("Quest/Client/Q75178ClientConfig")

local this
local subIDs = Q75178ClientConfig.SubIDs
local npcs = Q75178ClientConfig.Npcs
local points = Q75178ClientConfig.Points

function Q7517813Trigger1:OnPostDataPrepare()
    print("Q7517813Trigger1 - OnPostDataPrepare")
    this = self
end

function Q7517813Trigger1:OnPostComponentPrepare()
    print("Q7517813Trigger1 - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75178)
end

function Q7517813Trigger1:TriggerIn()
    print("Q7517813Trigger1 - TriggerIn")
    actorMgr:GetActor("75178"):RequestInteraction(npcs.Npc6425.alias, "", true)
    this:DestroySelf()
end

function Q7517813Trigger1:PreTriggerIn()
    print("Q7517813Trigger1 - PreTriggerIn")
end

function Q7517813Trigger1:LightUpTriggerIn()
    print("Q7517813Trigger1 - LightUpTriggerIn")
end

function Q7517813Trigger1:TriggerOut()
    print("Q7517813Trigger1 - TriggerOut")
end

return Q7517813Trigger1
