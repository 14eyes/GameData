require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710235Trigger = class("Q7710235Trigger", GadgetActorProxy)
Q7710235Trigger.defaultAlias = "Q7710235Trigger"
local Q77102ClientConfig = require("Quest/Client/Q77102ClientConfig")

local this
local subIDs = Q77102ClientConfig.SubIDs
local datas = Q77102ClientConfig.Datas
local npcs = Q77102ClientConfig.Npcs
local points = Q77102ClientConfig.Points

function Q7710235Trigger:OnPostDataPrepare()
    print("Q7710235Trigger - OnPostDataPrepare")
    this = self
end

function Q7710235Trigger:OnPostComponentPrepare()
    print("Q7710235Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77102)
end

function Q7710235Trigger:TriggerIn()
    print("Q7710235Trigger - TriggerIn")
    actorMgr:GetActor("77102"):RequestInteraction(npcs.Npc12404.alias, "", true)
    this:DestroySelf()
end

function Q7710235Trigger:PreTriggerIn()
    print("Q7710235Trigger - PreTriggerIn")
end

function Q7710235Trigger:LightUpTriggerIn()
    print("Q7710235Trigger - LightUpTriggerIn")
end

function Q7710235Trigger:TriggerOut()
    print("Q7710235Trigger - TriggerOut")
end

return Q7710235Trigger
