require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12028Trigger1 = class("Q12028Trigger1", GadgetActorProxy)
Q12028Trigger1.defaultAlias = "Q12028Trigger1"
local Q12028ClientConfig = require("Quest/Client/Q12028ClientConfig")

local subIDs = Q12028ClientConfig.SubIDs
local npcs = Q12028ClientConfig.Npcs
local gadgets = Q12028ClientConfig.Gadgets
local datas = Q12028ClientConfig.Datas

function Q12028Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12028Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12028Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12028"):NarratorOnlyTaskByData(datas.NarratorWithId1)
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q1202806_T1202806_N12363").pos, 1, 3, true)
    self:DestroySelf()
end

function Q12028Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q12028Trigger1
