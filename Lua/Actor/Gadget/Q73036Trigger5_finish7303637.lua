require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73036Trigger5_finish7303637 = class("Q73036Trigger5_finish7303637", GadgetActorProxy)
Q73036Trigger5_finish7303637.defaultAlias = "Q73036Trigger5_finish7303637"
local Q73036ClientConfig = require("Quest/Client/Q73036ClientConfig")

local this
local subIDs = Q73036ClientConfig.SubIDs
local npcs = Q73036ClientConfig.Npcs
local datas = Q73036ClientConfig.Datas

function Q73036Trigger5_finish7303637:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q73036Trigger5_finish7303637:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(20, 10, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73036Trigger5_finish7303637:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7303637)
    actorMgr:GetActor("73036"):CallDelay(2, function(arg1)
        actorMgr:GetActor("73036"):NarratorOnlyTask(datas.NarratorTable_Arama18, nil, "")
    end)

    this:DestroySelf()
end

function Q73036Trigger5_finish7303637:TriggerOut()
    print("TriggerOut")
end

return Q73036Trigger5_finish7303637
