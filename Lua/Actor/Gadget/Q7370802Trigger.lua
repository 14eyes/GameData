require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7370802Trigger = class("Q7370802Trigger", GadgetActorProxy)
Q7370802Trigger.defaultAlias = "Q7370802Trigger"
local Q73708ClientConfig = require("Quest/Client/Q73708ClientConfig")

local this
local subIDs = Q73708ClientConfig.SubIDs
local datas = Q73708ClientConfig.Datas
local npcs = Q73708ClientConfig.Npcs
local points = Q73708ClientConfig.Points

function Q7370802Trigger:OnPostDataPrepare()
    print("Q7370802Trigger - OnPostDataPrepare")
    this = self
end

function Q7370802Trigger:OnPostComponentPrepare()
    print("Q7370802Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 73708)
end

function Q7370802Trigger:TriggerIn()
    print("Q7370802Trigger - TriggerIn")
    actorMgr:GetActor("73708"):RequestInteraction(npcs.Npc30981.alias, "", true)
    this:DestroySelf()
end

function Q7370802Trigger:PreTriggerIn()
    print("Q7370802Trigger - PreTriggerIn")
end

function Q7370802Trigger:LightUpTriggerIn()
    print("Q7370802Trigger - LightUpTriggerIn")
end

function Q7370802Trigger:TriggerOut()
    print("Q7370802Trigger - TriggerOut")
end

return Q7370802Trigger
