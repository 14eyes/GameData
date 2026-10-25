require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400518Trigger = class("Q7400518Trigger", GadgetActorProxy)
Q7400518Trigger.defaultAlias = "Q7400518Trigger"
local Q74005ClientConfig = require("Quest/Client/Q74005ClientConfig")

local this
local subIDs = Q74005ClientConfig.SubIDs
local datas = Q74005ClientConfig.Datas
local npcs = Q74005ClientConfig.Npcs
local points = Q74005ClientConfig.Points

function Q7400518Trigger:OnPostDataPrepare()
    print("Q7400518Trigger - OnPostDataPrepare")
    this = self
end

function Q7400518Trigger:OnPostComponentPrepare()
    print("Q7400518Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74005)
end

function Q7400518Trigger:TriggerIn()
    print("Q7400518Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7400518)
    this:DestroySelf()
end

function Q7400518Trigger:PreTriggerIn()
    print("Q7400518Trigger - PreTriggerIn")
end

function Q7400518Trigger:LightUpTriggerIn()
    print("Q7400518Trigger - LightUpTriggerIn")
end

function Q7400518Trigger:TriggerOut()
    print("Q7400518Trigger - TriggerOut")
end

return Q7400518Trigger
