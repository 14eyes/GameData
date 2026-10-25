require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q71537trigger = class("Q71537trigger", GadgetActorProxy)
Q71537trigger.defaultAlias = "Q71537trigger"
local Q71537ClientConfig = require("Quest/Client/Q71537ClientConfig")

local this
local subIDs = Q71537ClientConfig.SubIDs
local npcs = Q71537ClientConfig.Npcs
local points = Q71537ClientConfig.Points

function Q71537trigger:OnPostDataPrepare()
    print("Q71537trigger - OnPostDataPrepare")
    this = self
end

function Q71537trigger:OnPostComponentPrepare()
    print("Q71537trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 71537)
end

function Q71537trigger:TriggerIn()
    print("Q71537trigger - TriggerIn")
    this:DestroySelf()
    actorMgr:GetActor("71537"):RequestInteraction(npcs.Npc30683.alias, "", true)
end

function Q71537trigger:PreTriggerIn()
    print("Q71537trigger - PreTriggerIn")
end

function Q71537trigger:LightUpTriggerIn()
    print("Q71537trigger - LightUpTriggerIn")
end

function Q71537trigger:TriggerOut()
    print("Q71537trigger - TriggerOut")
end

return Q71537trigger
