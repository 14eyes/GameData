require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4013914Trigger = class("Q4013914Trigger", GadgetActorProxy)
Q4013914Trigger.defaultAlias = "Q4013914Trigger"
local Q40139ClientConfig = require("Quest/Client/Q40139ClientConfig")

local this
local subIDs = Q40139ClientConfig.SubIDs
local npcs = Q40139ClientConfig.Npcs
local points = Q40139ClientConfig.Points
local datas = Q40139ClientConfig.Datas

function Q4013914Trigger:OnPostDataPrepare()
    print("[MainId: 40139][Trigger: Q4013914Trigger] OnPostDataPrepare")
    this = self
end

function Q4013914Trigger:OnPostComponentPrepare()
    print("[MainId: 40139][Trigger: Q4013914Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, sceneData:GetDummyPoint(3, ""), self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4013914Trigger:TriggerIn()
    print("[MainId: 40139][Trigger: Q4013914Trigger] TriggerIn")
    actorMgr:GetActor("40139"):NarratorOnlyTaskByData(datas.Narrator_4013998, nil, 40139)
    this:DestroySelf()
end

function Q4013914Trigger:PreTriggerIn()
    print("[MainId: 40139][Trigger: Q4013914Trigger] PreTriggerIn")
end

function Q4013914Trigger:LightUpTriggerIn()
    print("[MainId: 40139][Trigger: Q4013914Trigger] LightUpTriggerIn")
end

function Q4013914Trigger:TriggerOut()
    print("[MainId: 40139][Trigger: Q4013914Trigger] TriggerOut")
end

return Q4013914Trigger
