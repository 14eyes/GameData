require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40048BookTrigger = class("Q40048BookTrigger", GadgetActorProxy)
Q40048BookTrigger.defaultAlias = "Q40048BookTrigger"
local Q40048ClientConfig = require("Quest/Client/Q40048ClientConfig")

local subIDs = Q40048ClientConfig.SubIDs
local datas = Q40048ClientConfig.Datas

function Q40048BookTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40048BookTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40048BookTrigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40048")
    actor:NarratorOnlyTaskByData(datas.NarratorWithId4004803, nil, 40048)
    actor:EnterSceneLookCamera(sceneData:GetDummyPoint(7, "Q4004801_book").pos, 0, 2, false, false)
    self:DestroySelf()
end

function Q40048BookTrigger:TriggerOut()
    print("TriggerOut")
end

return Q40048BookTrigger
