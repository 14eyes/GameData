require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006617_TransTrigger = class("Q4006617_TransTrigger", GadgetActorProxy)
Q4006617_TransTrigger.defaultAlias = "Q4006617_TransTrigger"
local Q40066ClientConfig = require("Quest/Client/Q40066ClientConfig")

local subIDs = Q40066ClientConfig.SubIDs
local npcs = Q40066ClientConfig.Npcs
local datas = Q40066ClientConfig.Datas

function Q4006617_TransTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006617_TransTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(222.7888, 64.97368, 54.99533, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006617_TransTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40066"):LevelLoadFinishSafeCall(function(arg1)
        actorMgr:GetActor("40066"):TransmitPlayerWithTextByQuestId(4006616, 1, nil, 1)
    end)

    self:DestroySelf()
end

function Q4006617_TransTrigger:TriggerOut()
    print("TriggerOut")
end

return Q4006617_TransTrigger
