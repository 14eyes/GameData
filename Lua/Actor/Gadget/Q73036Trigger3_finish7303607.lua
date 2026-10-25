require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73036Trigger3_finish7303607 = class("Q73036Trigger3_finish7303607", GadgetActorProxy)
Q73036Trigger3_finish7303607.defaultAlias = "Q73036Trigger3_finish7303607"
local Q73036ClientConfig = require("Quest/Client/Q73036ClientConfig")

local this
local subIDs = Q73036ClientConfig.SubIDs
local npcs = Q73036ClientConfig.Npcs
local datas = Q73036ClientConfig.Datas

function Q73036Trigger3_finish7303607:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q73036Trigger3_finish7303607:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCubeShapeTrigger(50, 3, 30, true, {x = 0.0, y = 10.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73036Trigger3_finish7303607:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("73036")
    actor:EnablePlayerInput(false)
    actor:EnterSceneLookCamera({x = -593.0, y = 35.0, z = 3808.0}, 1, 3, true, false)
    actor:NarratorOnlyTask(datas.NarratorTable_Arama12, nil, "")
    actor:CallDelay(3, function(arg1)
        actorMgr:GetActor("73036"):EnablePlayerInput(true)
    end)

    actor:CallDelay(12, function(arg1)
        actorUtils.FinishQuestID(false, 7303607)
    end)

    this:DestroySelf()
end

function Q73036Trigger3_finish7303607:TriggerOut()
    print("TriggerOut")
end

return Q73036Trigger3_finish7303607
