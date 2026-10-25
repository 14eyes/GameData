require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74165Trigger_RMD2 = class("Q74165Trigger_RMD2", GadgetActorProxy)
Q74165Trigger_RMD2.defaultAlias = "Q74165Trigger_RMD2"
local Q74165ClientConfig = require("Quest/Client/Q74165ClientConfig")

local this
local subIDs = Q74165ClientConfig.SubIDs
local npcs = Q74165ClientConfig.Npcs
local datas = Q74165ClientConfig.Datas

function Q74165Trigger_RMD2:OnPostDataPrepare()
    print("[MainId: 74165][Trigger: Q74165Trigger_RMD2] OnPostDataPrepare")
    this = self
end

function Q74165Trigger_RMD2:OnPostComponentPrepare()
    print("[MainId: 74165][Trigger: Q74165Trigger_RMD2] OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74165Trigger_RMD2:TriggerIn()
    print("[MainId: 74165][Trigger: Q74165Trigger_RMD2] TriggerIn")
    actorMgr:GetActor("74165"):NarratorOnlyTaskByData(datas.NarratorWithId2)
    this:DestroySelf()
end

function Q74165Trigger_RMD2:PreTriggerIn()
    print("[MainId: 74165][Trigger: Q74165Trigger_RMD2] PreTriggerIn")
end

function Q74165Trigger_RMD2:LightUpTriggerIn()
    print("[MainId: 74165][Trigger: Q74165Trigger_RMD2] LightUpTriggerIn")
end

function Q74165Trigger_RMD2:TriggerOut()
    print("[MainId: 74165][Trigger: Q74165Trigger_RMD2] TriggerOut")
end

return Q74165Trigger_RMD2
