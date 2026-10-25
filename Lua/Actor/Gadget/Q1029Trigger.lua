require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1029Trigger = class("Q1029Trigger", GadgetActorProxy)
Q1029Trigger.defaultAlias = "Q1029Trigger"
local Q1029ClientConfig = require("Quest/Client/Q1029ClientConfig")

local subIDs = Q1029ClientConfig.SubIDs
local npcs = Q1029ClientConfig.Npcs
local datas = Q1029ClientConfig.Datas

function Q1029Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1029Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.OnPostDataPrepare, self.TriggerOut)
end

function Q1029Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("1029"):PlayEffect("Eff_Censer_Empty_SoundCyAQ1", sceneData:GetDummyPoint(20130, "PlayAudio1").pos, nil, nil, false)
    self:DestroySelf()
end

function Q1029Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1029Trigger
