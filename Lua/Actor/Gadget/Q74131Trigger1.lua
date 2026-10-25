require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74131Trigger1 = class("Q74131Trigger1", GadgetActorProxy)
Q74131Trigger1.defaultAlias = "Q74131Trigger1"
local Q74131ClientConfig = require("Quest/Client/Q74131ClientConfig")

local this
local subIDs = Q74131ClientConfig.SubIDs
local npcs = Q74131ClientConfig.Npcs
local points = Q74131ClientConfig.Points
local datas = Q74131ClientConfig.Datas

function Q74131Trigger1:OnPostDataPrepare()
    print("[MainId: 74131][Trigger: Q74131Trigger1] OnPostDataPrepare")
    this = self
end

function Q74131Trigger1:OnPostComponentPrepare()
    print("[MainId: 74131][Trigger: Q74131Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74131Trigger1:TriggerIn()
    print("[MainId: 74131][Trigger: Q74131Trigger1] TriggerIn")
    local actor = actorMgr:GetActor("74131")
    actor:NarratorOnlyTaskByData(datas.Narrator_7413113)
    actorUtils.FinishQuestID(false, 7413133)
    actor:EnterSceneLookCamera({x = 3516.565, y = 467.124, z = 3096.431}, 0, 2, false, false)
end

function Q74131Trigger1:PreTriggerIn()
    print("[MainId: 74131][Trigger: Q74131Trigger1] PreTriggerIn")
end

function Q74131Trigger1:LightUpTriggerIn()
    print("[MainId: 74131][Trigger: Q74131Trigger1] LightUpTriggerIn")
end

function Q74131Trigger1:TriggerOut()
    print("[MainId: 74131][Trigger: Q74131Trigger1] TriggerOut")
end

return Q74131Trigger1
