require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1402105TriggerNarrator = class("Q1402105TriggerNarrator", GadgetActorProxy)
Q1402105TriggerNarrator.defaultAlias = "Q1402105TriggerNarrator"
local Q14021ClientConfig = require("Quest/Client/Q14021ClientConfig")

local this
local subIDs = Q14021ClientConfig.SubIDs
local npcs = Q14021ClientConfig.Npcs
local points = Q14021ClientConfig.Points
local datas = Q14021ClientConfig.Datas

function Q1402105TriggerNarrator:OnPostDataPrepare()
    print("[MainId: 14021][Trigger: Q1402105TriggerNarrator] OnPostDataPrepare")
    this = self
end

function Q1402105TriggerNarrator:OnPostComponentPrepare()
    print("[MainId: 14021][Trigger: Q1402105TriggerNarrator] OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q1402105TriggerNarrator:TriggerIn()
    print("[MainId: 14021][Trigger: Q1402105TriggerNarrator] TriggerIn")
    actorMgr:GetActor("14021"):QuestNarratorTask(datas.NarratorWithId1402103)
    this:DestroySelf()
end

function Q1402105TriggerNarrator:PreTriggerIn()
    print("[MainId: 14021][Trigger: Q1402105TriggerNarrator] PreTriggerIn")
end

function Q1402105TriggerNarrator:LightUpTriggerIn()
    print("[MainId: 14021][Trigger: Q1402105TriggerNarrator] LightUpTriggerIn")
end

function Q1402105TriggerNarrator:TriggerOut()
    print("[MainId: 14021][Trigger: Q1402105TriggerNarrator] TriggerOut")
end

return Q1402105TriggerNarrator
