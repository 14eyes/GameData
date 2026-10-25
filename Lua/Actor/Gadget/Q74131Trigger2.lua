require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74131Trigger2 = class("Q74131Trigger2", GadgetActorProxy)
Q74131Trigger2.defaultAlias = "Q74131Trigger2"
local Q74131ClientConfig = require("Quest/Client/Q74131ClientConfig")

local this
local subIDs = Q74131ClientConfig.SubIDs
local npcs = Q74131ClientConfig.Npcs
local points = Q74131ClientConfig.Points
local datas = Q74131ClientConfig.Datas

function Q74131Trigger2:OnPostDataPrepare()
    print("[MainId: 74131][Trigger: Q74131Trigger2] OnPostDataPrepare")
    this = self
end

function Q74131Trigger2:OnPostComponentPrepare()
    print("[MainId: 74131][Trigger: Q74131Trigger2] OnPostComponentPrepare")
    this:AddComponentTrigger(9, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74131Trigger2:TriggerIn()
    print("[MainId: 74131][Trigger: Q74131Trigger2] TriggerIn")
    actorMgr:GetActor("74131"):NarratorOnlyTaskByData(datas.Narrator_7413114)
    actorUtils.FinishQuestID(false, 7413134)
    this:DestroySelf()
end

function Q74131Trigger2:PreTriggerIn()
    print("[MainId: 74131][Trigger: Q74131Trigger2] PreTriggerIn")
end

function Q74131Trigger2:LightUpTriggerIn()
    print("[MainId: 74131][Trigger: Q74131Trigger2] LightUpTriggerIn")
end

function Q74131Trigger2:TriggerOut()
    print("[MainId: 74131][Trigger: Q74131Trigger2] TriggerOut")
end

return Q74131Trigger2
