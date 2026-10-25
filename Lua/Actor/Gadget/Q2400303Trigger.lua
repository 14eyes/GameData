require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2400303Trigger = class("Q2400303Trigger", GadgetActorProxy)
Q2400303Trigger.defaultAlias = "Q2400303Trigger"
local Q24003ClientConfig = require("Quest/Client/Q24003ClientConfig")

local this
local subIDs = Q24003ClientConfig.SubIDs
local npcs = Q24003ClientConfig.Npcs
local points = Q24003ClientConfig.Points
local datas = Q24003ClientConfig.Datas

function Q2400303Trigger:OnPostDataPrepare()
    print("[MainId: 24003][Trigger: Q2400303Trigger] OnPostDataPrepare")
    this = self
end

function Q2400303Trigger:OnPostComponentPrepare()
    print("[MainId: 24003][Trigger: Q2400303Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(4, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q2400303Trigger:TriggerIn()
    print("[MainId: 24003][Trigger: Q2400303Trigger] TriggerIn")
    actorMgr:GetActor("24003"):GetQuestNpcActor(npcs.Npc5063Data.alias, 24003):NarratorOnlyTaskByData(datas.NarratorWithId_01, nil, 24003)
end

function Q2400303Trigger:PreTriggerIn()
    print("[MainId: 24003][Trigger: Q2400303Trigger] PreTriggerIn")
end

function Q2400303Trigger:LightUpTriggerIn()
    print("[MainId: 24003][Trigger: Q2400303Trigger] LightUpTriggerIn")
end

function Q2400303Trigger:TriggerOut()
    print("[MainId: 24003][Trigger: Q2400303Trigger] TriggerOut")
end

return Q2400303Trigger
