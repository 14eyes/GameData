require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1402109TriggerNarrator = class("Q1402109TriggerNarrator", GadgetActorProxy)
Q1402109TriggerNarrator.defaultAlias = "Q1402109TriggerNarrator"
local Q14021ClientConfig = require("Quest/Client/Q14021ClientConfig")

local this
local subIDs = Q14021ClientConfig.SubIDs
local npcs = Q14021ClientConfig.Npcs
local points = Q14021ClientConfig.Points
local datas = Q14021ClientConfig.Datas

function Q1402109TriggerNarrator:OnPostDataPrepare()
    print("[MainId: 14021][Trigger: Q1402109TriggerNarrator] OnPostDataPrepare")
    this = self
end

function Q1402109TriggerNarrator:OnPostComponentPrepare()
    print("[MainId: 14021][Trigger: Q1402109TriggerNarrator] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(120, 115, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1402109TriggerNarrator:TriggerIn()
    print("[MainId: 14021][Trigger: Q1402109TriggerNarrator] TriggerIn")
    actorMgr:GetActor("14021"):QuestNarratorTask(datas.NarratorWithId1402105)
    actorUtils.FinishQuestID(false, 1402109)
    this:DestroySelf()
end

function Q1402109TriggerNarrator:PreTriggerIn()
    print("[MainId: 14021][Trigger: Q1402109TriggerNarrator] PreTriggerIn")
end

function Q1402109TriggerNarrator:LightUpTriggerIn()
    print("[MainId: 14021][Trigger: Q1402109TriggerNarrator] LightUpTriggerIn")
end

function Q1402109TriggerNarrator:TriggerOut()
    print("[MainId: 14021][Trigger: Q1402109TriggerNarrator] TriggerOut")
end

return Q1402109TriggerNarrator
