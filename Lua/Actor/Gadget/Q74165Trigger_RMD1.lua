require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74165Trigger_RMD1 = class("Q74165Trigger_RMD1", GadgetActorProxy)
Q74165Trigger_RMD1.defaultAlias = "Q74165Trigger_RMD1"
local Q74165ClientConfig = require("Quest/Client/Q74165ClientConfig")

local this
local subIDs = Q74165ClientConfig.SubIDs
local npcs = Q74165ClientConfig.Npcs
local datas = Q74165ClientConfig.Datas

function Q74165Trigger_RMD1:OnPostDataPrepare()
    print("[MainId: 74165][Trigger: Q74165Trigger_RMD1] OnPostDataPrepare")
    this = self
end

function Q74165Trigger_RMD1:OnPostComponentPrepare()
    print("[MainId: 74165][Trigger: Q74165Trigger_RMD1] OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74165Trigger_RMD1:TriggerIn()
    print("[MainId: 74165][Trigger: Q74165Trigger_RMD1] TriggerIn")
    actorMgr:GetActor("74165"):NarratorOnlyTaskByData(datas.NarratorWithId1)
    this:DestroySelf()
end

function Q74165Trigger_RMD1:PreTriggerIn()
    print("[MainId: 74165][Trigger: Q74165Trigger_RMD1] PreTriggerIn")
end

function Q74165Trigger_RMD1:LightUpTriggerIn()
    print("[MainId: 74165][Trigger: Q74165Trigger_RMD1] LightUpTriggerIn")
end

function Q74165Trigger_RMD1:TriggerOut()
    print("[MainId: 74165][Trigger: Q74165Trigger_RMD1] TriggerOut")
end

return Q74165Trigger_RMD1
