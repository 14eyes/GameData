require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7111409trigger = class("Q7111409trigger", GadgetActorProxy)
Q7111409trigger.defaultAlias = "Q7111409trigger"
local Q71114ClientConfig = require("Quest/Client/Q71114ClientConfig")

local this
local subIDs = Q71114ClientConfig.SubIDs
local datas = Q71114ClientConfig.Datas
local npcs = Q71114ClientConfig.Npcs
local points = Q71114ClientConfig.Points

function Q7111409trigger:OnPostDataPrepare()
    print("Q7111409trigger - OnPostDataPrepare")
    this = self
end

function Q7111409trigger:OnPostComponentPrepare()
    print("Q7111409trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 71114)
end

function Q7111409trigger:TriggerIn()
    print("Q7111409trigger - TriggerIn")
    actorMgr:GetActor("71114"):RequestInteraction(npcs.Npc13489.alias, "", true)
    this:DestroySelf()
end

function Q7111409trigger:PreTriggerIn()
    print("Q7111409trigger - PreTriggerIn")
end

function Q7111409trigger:LightUpTriggerIn()
    print("Q7111409trigger - LightUpTriggerIn")
end

function Q7111409trigger:TriggerOut()
    print("Q7111409trigger - TriggerOut")
end

return Q7111409trigger
