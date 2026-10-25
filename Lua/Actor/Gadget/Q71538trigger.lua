require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q71538trigger = class("Q71538trigger", GadgetActorProxy)
Q71538trigger.defaultAlias = "Q71538trigger"
local Q71538ClientConfig = require("Quest/Client/Q71538ClientConfig")

local this
local subIDs = Q71538ClientConfig.SubIDs
local npcs = Q71538ClientConfig.Npcs
local points = Q71538ClientConfig.Points

function Q71538trigger:OnPostDataPrepare()
    print("Q71538trigger - OnPostDataPrepare")
    this = self
end

function Q71538trigger:OnPostComponentPrepare()
    print("Q71538trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 71538)
end

function Q71538trigger:TriggerIn()
    print("Q71538trigger - TriggerIn")
    this:DestroySelf()
    actorMgr:GetActor("71538"):RequestInteraction(npcs.Npc30684.alias, "", true)
end

function Q71538trigger:PreTriggerIn()
    print("Q71538trigger - PreTriggerIn")
end

function Q71538trigger:LightUpTriggerIn()
    print("Q71538trigger - LightUpTriggerIn")
end

function Q71538trigger:TriggerOut()
    print("Q71538trigger - TriggerOut")
end

return Q71538trigger
