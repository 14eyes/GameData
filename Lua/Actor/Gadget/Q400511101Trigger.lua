require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400511101Trigger = class("Q400511101Trigger", GadgetActorProxy)
Q400511101Trigger.defaultAlias = "Q400511101Trigger"
local Q40051ClientConfig = require("Quest/Client/Q40051ClientConfig")

local subIDs = Q40051ClientConfig.SubIDs
local npcs = Q40051ClientConfig.Npcs
local datas = Q40051ClientConfig.Datas

function Q400511101Trigger:FuncBegin()
    print("FuncBegin")
    local actor = actorMgr:GetActor("40051")
    actor:ShowBlackScreen(0.5, 2, 0.5, nil, nil, nil, "", false, true)
    actor:CreateQuestNpcById(4005106, npcs.PaimonData.id, 1)
    actor:TransmitPlayerByQuestId(4005106, 1)
end

function Q400511101Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q400511101Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(100, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q400511101Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40051"):LevelLoadFinishSafeCall(self.FuncBegin)
    self:DestroySelf()
end

function Q400511101Trigger:TriggerOut()
    print("TriggerOut")
end

return Q400511101Trigger
