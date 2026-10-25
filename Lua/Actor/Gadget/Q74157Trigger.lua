require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74157Trigger = class("Q74157Trigger", GadgetActorProxy)
Q74157Trigger.defaultAlias = "Q74157Trigger"
local Q74157ClientConfig = require("Quest/Client/Q74157ClientConfig")

local this
local subIDs = Q74157ClientConfig.SubIDs
local npcs = Q74157ClientConfig.Npcs
local datas = Q74157ClientConfig.Datas

function Q74157Trigger:OnPostDataPrepare()
    print("[MainId: 74157][Trigger: Q74157Trigger] OnPostDataPrepare")
    this = self
end

function Q74157Trigger:OnPostComponentPrepare()
    print("[MainId: 74157][Trigger: Q74157Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74157Trigger:TriggerIn()
    print("[MainId: 74157][Trigger: Q74157Trigger] TriggerIn")
    actorMgr:GetActor("74157"):NarratorOnlyTaskByData(datas.Narrator_7415701)
    actorUtils.FinishQuestID(false, 7415701)
    this:DestroySelf()
end

function Q74157Trigger:PreTriggerIn()
    print("[MainId: 74157][Trigger: Q74157Trigger] PreTriggerIn")
end

function Q74157Trigger:LightUpTriggerIn()
    print("[MainId: 74157][Trigger: Q74157Trigger] LightUpTriggerIn")
end

function Q74157Trigger:TriggerOut()
    print("[MainId: 74157][Trigger: Q74157Trigger] TriggerOut")
end

return Q74157Trigger
