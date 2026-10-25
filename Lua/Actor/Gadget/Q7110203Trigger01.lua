require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7110203Trigger01 = class("Q7110203Trigger01", GadgetActorProxy)
Q7110203Trigger01.defaultAlias = "Q7110203Trigger01"
local Q71102ClientConfig = require("Quest/Client/Q71102ClientConfig")

local this
local subIDs = Q71102ClientConfig.SubIDs
local npcs = Q71102ClientConfig.Npcs
local points = Q71102ClientConfig.Points
local datas = Q71102ClientConfig.Datas

function Q7110203Trigger01:OnPostDataPrepare()
    print("[MainId: 71102][Trigger: Q7110203Trigger01] OnPostDataPrepare")
    this = self
end

function Q7110203Trigger01:OnPostComponentPrepare()
    print("[MainId: 71102][Trigger: Q7110203Trigger01] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7110203Trigger01:TriggerIn()
    print("[MainId: 71102][Trigger: Q7110203Trigger01] TriggerIn")
    actorMgr:GetActor("71102"):CallDelayByQuest("", 2, function(arg1)
        actorMgr:GetActor("71102"):NarratorOnlyTaskByData(datas.Narrator_7110203)
        this:DestroySelf()
    end)
end

function Q7110203Trigger01:PreTriggerIn()
    print("[MainId: 71102][Trigger: Q7110203Trigger01] PreTriggerIn")
end

function Q7110203Trigger01:LightUpTriggerIn()
    print("[MainId: 71102][Trigger: Q7110203Trigger01] LightUpTriggerIn")
end

function Q7110203Trigger01:TriggerOut()
    print("[MainId: 71102][Trigger: Q7110203Trigger01] TriggerOut")
end

return Q7110203Trigger01
