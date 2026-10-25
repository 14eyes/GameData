require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70552Trigger_2 = class("Q70552Trigger_2", GadgetActorProxy)
Q70552Trigger_2.defaultAlias = "Q70552Trigger_2"
local Q70552ClientConfig = require("Quest/Client/Q70552ClientConfig")

local this
local subIDs = Q70552ClientConfig.SubIDs
local npcs = Q70552ClientConfig.Npcs
local points = Q70552ClientConfig.Points

function Q70552Trigger_2:OnPostDataPrepare()
    print("Q70552Trigger_2 - OnPostDataPrepare")
    this = self
end

function Q70552Trigger_2:OnPostComponentPrepare()
    print("Q70552Trigger_2 - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70552)
end

function Q70552Trigger_2:TriggerIn()
    print("Q70552Trigger_2 - TriggerIn")
    actorMgr:GetActor("70552"):RequestInteraction(npcs.Npc1029.alias, "", true)
    this:DestroySelf()
end

function Q70552Trigger_2:PreTriggerIn()
    print("Q70552Trigger_2 - PreTriggerIn")
end

function Q70552Trigger_2:LightUpTriggerIn()
    print("Q70552Trigger_2 - LightUpTriggerIn")
end

function Q70552Trigger_2:TriggerOut()
    print("Q70552Trigger_2 - TriggerOut")
end

return Q70552Trigger_2
