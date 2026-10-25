require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400520Trigger = class("Q7400520Trigger", GadgetActorProxy)
Q7400520Trigger.defaultAlias = "Q7400520Trigger"
local Q74005ClientConfig = require("Quest/Client/Q74005ClientConfig")

local this
local subIDs = Q74005ClientConfig.SubIDs
local datas = Q74005ClientConfig.Datas
local npcs = Q74005ClientConfig.Npcs
local points = Q74005ClientConfig.Points

function Q7400520Trigger:OnPostDataPrepare()
    print("Q7400520Trigger - OnPostDataPrepare")
    this = self
end

function Q7400520Trigger:OnPostComponentPrepare()
    print("Q7400520Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74005)
end

function Q7400520Trigger:TriggerIn()
    print("Q7400520Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7400520)
    this:DestroySelf()
end

function Q7400520Trigger:PreTriggerIn()
    print("Q7400520Trigger - PreTriggerIn")
end

function Q7400520Trigger:LightUpTriggerIn()
    print("Q7400520Trigger - LightUpTriggerIn")
end

function Q7400520Trigger:TriggerOut()
    print("Q7400520Trigger - TriggerOut")
end

return Q7400520Trigger
