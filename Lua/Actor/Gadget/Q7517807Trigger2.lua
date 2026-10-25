require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7517807Trigger2 = class("Q7517807Trigger2", GadgetActorProxy)
Q7517807Trigger2.defaultAlias = "Q7517807Trigger2"
local Q75178ClientConfig = require("Quest/Client/Q75178ClientConfig")

local this
local subIDs = Q75178ClientConfig.SubIDs
local npcs = Q75178ClientConfig.Npcs
local points = Q75178ClientConfig.Points

function Q7517807Trigger2:OnPostDataPrepare()
    print("Q7517807Trigger2 - OnPostDataPrepare")
    this = self
end

function Q7517807Trigger2:OnPostComponentPrepare()
    print("Q7517807Trigger2 - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75178)
end

function Q7517807Trigger2:TriggerIn()
    print("Q7517807Trigger2 - TriggerIn")
    actorMgr:GetActor("75178"):RequestInteraction(npcs.Npc6425.alias, "", true)
    this:DestroySelf()
end

function Q7517807Trigger2:PreTriggerIn()
    print("Q7517807Trigger2 - PreTriggerIn")
end

function Q7517807Trigger2:LightUpTriggerIn()
    print("Q7517807Trigger2 - LightUpTriggerIn")
end

function Q7517807Trigger2:TriggerOut()
    print("Q7517807Trigger2 - TriggerOut")
end

return Q7517807Trigger2
