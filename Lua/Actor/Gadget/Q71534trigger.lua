require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q71534trigger = class("Q71534trigger", GadgetActorProxy)
Q71534trigger.defaultAlias = "Q71534trigger"
local Q71534ClientConfig = require("Quest/Client/Q71534ClientConfig")

local this
local subIDs = Q71534ClientConfig.SubIDs
local npcs = Q71534ClientConfig.Npcs
local points = Q71534ClientConfig.Points

function Q71534trigger:OnPostDataPrepare()
    print("Q71534trigger - OnPostDataPrepare")
    this = self
end

function Q71534trigger:OnPostComponentPrepare()
    print("Q71534trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 71534)
end

function Q71534trigger:TriggerIn()
    print("Q71534trigger - TriggerIn")
    this:DestroySelf()
    actorMgr:GetActor("71534"):RequestInteraction(npcs.Npc30680.alias, "", true)
end

function Q71534trigger:PreTriggerIn()
    print("Q71534trigger - PreTriggerIn")
end

function Q71534trigger:LightUpTriggerIn()
    print("Q71534trigger - LightUpTriggerIn")
end

function Q71534trigger:TriggerOut()
    print("Q71534trigger - TriggerOut")
end

return Q71534trigger
