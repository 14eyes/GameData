require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2400304Trigger = class("Q2400304Trigger", GadgetActorProxy)
Q2400304Trigger.defaultAlias = "Q2400304Trigger"
local Q24003ClientConfig = require("Quest/Client/Q24003ClientConfig")

local this
local subIDs = Q24003ClientConfig.SubIDs
local npcs = Q24003ClientConfig.Npcs
local points = Q24003ClientConfig.Points
local datas = Q24003ClientConfig.Datas

function Q2400304Trigger:OnPostDataPrepare()
    print("[MainId: 24003][Trigger: Q2400304Trigger] OnPostDataPrepare")
    this = self
end

function Q2400304Trigger:OnPostComponentPrepare()
    print("[MainId: 24003][Trigger: Q2400304Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q2400304Trigger:TriggerIn()
    print("[MainId: 24003][Trigger: Q2400304Trigger] TriggerIn")
    actorMgr:GetActor("24003"):GetQuestNpcActor(npcs.Npc5062Data.alias, 24003):NarratorOnlyTaskByData(datas.NarratorWithId, nil, 24003)
end

function Q2400304Trigger:PreTriggerIn()
    print("[MainId: 24003][Trigger: Q2400304Trigger] PreTriggerIn")
end

function Q2400304Trigger:LightUpTriggerIn()
    print("[MainId: 24003][Trigger: Q2400304Trigger] LightUpTriggerIn")
end

function Q2400304Trigger:TriggerOut()
    print("[MainId: 24003][Trigger: Q2400304Trigger] TriggerOut")
end

return Q2400304Trigger
