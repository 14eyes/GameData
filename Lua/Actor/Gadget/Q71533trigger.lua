require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q71533trigger = class("Q71533trigger", GadgetActorProxy)
Q71533trigger.defaultAlias = "Q71533trigger"
local Q71533ClientConfig = require("Quest/Client/Q71533ClientConfig")

local this
local subIDs = Q71533ClientConfig.SubIDs
local npcs = Q71533ClientConfig.Npcs
local points = Q71533ClientConfig.Points

function Q71533trigger:OnPostDataPrepare()
    print("Q71533trigger - OnPostDataPrepare")
    this = self
end

function Q71533trigger:OnPostComponentPrepare()
    print("Q71533trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 71533)
end

function Q71533trigger:TriggerIn()
    print("Q71533trigger - TriggerIn")
    this:DestroySelf()
    actorMgr:GetActor("71533"):RequestInteraction(npcs.Npc30679.alias, "", true)
end

function Q71533trigger:PreTriggerIn()
    print("Q71533trigger - PreTriggerIn")
end

function Q71533trigger:LightUpTriggerIn()
    print("Q71533trigger - LightUpTriggerIn")
end

function Q71533trigger:TriggerOut()
    print("Q71533trigger - TriggerOut")
end

return Q71533trigger
