require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q502302Trigger = class("Q502302Trigger", GadgetActorProxy)
Q502302Trigger.defaultAlias = "Q502302Trigger"
local Q5023ClientConfig = require("Quest/Client/Q5023ClientConfig")

local this
local subIDs = Q5023ClientConfig.SubIDs
local datas = Q5023ClientConfig.Datas
local npcs = Q5023ClientConfig.Npcs
local points = Q5023ClientConfig.Points

function Q502302Trigger:OnPostDataPrepare()
    print("Q502302Trigger - OnPostDataPrepare")
    this = self
end

function Q502302Trigger:OnPostComponentPrepare()
    print("Q502302Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(13, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5023)
end

function Q502302Trigger:TriggerIn()
    print("Q502302Trigger - TriggerIn")
    actorMgr:GetActor("5023"):RequestInteraction(npcs.Npc14787.alias, "", true)
    this:DestroySelf()
end

function Q502302Trigger:PreTriggerIn()
    print("Q502302Trigger - PreTriggerIn")
end

function Q502302Trigger:LightUpTriggerIn()
    print("Q502302Trigger - LightUpTriggerIn")
end

function Q502302Trigger:TriggerOut()
    print("Q502302Trigger - TriggerOut")
end

return Q502302Trigger
