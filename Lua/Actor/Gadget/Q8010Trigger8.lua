require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q8010Trigger8 = class("Q8010Trigger8", GadgetActorProxy)
Q8010Trigger8.defaultAlias = "Q8010Trigger8"
local Q8010ClientConfig = require("Quest/Client/Q8010ClientConfig")

local this
local subIDs = Q8010ClientConfig.SubIDs
local npcs = Q8010ClientConfig.Npcs
local points = Q8010ClientConfig.Points

function Q8010Trigger8:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q8010Trigger8:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q8010Trigger8:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("8010"):RequestInteraction(npcs.Npc13072Data.alias)
    this:DestroySelf()
end

function Q8010Trigger8:PreTriggerIn()
    print("PreTriggerIn")
end

function Q8010Trigger8:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q8010Trigger8:TriggerOut()
    print("TriggerOut")
end

return Q8010Trigger8
