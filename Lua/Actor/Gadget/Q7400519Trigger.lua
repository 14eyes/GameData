require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400519Trigger = class("Q7400519Trigger", GadgetActorProxy)
Q7400519Trigger.defaultAlias = "Q7400519Trigger"
local Q74005ClientConfig = require("Quest/Client/Q74005ClientConfig")

local this
local subIDs = Q74005ClientConfig.SubIDs
local datas = Q74005ClientConfig.Datas
local npcs = Q74005ClientConfig.Npcs
local points = Q74005ClientConfig.Points

function Q7400519Trigger:OnPostDataPrepare()
    print("Q7400519Trigger - OnPostDataPrepare")
    this = self
end

function Q7400519Trigger:OnPostComponentPrepare()
    print("Q7400519Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74005)
end

function Q7400519Trigger:TriggerIn()
    print("Q7400519Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7400519)
    this:DestroySelf()
end

function Q7400519Trigger:PreTriggerIn()
    print("Q7400519Trigger - PreTriggerIn")
end

function Q7400519Trigger:LightUpTriggerIn()
    print("Q7400519Trigger - LightUpTriggerIn")
end

function Q7400519Trigger:TriggerOut()
    print("Q7400519Trigger - TriggerOut")
end

return Q7400519Trigger
