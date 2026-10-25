require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1029Trigger2 = class("Q1029Trigger2", GadgetActorProxy)
Q1029Trigger2.defaultAlias = "Q1029Trigger2"
local Q1029ClientConfig = require("Quest/Client/Q1029ClientConfig")

local subIDs = Q1029ClientConfig.SubIDs
local npcs = Q1029ClientConfig.Npcs
local datas = Q1029ClientConfig.Datas

function Q1029Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1029Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1029Trigger2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("1029"):PlayEffect("Eff_Censer_Empty_SoundCyAQ3", sceneData:GetDummyPoint(20130, "PlayAudio3").pos, nil, nil, false)
    self:DestroySelf()
end

function Q1029Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q1029Trigger2
