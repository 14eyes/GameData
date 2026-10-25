require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74104Trigger13 = class("Q74104Trigger13", GadgetActorProxy)
Q74104Trigger13.defaultAlias = "Q74104Trigger13"
local Q74104ClientConfig = require("Quest/Client/Q74104ClientConfig")

local this
local subIDs = Q74104ClientConfig.SubIDs
local npcs = Q74104ClientConfig.Npcs
local points = Q74104ClientConfig.Points
local datas = Q74104ClientConfig.Datas

function Q74104Trigger13:OnPostDataPrepare()
    print("[MainId: 74104][Trigger: Q74104Trigger13] OnPostDataPrepare")
    this = self
end

function Q74104Trigger13:OnPostComponentPrepare()
    print("[MainId: 74104][Trigger: Q74104Trigger13] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74104Trigger13:TriggerIn()
    print("[MainId: 74104][Trigger: Q74104Trigger13] TriggerIn")
    local actor = actorMgr:GetActor("74104")
    this:DestroySelf()
    actor:NarratorOnlyTaskByData(datas.NarratorWithId_13, function(arg1)
        local actor = actorMgr:GetActor("74104")
        actorUtils.FinishQuestID(false, 7410446)
    end, 74104)
end

function Q74104Trigger13:PreTriggerIn()
    print("[MainId: 74104][Trigger: Q74104Trigger13] PreTriggerIn")
end

function Q74104Trigger13:LightUpTriggerIn()
    print("[MainId: 74104][Trigger: Q74104Trigger13] LightUpTriggerIn")
end

function Q74104Trigger13:TriggerOut()
    print("[MainId: 74104][Trigger: Q74104Trigger13] TriggerOut")
end

return Q74104Trigger13
