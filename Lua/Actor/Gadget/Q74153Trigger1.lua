require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74153Trigger1 = class("Q74153Trigger1", GadgetActorProxy)
Q74153Trigger1.defaultAlias = "Q74153Trigger1"
local Q74153ClientConfig = require("Quest/Client/Q74153ClientConfig")

local this
local subIDs = Q74153ClientConfig.SubIDs
local npcs = Q74153ClientConfig.Npcs
local datas = Q74153ClientConfig.Datas

function Q74153Trigger1:OnPostDataPrepare()
    print("[MainId: 74153][Trigger: Q74153Trigger1] OnPostDataPrepare")
    this = self
end

function Q74153Trigger1:OnPostComponentPrepare()
    print("[MainId: 74153][Trigger: Q74153Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(14, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74153Trigger1:TriggerIn()
    print("[MainId: 74153][Trigger: Q74153Trigger1] TriggerIn")
    actorMgr:GetActor("74153"):NarratorOnlyTaskByData(datas.Narrator_7415301, function(arg1)
        local actor = actorMgr:GetActor("74153")
        actorUtils.FinishQuestID(false, 7415306)
        this:DestroySelf()
    end)
end

function Q74153Trigger1:PreTriggerIn()
    print("[MainId: 74153][Trigger: Q74153Trigger1] PreTriggerIn")
end

function Q74153Trigger1:LightUpTriggerIn()
    print("[MainId: 74153][Trigger: Q74153Trigger1] LightUpTriggerIn")
end

function Q74153Trigger1:TriggerOut()
    print("[MainId: 74153][Trigger: Q74153Trigger1] TriggerOut")
end

return Q74153Trigger1
