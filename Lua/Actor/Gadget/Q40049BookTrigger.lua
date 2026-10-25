require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40049BookTrigger = class("Q40049BookTrigger", GadgetActorProxy)
Q40049BookTrigger.defaultAlias = "Q40049BookTrigger"
local Q40049ClientConfig = require("Quest/Client/Q40049ClientConfig")

local subIDs = Q40049ClientConfig.SubIDs
local datas = Q40049ClientConfig.Datas

function Q40049BookTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40049BookTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40049BookTrigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40049")
    actor:EnterSceneLookCamera(sceneData:GetDummyPoint(7, "Q4004901_book").pos, 0, 3, false, false)
    actor:NarratorOnlyTaskByData(datas.NarratorWithId4004902, nil, 40049)
    self:DestroySelf()
end

function Q40049BookTrigger:TriggerOut()
    print("TriggerOut")
end

return Q40049BookTrigger
