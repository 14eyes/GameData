require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2400302Trigger = class("Q2400302Trigger", GadgetActorProxy)
Q2400302Trigger.defaultAlias = "Q2400302Trigger"
local Q24003ClientConfig = require("Quest/Client/Q24003ClientConfig")

local this
local subIDs = Q24003ClientConfig.SubIDs
local npcs = Q24003ClientConfig.Npcs
local points = Q24003ClientConfig.Points
local datas = Q24003ClientConfig.Datas

function Q2400302Trigger:OnPostDataPrepare()
    print("[MainId: 24003][Trigger: Q2400302Trigger] OnPostDataPrepare")
    this = self
end

function Q2400302Trigger:OnPostComponentPrepare()
    print("[MainId: 24003][Trigger: Q2400302Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(20, 10, 5, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q2400302Trigger:TriggerIn()
    print("[MainId: 24003][Trigger: Q2400302Trigger] TriggerIn")
    actorMgr:GetActor("24003"):GetQuestNpcActor(npcs.Npc5062Data.alias, 24003):NarratorOnlyTaskByData(datas.NarratorWithId, nil, 24003)
end

function Q2400302Trigger:PreTriggerIn()
    print("[MainId: 24003][Trigger: Q2400302Trigger] PreTriggerIn")
end

function Q2400302Trigger:LightUpTriggerIn()
    print("[MainId: 24003][Trigger: Q2400302Trigger] LightUpTriggerIn")
end

function Q2400302Trigger:TriggerOut()
    print("[MainId: 24003][Trigger: Q2400302Trigger] TriggerOut")
end

return Q2400302Trigger
