require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q8010Trigger9 = class("Q8010Trigger9", GadgetActorProxy)
Q8010Trigger9.defaultAlias = "Q8010Trigger9"
local Q8010ClientConfig = require("Quest/Client/Q8010ClientConfig")

local this
local subIDs = Q8010ClientConfig.SubIDs
local npcs = Q8010ClientConfig.Npcs
local points = Q8010ClientConfig.Points

function Q8010Trigger9:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q8010Trigger9:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q8010Trigger9:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("8010"):RequestInteraction(npcs.Npc13072Data.alias)
    this:DestroySelf()
end

function Q8010Trigger9:PreTriggerIn()
    print("PreTriggerIn")
end

function Q8010Trigger9:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q8010Trigger9:TriggerOut()
    print("TriggerOut")
end

return Q8010Trigger9
