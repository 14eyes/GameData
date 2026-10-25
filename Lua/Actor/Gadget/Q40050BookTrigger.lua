require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40050BookTrigger = class("Q40050BookTrigger", GadgetActorProxy)
Q40050BookTrigger.defaultAlias = "Q40050BookTrigger"
local Q40050ClientConfig = require("Quest/Client/Q40050ClientConfig")

local subIDs = Q40050ClientConfig.SubIDs
local datas = Q40050ClientConfig.Datas

function Q40050BookTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40050BookTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40050BookTrigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40050")
    actor:EnterSceneLookCamera(sceneData:GetDummyPoint(7, "Q4005001_book").pos, 0, 3, false, false)
    actor:NarratorOnlyTaskByData(datas.NarratorWithId4005002, nil, 40050)
    self:DestroySelf()
end

function Q40050BookTrigger:TriggerOut()
    print("TriggerOut")
end

return Q40050BookTrigger
