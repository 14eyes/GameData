require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q71535trigger = class("Q71535trigger", GadgetActorProxy)
Q71535trigger.defaultAlias = "Q71535trigger"
local Q71535ClientConfig = require("Quest/Client/Q71535ClientConfig")

local this
local subIDs = Q71535ClientConfig.SubIDs
local npcs = Q71535ClientConfig.Npcs
local points = Q71535ClientConfig.Points

function Q71535trigger:OnPostDataPrepare()
    print("Q71535trigger - OnPostDataPrepare")
    this = self
end

function Q71535trigger:OnPostComponentPrepare()
    print("Q71535trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 71535)
end

function Q71535trigger:TriggerIn()
    print("Q71535trigger - TriggerIn")
    this:DestroySelf()
    actorMgr:GetActor("71535"):RequestInteraction(npcs.Npc30681.alias, "", true)
end

function Q71535trigger:PreTriggerIn()
    print("Q71535trigger - PreTriggerIn")
end

function Q71535trigger:LightUpTriggerIn()
    print("Q71535trigger - LightUpTriggerIn")
end

function Q71535trigger:TriggerOut()
    print("Q71535trigger - TriggerOut")
end

return Q71535trigger
