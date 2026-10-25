require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400506Trigger = class("Q7400506Trigger", GadgetActorProxy)
Q7400506Trigger.defaultAlias = "Q7400506Trigger"
local Q74005ClientConfig = require("Quest/Client/Q74005ClientConfig")

local this
local subIDs = Q74005ClientConfig.SubIDs
local datas = Q74005ClientConfig.Datas
local npcs = Q74005ClientConfig.Npcs
local points = Q74005ClientConfig.Points

function Q7400506Trigger:OnPostDataPrepare()
    print("Q7400506Trigger - OnPostDataPrepare")
    this = self
end

function Q7400506Trigger:OnPostComponentPrepare()
    print("Q7400506Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74005)
end

function Q7400506Trigger:TriggerIn()
    print("Q7400506Trigger - TriggerIn")
    actorMgr:GetActor("74005"):RequestInteraction(npcs.Npc20985Data.alias)
    this:DestroySelf()
end

function Q7400506Trigger:PreTriggerIn()
    print("Q7400506Trigger - PreTriggerIn")
end

function Q7400506Trigger:LightUpTriggerIn()
    print("Q7400506Trigger - LightUpTriggerIn")
end

function Q7400506Trigger:TriggerOut()
    print("Q7400506Trigger - TriggerOut")
end

return Q7400506Trigger
