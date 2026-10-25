require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1029Trigger1 = class("Q1029Trigger1", GadgetActorProxy)
Q1029Trigger1.defaultAlias = "Q1029Trigger1"
local Q1029ClientConfig = require("Quest/Client/Q1029ClientConfig")

local subIDs = Q1029ClientConfig.SubIDs
local npcs = Q1029ClientConfig.Npcs
local datas = Q1029ClientConfig.Datas

function Q1029Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1029Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1029Trigger1:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("1029")
    actor:PlayEffect("Eff_Censer_Empty_SoundCyAQ2", sceneData:GetDummyPoint(20130, "PlayAudio2").pos, nil, nil, false)
    actor:NarratorOnlyTaskByData(datas.Yanfeikaiche2, nil, 1029)
    self:DestroySelf()
end

function Q1029Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q1029Trigger1
