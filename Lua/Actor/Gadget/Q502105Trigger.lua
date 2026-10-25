require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q502105Trigger = class("Q502105Trigger", GadgetActorProxy)
Q502105Trigger.defaultAlias = "Q502105Trigger"
local Q5021ClientConfig = require("Quest/Client/Q5021ClientConfig")

local this
local subIDs = Q5021ClientConfig.SubIDs
local datas = Q5021ClientConfig.Datas
local npcs = Q5021ClientConfig.Npcs
local points = Q5021ClientConfig.Points

function Q502105Trigger:OnPostDataPrepare()
    print("Q502105Trigger - OnPostDataPrepare")
    this = self
end

function Q502105Trigger:OnPostComponentPrepare()
    print("Q502105Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5021)
end

function Q502105Trigger:TriggerIn()
    print("Q502105Trigger - TriggerIn")
    actorMgr:GetActor("5021"):RequestInteraction(npcs.Npc14512.alias, "", true)
    this:DestroySelf()
end

function Q502105Trigger:PreTriggerIn()
    print("Q502105Trigger - PreTriggerIn")
end

function Q502105Trigger:LightUpTriggerIn()
    print("Q502105Trigger - LightUpTriggerIn")
end

function Q502105Trigger:TriggerOut()
    print("Q502105Trigger - TriggerOut")
end

return Q502105Trigger
