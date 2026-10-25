require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400201_TransNarratorTrigger = class("Q400201_TransNarratorTrigger", GadgetActorProxy)
Q400201_TransNarratorTrigger.defaultAlias = "Q400201_TransNarratorTrigger"
local Q4002ClientConfig = require("Quest/Client/Q4002ClientConfig")

local this
local subIDs = Q4002ClientConfig.SubIDs
local npcs = Q4002ClientConfig.Npcs
local points = Q4002ClientConfig.Points
local datas = Q4002ClientConfig.Datas

function Q400201_TransNarratorTrigger:OnPostDataPrepare()
    print("[MainId: 4002][Trigger: Q400201_TransNarratorTrigger] OnPostDataPrepare")
    this = self
end

function Q400201_TransNarratorTrigger:OnPostComponentPrepare()
    print("[MainId: 4002][Trigger: Q400201_TransNarratorTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400201_TransNarratorTrigger:TriggerIn()
    print("[MainId: 4002][Trigger: Q400201_TransNarratorTrigger] TriggerIn")
    this:DestroySelf()
end

function Q400201_TransNarratorTrigger:PreTriggerIn()
    print("[MainId: 4002][Trigger: Q400201_TransNarratorTrigger] PreTriggerIn")
end

function Q400201_TransNarratorTrigger:LightUpTriggerIn()
    print("[MainId: 4002][Trigger: Q400201_TransNarratorTrigger] LightUpTriggerIn")
    actorMgr:GetActor("4002"):NarratorOnlyTaskByData(datas.Narrator_400201, nil, 4002)
end

function Q400201_TransNarratorTrigger:TriggerOut()
    print("[MainId: 4002][Trigger: Q400201_TransNarratorTrigger] TriggerOut")
end

return Q400201_TransNarratorTrigger
