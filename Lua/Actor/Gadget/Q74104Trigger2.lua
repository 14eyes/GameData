require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74104Trigger2 = class("Q74104Trigger2", GadgetActorProxy)
Q74104Trigger2.defaultAlias = "Q74104Trigger2"
local Q74104ClientConfig = require("Quest/Client/Q74104ClientConfig")

local this
local subIDs = Q74104ClientConfig.SubIDs
local npcs = Q74104ClientConfig.Npcs
local points = Q74104ClientConfig.Points
local datas = Q74104ClientConfig.Datas

function Q74104Trigger2:OnPostDataPrepare()
    print("[MainId: 74104][Trigger: Q74104Trigger2] OnPostDataPrepare")
    this = self
end

function Q74104Trigger2:OnPostComponentPrepare()
    print("[MainId: 74104][Trigger: Q74104Trigger2] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74104Trigger2:TriggerIn()
    print("[MainId: 74104][Trigger: Q74104Trigger2] TriggerIn")
    local actor = actorMgr:GetActor("74104")
    this:DestroySelf()
    actor:NarratorOnlyTaskByData(datas.NarratorWithId_15, function(arg1)
        local actor = actorMgr:GetActor("74104")
        actorUtils.FinishQuestID(false, 7410403)
    end, 74104)
end

function Q74104Trigger2:PreTriggerIn()
    print("[MainId: 74104][Trigger: Q74104Trigger2] PreTriggerIn")
end

function Q74104Trigger2:LightUpTriggerIn()
    print("[MainId: 74104][Trigger: Q74104Trigger2] LightUpTriggerIn")
end

function Q74104Trigger2:TriggerOut()
    print("[MainId: 74104][Trigger: Q74104Trigger2] TriggerOut")
end

return Q74104Trigger2
