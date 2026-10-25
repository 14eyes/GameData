require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74074TriggerGuide = class("Q74074TriggerGuide", GadgetActorProxy)
Q74074TriggerGuide.defaultAlias = "Q74074TriggerGuide"
local Q74074ClientConfig = require("Quest/Client/Q74074ClientConfig")

local this
local subIDs = Q74074ClientConfig.SubIDs
local npcs = Q74074ClientConfig.Npcs
local points = Q74074ClientConfig.Points
local datas = Q74074ClientConfig.Datas

function Q74074TriggerGuide:OnPostDataPrepare()
    print("[MainId: 74074][Trigger: Q74074TriggerGuide] OnPostDataPrepare")
    this = self
end

function Q74074TriggerGuide:OnPostComponentPrepare()
    print("[MainId: 74074][Trigger: Q74074TriggerGuide] OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74074TriggerGuide:TriggerIn()
    print("[MainId: 74074][Trigger: Q74074TriggerGuide] TriggerIn")
    actorUtils.FinishQuestID(false, 7407406)
    this:DestroySelf()
end

function Q74074TriggerGuide:PreTriggerIn()
    print("[MainId: 74074][Trigger: Q74074TriggerGuide] PreTriggerIn")
end

function Q74074TriggerGuide:LightUpTriggerIn()
    print("[MainId: 74074][Trigger: Q74074TriggerGuide] LightUpTriggerIn")
end

function Q74074TriggerGuide:TriggerOut()
    print("[MainId: 74074][Trigger: Q74074TriggerGuide] TriggerOut")
end

return Q74074TriggerGuide
