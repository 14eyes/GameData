require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74131Trigger5 = class("Q74131Trigger5", GadgetActorProxy)
Q74131Trigger5.defaultAlias = "Q74131Trigger5"
local Q74131ClientConfig = require("Quest/Client/Q74131ClientConfig")

local this
local subIDs = Q74131ClientConfig.SubIDs
local npcs = Q74131ClientConfig.Npcs
local points = Q74131ClientConfig.Points
local datas = Q74131ClientConfig.Datas

function Q74131Trigger5:OnPostDataPrepare()
    print("[MainId: 74131][Trigger: Q74131Trigger5] OnPostDataPrepare")
    this = self
end

function Q74131Trigger5:OnPostComponentPrepare()
    print("[MainId: 74131][Trigger: Q74131Trigger5] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74131Trigger5:TriggerIn()
    print("[MainId: 74131][Trigger: Q74131Trigger5] TriggerIn")
    actorMgr:GetActor("74131"):NarratorOnlyTaskByData(datas.Narrator_7413120)
    actorUtils.FinishQuestID(false, 7413132)
end

function Q74131Trigger5:PreTriggerIn()
    print("[MainId: 74131][Trigger: Q74131Trigger5] PreTriggerIn")
end

function Q74131Trigger5:LightUpTriggerIn()
    print("[MainId: 74131][Trigger: Q74131Trigger5] LightUpTriggerIn")
end

function Q74131Trigger5:TriggerOut()
    print("[MainId: 74131][Trigger: Q74131Trigger5] TriggerOut")
end

return Q74131Trigger5
