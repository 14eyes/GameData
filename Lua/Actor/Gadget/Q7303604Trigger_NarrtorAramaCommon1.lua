require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7303604Trigger_NarrtorAramaCommon1 = class("Q7303604Trigger_NarrtorAramaCommon1", GadgetActorProxy)
Q7303604Trigger_NarrtorAramaCommon1.defaultAlias = "Q7303604Trigger_NarrtorAramaCommon1"
local Q73036ClientConfig = require("Quest/Client/Q73036ClientConfig")

local this
local subIDs = Q73036ClientConfig.SubIDs
local npcs = Q73036ClientConfig.Npcs
local datas = Q73036ClientConfig.Datas

function Q7303604Trigger_NarrtorAramaCommon1:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7303604Trigger_NarrtorAramaCommon1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCubeShapeTrigger(30, 5, 20, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7303604Trigger_NarrtorAramaCommon1:TriggerIn()
    print("TriggerIn")
    if actorMgr:GetActor("73036"):GetSubQuestState(302819) ~= 3 then
        actorMgr:GetActor("73036"):NarratorOnlyTask(datas.NarratorTable_AramaCommon1, nil, "")
        this:DestroySelf()
    else
        actorMgr:GetActor("73036"):NarratorOnlyTaskByData(datas.NarratorWithId_AramaCommon1new)
        this:DestroySelf()
    end
end

function Q7303604Trigger_NarrtorAramaCommon1:TriggerOut()
    print("TriggerOut")
end

return Q7303604Trigger_NarrtorAramaCommon1
