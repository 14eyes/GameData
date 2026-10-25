require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72261Trigger06 = class("Q72261Trigger06", GadgetActorProxy)
Q72261Trigger06.defaultAlias = "Q72261Trigger06"
local Q72261ClientConfig = require("Quest/Client/Q72261ClientConfig")

local subIDs = Q72261ClientConfig.SubIDs
local npcs = Q72261ClientConfig.Npcs
local datas = Q72261ClientConfig.Datas

function Q72261Trigger06:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72261Trigger06:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q72261Trigger06:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("72261")
    actor:NarratorOnlyTask(datas.paimengLiugou7, nil, "")
    actor:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q3_72261_Finish").pos, 0, 2, false, false)
    self:DestroySelf()
end

function Q72261Trigger06:TriggerOut()
    print("TriggerOut")
end

return Q72261Trigger06
