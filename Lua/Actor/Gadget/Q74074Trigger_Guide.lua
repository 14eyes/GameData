require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74074Trigger_Guide = class("Q74074Trigger_Guide", GadgetActorProxy)
Q74074Trigger_Guide.defaultAlias = "Q74074Trigger_Guide"
local Q74074ClientConfig = require("Quest/Client/Q74074ClientConfig")

local this
local subIDs = Q74074ClientConfig.SubIDs
local npcs = Q74074ClientConfig.Npcs
local points = Q74074ClientConfig.Points
local datas = Q74074ClientConfig.Datas

function Q74074Trigger_Guide:OnPostDataPrepare()
    print("[MainId: 74074][Trigger: Q74074Trigger_Guide] OnPostDataPrepare")
    this = self
end

function Q74074Trigger_Guide:OnPostComponentPrepare()
    print("[MainId: 74074][Trigger: Q74074Trigger_Guide] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(200, 100, 25, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74074Trigger_Guide:TriggerIn()
    print("[MainId: 74074][Trigger: Q74074Trigger_Guide] TriggerIn")
    actorMgr:GetActor("74074"):NarratorOnlyTaskByData(datas.NarratorWithIdNear)
    actorUtils.FinishQuestID(false, 7407406)
    this:DestroySelf()
end

function Q74074Trigger_Guide:PreTriggerIn()
    print("[MainId: 74074][Trigger: Q74074Trigger_Guide] PreTriggerIn")
end

function Q74074Trigger_Guide:LightUpTriggerIn()
    print("[MainId: 74074][Trigger: Q74074Trigger_Guide] LightUpTriggerIn")
end

function Q74074Trigger_Guide:TriggerOut()
    print("[MainId: 74074][Trigger: Q74074Trigger_Guide] TriggerOut")
end

return Q74074Trigger_Guide
