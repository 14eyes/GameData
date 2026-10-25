require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7408124Trigger = class("Q7408124Trigger", GadgetActorProxy)
Q7408124Trigger.defaultAlias = "Q7408124Trigger"
local Q74081ClientConfig = require("Quest/Client/Q74081ClientConfig")

local this
local subIDs = Q74081ClientConfig.SubIDs
local npcs = Q74081ClientConfig.Npcs
local datas = Q74081ClientConfig.Datas

function Q7408124Trigger:OnPostDataPrepare()
    print("[MainId: 74081][Trigger: Q7408124Trigger] OnPostDataPrepare")
    this = self
end

function Q7408124Trigger:OnPostComponentPrepare()
    print("[MainId: 74081][Trigger: Q7408124Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7408124Trigger:TriggerIn()
    print("[MainId: 74081][Trigger: Q7408124Trigger] TriggerIn")
    actorMgr:GetActor("74081"):NarratorOnlyTaskByData(datas.NarratorWithId7408124)
    this:DestroySelf()
end

function Q7408124Trigger:PreTriggerIn()
    print("[MainId: 74081][Trigger: Q7408124Trigger] PreTriggerIn")
end

function Q7408124Trigger:LightUpTriggerIn()
    print("[MainId: 74081][Trigger: Q7408124Trigger] LightUpTriggerIn")
end

function Q7408124Trigger:TriggerOut()
    print("[MainId: 74081][Trigger: Q7408124Trigger] TriggerOut")
end

return Q7408124Trigger
