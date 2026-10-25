require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7501101_N = class("Q7501101_N", GadgetActorProxy)
Q7501101_N.defaultAlias = "Q7501101_N"
local Q75011ClientConfig = require("Quest/Client/Q75011ClientConfig")

local this
local subIDs = Q75011ClientConfig.SubIDs
local npcs = Q75011ClientConfig.Npcs
local datas = Q75011ClientConfig.Datas

function Q7501101_N:OnPostDataPrepare()
    print("[MainId: 75011][Trigger: Q7501101_N] OnPostDataPrepare")
    this = self
end

function Q7501101_N:OnPostComponentPrepare()
    print("[MainId: 75011][Trigger: Q7501101_N] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75011)
end

function Q7501101_N:TriggerIn()
    print("[MainId: 75011][Trigger: Q7501101_N] TriggerIn")
    actorMgr:GetActor("75011"):QuestNarratorTask(datas.N7501101)
    this:DestroySelf()
end

function Q7501101_N:PreTriggerIn()
    print("[MainId: 75011][Trigger: Q7501101_N] PreTriggerIn")
end

function Q7501101_N:LightUpTriggerIn()
    print("[MainId: 75011][Trigger: Q7501101_N] LightUpTriggerIn")
end

function Q7501101_N:TriggerOut()
    print("[MainId: 75011][Trigger: Q7501101_N] TriggerOut")
end

return Q7501101_N
