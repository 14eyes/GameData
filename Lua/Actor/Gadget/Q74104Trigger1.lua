require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74104Trigger1 = class("Q74104Trigger1", GadgetActorProxy)
Q74104Trigger1.defaultAlias = "Q74104Trigger1"
local Q74104ClientConfig = require("Quest/Client/Q74104ClientConfig")

local this
local subIDs = Q74104ClientConfig.SubIDs
local npcs = Q74104ClientConfig.Npcs
local points = Q74104ClientConfig.Points
local datas = Q74104ClientConfig.Datas

function Q74104Trigger1:OnPostDataPrepare()
    print("[MainId: 74104][Trigger: Q74104Trigger1] OnPostDataPrepare")
    this = self
end

function Q74104Trigger1:OnPostComponentPrepare()
    print("[MainId: 74104][Trigger: Q74104Trigger1] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(20, 95, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74104Trigger1:TriggerIn()
    print("[MainId: 74104][Trigger: Q74104Trigger1] TriggerIn")
    local actor = actorMgr:GetActor("74104")
    this:DestroySelf()
    actor:NarratorOnlyTaskByData(datas.NarratorWithId, function(arg1)
        actorMgr:GetActor("74104"):CallDelayByQuest("1", 2, function(arg1)
            actorMgr:GetActor("74104"):NarratorOnlyTaskByData(datas.NarratorWithId_08, function(arg1)
                local actor = actorMgr:GetActor("74104")
                actorUtils.FinishQuestID(false, 7410402)
            end, 74104)
        end)
    end, 74104)
end

function Q74104Trigger1:PreTriggerIn()
    print("[MainId: 74104][Trigger: Q74104Trigger1] PreTriggerIn")
end

function Q74104Trigger1:LightUpTriggerIn()
    print("[MainId: 74104][Trigger: Q74104Trigger1] LightUpTriggerIn")
end

function Q74104Trigger1:TriggerOut()
    print("[MainId: 74104][Trigger: Q74104Trigger1] TriggerOut")
end

return Q74104Trigger1
