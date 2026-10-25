require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74216Trigger_7421608 = class("Q74216Trigger_7421608", GadgetActorProxy)
Q74216Trigger_7421608.defaultAlias = "Q74216Trigger_7421608"
local Q74216ClientConfig = require("Quest/Client/Q74216ClientConfig")

local this
local subIDs = Q74216ClientConfig.SubIDs
local npcs = Q74216ClientConfig.Npcs
local points = Q74216ClientConfig.Points
local datas = Q74216ClientConfig.Datas

function Q74216Trigger_7421608:OnPostDataPrepare()
    print("[MainId: 74216][Trigger: Q74216Trigger_7421608] OnPostDataPrepare")
    this = self
end

function Q74216Trigger_7421608:OnPostComponentPrepare()
    print("[MainId: 74216][Trigger: Q74216Trigger_7421608] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74216)
end

function Q74216Trigger_7421608:TriggerIn()
    print("[MainId: 74216][Trigger: Q74216Trigger_7421608] TriggerIn")
    actorMgr:GetActor("74216"):QuestNarratorTask(datas.Narrator_74216)
    this:DestroySelf()
end

function Q74216Trigger_7421608:PreTriggerIn()
    print("[MainId: 74216][Trigger: Q74216Trigger_7421608] PreTriggerIn")
end

function Q74216Trigger_7421608:LightUpTriggerIn()
    print("[MainId: 74216][Trigger: Q74216Trigger_7421608] LightUpTriggerIn")
end

function Q74216Trigger_7421608:TriggerOut()
    print("[MainId: 74216][Trigger: Q74216Trigger_7421608] TriggerOut")
end

return Q74216Trigger_7421608
