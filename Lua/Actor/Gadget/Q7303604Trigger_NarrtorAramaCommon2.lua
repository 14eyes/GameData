require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7303604Trigger_NarrtorAramaCommon2 = class("Q7303604Trigger_NarrtorAramaCommon2", GadgetActorProxy)
Q7303604Trigger_NarrtorAramaCommon2.defaultAlias = "Q7303604Trigger_NarrtorAramaCommon2"
local Q73036ClientConfig = require("Quest/Client/Q73036ClientConfig")

local this
local subIDs = Q73036ClientConfig.SubIDs
local npcs = Q73036ClientConfig.Npcs
local datas = Q73036ClientConfig.Datas

function Q7303604Trigger_NarrtorAramaCommon2:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7303604Trigger_NarrtorAramaCommon2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCubeShapeTrigger(30, 5, 20, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7303604Trigger_NarrtorAramaCommon2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73036"):NarratorOnlyTask(datas.NarratorTable_AramaCommon2new, nil, "")
    this:DestroySelf()
end

function Q7303604Trigger_NarrtorAramaCommon2:TriggerOut()
    print("TriggerOut")
end

return Q7303604Trigger_NarrtorAramaCommon2
