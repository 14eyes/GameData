require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400108_NarratorTrigger = class("Q400108_NarratorTrigger", GadgetActorProxy)
Q400108_NarratorTrigger.defaultAlias = "Q400108_NarratorTrigger"
local Q4001ClientConfig = require("Quest/Client/Q4001ClientConfig")

local this
local subIDs = Q4001ClientConfig.SubIDs
local npcs = Q4001ClientConfig.Npcs
local points = Q4001ClientConfig.Points
local datas = Q4001ClientConfig.Datas

function Q400108_NarratorTrigger:OnPostDataPrepare()
    print("[MainId: 4001][Trigger: Q400108_NarratorTrigger] OnPostDataPrepare")
    this = self
end

function Q400108_NarratorTrigger:OnPostComponentPrepare()
    print("[MainId: 4001][Trigger: Q400108_NarratorTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400108_NarratorTrigger:TriggerIn()
    print("[MainId: 4001][Trigger: Q400108_NarratorTrigger] TriggerIn")
end

function Q400108_NarratorTrigger:PreTriggerIn()
    print("[MainId: 4001][Trigger: Q400108_NarratorTrigger] PreTriggerIn")
end

function Q400108_NarratorTrigger:LightUpTriggerIn()
    print("[MainId: 4001][Trigger: Q400108_NarratorTrigger] LightUpTriggerIn")
end

function Q400108_NarratorTrigger:TriggerOut()
    print("[MainId: 4001][Trigger: Q400108_NarratorTrigger] TriggerOut")
    actorMgr:GetActor("4001"):AfterMainPageActiveSafeCall(function(arg1)
        actorMgr:GetActor("4001"):NarratorOnlyTaskByData(datas.Narrator_400104, nil, 4001)
        this:DestroySelf()
    end)
end

return Q400108_NarratorTrigger
