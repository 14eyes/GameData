require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74075Trigger_Guide = class("Q74075Trigger_Guide", GadgetActorProxy)
Q74075Trigger_Guide.defaultAlias = "Q74075Trigger_Guide"
local Q74075ClientConfig = require("Quest/Client/Q74075ClientConfig")

local this
local subIDs = Q74075ClientConfig.SubIDs
local npcs = Q74075ClientConfig.Npcs
local points = Q74075ClientConfig.Points
local datas = Q74075ClientConfig.Datas

function Q74075Trigger_Guide:OnPostDataPrepare()
    print("[MainId: 74075][Trigger: Q74075Trigger_Guide] OnPostDataPrepare")
    this = self
end

function Q74075Trigger_Guide:OnPostComponentPrepare()
    print("[MainId: 74075][Trigger: Q74075Trigger_Guide] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(80, 80, 40, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74075Trigger_Guide:TriggerIn()
    print("[MainId: 74075][Trigger: Q74075Trigger_Guide] TriggerIn")
    actorMgr:GetActor("74075"):NarratorOnlyTaskByData(datas.NarratorWithIdNear)
    actorUtils.FinishQuestID(false, 7407506)
    this:DestroySelf()
end

function Q74075Trigger_Guide:PreTriggerIn()
    print("[MainId: 74075][Trigger: Q74075Trigger_Guide] PreTriggerIn")
end

function Q74075Trigger_Guide:LightUpTriggerIn()
    print("[MainId: 74075][Trigger: Q74075Trigger_Guide] LightUpTriggerIn")
end

function Q74075Trigger_Guide:TriggerOut()
    print("[MainId: 74075][Trigger: Q74075Trigger_Guide] TriggerOut")
end

return Q74075Trigger_Guide
