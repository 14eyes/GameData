require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7404207RmdTrigger = class("Q7404207RmdTrigger", GadgetActorProxy)
Q7404207RmdTrigger.defaultAlias = "Q7404207RmdTrigger"
local Q74042ClientConfig = require("Quest/Client/Q74042ClientConfig")

local this
local subIDs = Q74042ClientConfig.SubIDs
local npcs = Q74042ClientConfig.Npcs
local datas = Q74042ClientConfig.Datas

function Q7404207RmdTrigger:OnPostDataPrepare()
    print("[MainId: 74042][Trigger: Q7404207RmdTrigger] OnPostDataPrepare")
    this = self
end

function Q7404207RmdTrigger:OnPostComponentPrepare()
    print("[MainId: 74042][Trigger: Q7404207RmdTrigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(15, 15, 15, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7404207RmdTrigger:TriggerIn()
    print("[MainId: 74042][Trigger: Q7404207RmdTrigger] TriggerIn")
    actorMgr:GetActor("74042"):NarratorOnlyTaskByData(datas.NarratorWithId)
    this:DestroySelf()
end

function Q7404207RmdTrigger:PreTriggerIn()
    print("[MainId: 74042][Trigger: Q7404207RmdTrigger] PreTriggerIn")
end

function Q7404207RmdTrigger:LightUpTriggerIn()
    print("[MainId: 74042][Trigger: Q7404207RmdTrigger] LightUpTriggerIn")
end

function Q7404207RmdTrigger:TriggerOut()
    print("[MainId: 74042][Trigger: Q7404207RmdTrigger] TriggerOut")
end

return Q7404207RmdTrigger
