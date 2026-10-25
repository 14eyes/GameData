require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710429Trigger = class("Q7710429Trigger", GadgetActorProxy)
Q7710429Trigger.defaultAlias = "Q7710429Trigger"
local Q77104ClientConfig = require("Quest/Client/Q77104ClientConfig")

local this
local subIDs = Q77104ClientConfig.SubIDs
local datas = Q77104ClientConfig.Datas
local npcs = Q77104ClientConfig.Npcs
local points = Q77104ClientConfig.Points

function Q7710429Trigger:OnPostDataPrepare()
    print("Q7710429Trigger - OnPostDataPrepare")
    this = self
end

function Q7710429Trigger:OnPostComponentPrepare()
    print("Q7710429Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77104)
end

function Q7710429Trigger:TriggerIn()
    print("Q7710429Trigger - TriggerIn")
    actorMgr:GetActor("77104"):RequestInteraction(npcs.Npc22318.alias, "", true)
    this:DestroySelf()
end

function Q7710429Trigger:PreTriggerIn()
    print("Q7710429Trigger - PreTriggerIn")
end

function Q7710429Trigger:LightUpTriggerIn()
    print("Q7710429Trigger - LightUpTriggerIn")
end

function Q7710429Trigger:TriggerOut()
    print("Q7710429Trigger - TriggerOut")
end

return Q7710429Trigger
