require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q600027Trigger = class("Q600027Trigger", GadgetActorProxy)
Q600027Trigger.defaultAlias = "Q600027Trigger"
local Q6000ClientConfig = require("Quest/Client/Q6000ClientConfig")

local this
local subIDs = Q6000ClientConfig.SubIDs
local datas = Q6000ClientConfig.Datas
local npcs = Q6000ClientConfig.Npcs
local points = Q6000ClientConfig.Points

function Q600027Trigger:OnPostDataPrepare()
    print("Q600027Trigger - OnPostDataPrepare")
    this = self
end

function Q600027Trigger:OnPostComponentPrepare()
    print("Q600027Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(13.34722, 12.57012, 10.496311, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6000)
end

function Q600027Trigger:TriggerIn()
    print("Q600027Trigger - TriggerIn")
    actorMgr:GetActor("6000"):RequestInteraction(npcs.Npc15414.alias, "", true)
    this:DestroySelf()
end

function Q600027Trigger:PreTriggerIn()
    print("Q600027Trigger - PreTriggerIn")
end

function Q600027Trigger:LightUpTriggerIn()
    print("Q600027Trigger - LightUpTriggerIn")
end

function Q600027Trigger:TriggerOut()
    print("Q600027Trigger - TriggerOut")
end

return Q600027Trigger
