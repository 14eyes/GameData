require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q79075Trigger_RMD = class("Q79075Trigger_RMD", GadgetActorProxy)
Q79075Trigger_RMD.defaultAlias = "Q79075Trigger_RMD"
local Q79075ClientConfig = require("Quest/Client/Q79075ClientConfig")

local this
local subIDs = Q79075ClientConfig.SubIDs
local npcs = Q79075ClientConfig.Npcs
local datas = Q79075ClientConfig.Datas

function Q79075Trigger_RMD:OnPostDataPrepare()
    print("[MainId: 79075][Trigger: Q79075Trigger_RMD] OnPostDataPrepare")
    this = self
end

function Q79075Trigger_RMD:OnPostComponentPrepare()
    print("[MainId: 79075][Trigger: Q79075Trigger_RMD] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(15, 15, 5, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 79075)
end

function Q79075Trigger_RMD:TriggerIn()
    print("[MainId: 79075][Trigger: Q79075Trigger_RMD] TriggerIn")
    actorMgr:GetActor("79075"):QuestNarratorTask(datas.NarratorWithIdWind)
    this:DestroySelf()
end

function Q79075Trigger_RMD:PreTriggerIn()
    print("[MainId: 79075][Trigger: Q79075Trigger_RMD] PreTriggerIn")
end

function Q79075Trigger_RMD:LightUpTriggerIn()
    print("[MainId: 79075][Trigger: Q79075Trigger_RMD] LightUpTriggerIn")
end

function Q79075Trigger_RMD:TriggerOut()
    print("[MainId: 79075][Trigger: Q79075Trigger_RMD] TriggerOut")
end

return Q79075Trigger_RMD
