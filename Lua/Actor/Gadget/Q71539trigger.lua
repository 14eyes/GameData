require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q71539trigger = class("Q71539trigger", GadgetActorProxy)
Q71539trigger.defaultAlias = "Q71539trigger"
local Q71539ClientConfig = require("Quest/Client/Q71539ClientConfig")

local this
local subIDs = Q71539ClientConfig.SubIDs
local npcs = Q71539ClientConfig.Npcs
local points = Q71539ClientConfig.Points

function Q71539trigger:OnPostDataPrepare()
    print("Q71539trigger - OnPostDataPrepare")
    this = self
end

function Q71539trigger:OnPostComponentPrepare()
    print("Q71539trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 71539)
end

function Q71539trigger:TriggerIn()
    print("Q71539trigger - TriggerIn")
    this:DestroySelf()
    actorMgr:GetActor("71539"):RequestInteraction(npcs.Npc30685.alias, "", true)
end

function Q71539trigger:PreTriggerIn()
    print("Q71539trigger - PreTriggerIn")
end

function Q71539trigger:LightUpTriggerIn()
    print("Q71539trigger - LightUpTriggerIn")
end

function Q71539trigger:TriggerOut()
    print("Q71539trigger - TriggerOut")
end

return Q71539trigger
