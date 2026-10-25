require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40172Trigger1 = class("Q40172Trigger1", GadgetActorProxy)
Q40172Trigger1.defaultAlias = "Q40172Trigger1"
local Q40172ClientConfig = require("Quest/Client/Q40172ClientConfig")

local this
local subIDs = Q40172ClientConfig.SubIDs
local npcs = Q40172ClientConfig.Npcs
local points = Q40172ClientConfig.Points

function Q40172Trigger1:OnPostDataPrepare()
    print("Q40172Trigger1 - OnPostDataPrepare")
    this = self
end

function Q40172Trigger1:OnPostComponentPrepare()
    print("Q40172Trigger1 - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40172)
end

function Q40172Trigger1:TriggerIn()
    print("Q40172Trigger1 - TriggerIn")
    actorMgr:GetActor("40172"):RequestInteraction(npcs.Npc1096.alias, "", true)
    this:DestroySelf()
end

function Q40172Trigger1:PreTriggerIn()
    print("Q40172Trigger1 - PreTriggerIn")
end

function Q40172Trigger1:LightUpTriggerIn()
    print("Q40172Trigger1 - LightUpTriggerIn")
end

function Q40172Trigger1:TriggerOut()
    print("Q40172Trigger1 - TriggerOut")
end

return Q40172Trigger1
