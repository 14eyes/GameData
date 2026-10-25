require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74104Trigger9 = class("Q74104Trigger9", GadgetActorProxy)
Q74104Trigger9.defaultAlias = "Q74104Trigger9"
local Q74104ClientConfig = require("Quest/Client/Q74104ClientConfig")

local this
local subIDs = Q74104ClientConfig.SubIDs
local npcs = Q74104ClientConfig.Npcs
local points = Q74104ClientConfig.Points
local datas = Q74104ClientConfig.Datas

function Q74104Trigger9:OnPostDataPrepare()
    print("[MainId: 74104][Trigger: Q74104Trigger9] OnPostDataPrepare")
    this = self
end

function Q74104Trigger9:OnPostComponentPrepare()
    print("[MainId: 74104][Trigger: Q74104Trigger9] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74104Trigger9:TriggerIn()
    print("[MainId: 74104][Trigger: Q74104Trigger9] TriggerIn")
    local actor = actorMgr:GetActor("74104")
    this:DestroySelf()
    actor:PlayCutsceneIndex(7410417, function(arg1)
        actorMgr:GetActor("74104"):NarratorOnlyTaskByData(datas.NarratorWithId_10, function(arg1)
            local actor = actorMgr:GetActor("74104")
            actorUtils.FinishQuestID(false, 7410416)
        end, 74104)
    end, nil, nil, false)
end

function Q74104Trigger9:PreTriggerIn()
    print("[MainId: 74104][Trigger: Q74104Trigger9] PreTriggerIn")
end

function Q74104Trigger9:LightUpTriggerIn()
    print("[MainId: 74104][Trigger: Q74104Trigger9] LightUpTriggerIn")
end

function Q74104Trigger9:TriggerOut()
    print("[MainId: 74104][Trigger: Q74104Trigger9] TriggerOut")
end

return Q74104Trigger9
