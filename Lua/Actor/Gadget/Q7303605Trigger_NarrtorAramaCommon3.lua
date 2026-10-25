require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7303605Trigger_NarrtorAramaCommon3 = class("Q7303605Trigger_NarrtorAramaCommon3", GadgetActorProxy)
Q7303605Trigger_NarrtorAramaCommon3.defaultAlias = "Q7303605Trigger_NarrtorAramaCommon3"
local Q73036ClientConfig = require("Quest/Client/Q73036ClientConfig")

local this
local subIDs = Q73036ClientConfig.SubIDs
local npcs = Q73036ClientConfig.Npcs
local datas = Q73036ClientConfig.Datas

function Q7303605Trigger_NarrtorAramaCommon3:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7303605Trigger_NarrtorAramaCommon3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCubeShapeTrigger(30, 5, 20, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7303605Trigger_NarrtorAramaCommon3:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73036"):NarratorOnlyTask(datas.NarratorTable_AramaCommon3, nil, "")
    this:DestroySelf()
end

function Q7303605Trigger_NarrtorAramaCommon3:TriggerOut()
    print("TriggerOut")
end

return Q7303605Trigger_NarrtorAramaCommon3
