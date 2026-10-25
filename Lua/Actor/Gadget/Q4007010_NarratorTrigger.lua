require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007010_NarratorTrigger = class("Q4007010_NarratorTrigger", GadgetActorProxy)
Q4007010_NarratorTrigger.defaultAlias = "Q4007010_NarratorTrigger"
local Q40070ClientConfig = require("Quest/Client/Q40070ClientConfig")

local subIDs = Q40070ClientConfig.SubIDs
local npcs = Q40070ClientConfig.Npcs
local datas = Q40070ClientConfig.Datas

function Q4007010_NarratorTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007010_NarratorTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007010_NarratorTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40070"):CallDelay(1, function(arg1)
        actorMgr:GetActor("40070"):LevelLoadFinishSafeCall(function(arg1)
            actorMgr:GetActor("40070"):NarratorOnlyTaskByData(datas.Narrator_4007002, nil, 40070)
        end)
    end)

    self:DestroySelf()
end

function Q4007010_NarratorTrigger:TriggerOut()
    print("TriggerOut")
end

return Q4007010_NarratorTrigger
