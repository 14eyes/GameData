require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7504840_Trigger = class("Q7504840_Trigger", GadgetActorProxy)
Q7504840_Trigger.defaultAlias = "Q7504840_Trigger"
local Q75048ClientConfig = require("Quest/Client/Q75048ClientConfig")

local this
local subIDs = Q75048ClientConfig.SubIDs
local datas = Q75048ClientConfig.Datas
local npcs = Q75048ClientConfig.Npcs
local points = Q75048ClientConfig.Points

function Q7504840_Trigger:OnPostDataPrepare()
    print("Q7504840_Trigger - OnPostDataPrepare")
    this = self
end

function Q7504840_Trigger:OnPostComponentPrepare()
    print("Q7504840_Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75048)
end

function Q7504840_Trigger:TriggerIn()
    print("Q7504840_Trigger - TriggerIn")
    actorMgr:GetActor("75048"):RequestInteraction(npcs.Npc21536Data.alias, "", true)
    this:DestroySelf()
end

function Q7504840_Trigger:PreTriggerIn()
    print("Q7504840_Trigger - PreTriggerIn")
end

function Q7504840_Trigger:LightUpTriggerIn()
    print("Q7504840_Trigger - LightUpTriggerIn")
end

function Q7504840_Trigger:TriggerOut()
    print("Q7504840_Trigger - TriggerOut")
end

return Q7504840_Trigger
