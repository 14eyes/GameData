require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74075TriggerGuide = class("Q74075TriggerGuide", GadgetActorProxy)
Q74075TriggerGuide.defaultAlias = "Q74075TriggerGuide"
local Q74075ClientConfig = require("Quest/Client/Q74075ClientConfig")

local this
local subIDs = Q74075ClientConfig.SubIDs
local npcs = Q74075ClientConfig.Npcs
local points = Q74075ClientConfig.Points
local datas = Q74075ClientConfig.Datas

function Q74075TriggerGuide:OnPostDataPrepare()
    print("[MainId: 74075][Trigger: Q74075TriggerGuide] OnPostDataPrepare")
    this = self
end

function Q74075TriggerGuide:OnPostComponentPrepare()
    print("[MainId: 74075][Trigger: Q74075TriggerGuide] OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74075TriggerGuide:TriggerIn()
    print("[MainId: 74075][Trigger: Q74075TriggerGuide] TriggerIn")
    actorUtils.FinishQuestID(false, 7407506)
    this:DestroySelf()
end

function Q74075TriggerGuide:PreTriggerIn()
    print("[MainId: 74075][Trigger: Q74075TriggerGuide] PreTriggerIn")
end

function Q74075TriggerGuide:LightUpTriggerIn()
    print("[MainId: 74075][Trigger: Q74075TriggerGuide] LightUpTriggerIn")
end

function Q74075TriggerGuide:TriggerOut()
    print("[MainId: 74075][Trigger: Q74075TriggerGuide] TriggerOut")
end

return Q74075TriggerGuide
