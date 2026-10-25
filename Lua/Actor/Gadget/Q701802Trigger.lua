require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701802Trigger = class("Q701802Trigger", GadgetActorProxy)
Q701802Trigger.defaultAlias = "Q701802Trigger"
local Q7018ClientConfig = require("Quest/Client/Q7018ClientConfig")

local this
local subIDs = Q7018ClientConfig.SubIDs
local datas = Q7018ClientConfig.Datas
local npcs = Q7018ClientConfig.Npcs
local points = Q7018ClientConfig.Points

function Q701802Trigger:OnPostDataPrepare()
    print("Q701802Trigger - OnPostDataPrepare")
    this = self
end

function Q701802Trigger:OnPostComponentPrepare()
    print("Q701802Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7018)
end

function Q701802Trigger:TriggerIn()
    print("Q701802Trigger - TriggerIn")
    actorMgr:GetActor("7018"):RequestInteraction(npcs.Npc1330.alias, "", true)
    this:DestroySelf()
end

function Q701802Trigger:PreTriggerIn()
    print("Q701802Trigger - PreTriggerIn")
end

function Q701802Trigger:LightUpTriggerIn()
    print("Q701802Trigger - LightUpTriggerIn")
end

function Q701802Trigger:TriggerOut()
    print("Q701802Trigger - TriggerOut")
end

return Q701802Trigger
