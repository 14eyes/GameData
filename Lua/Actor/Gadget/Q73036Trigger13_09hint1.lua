require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73036Trigger13_09hint1 = class("Q73036Trigger13_09hint1", GadgetActorProxy)
Q73036Trigger13_09hint1.defaultAlias = "Q73036Trigger13_09hint1"
local Q73036ClientConfig = require("Quest/Client/Q73036ClientConfig")

local this
local subIDs = Q73036ClientConfig.SubIDs
local npcs = Q73036ClientConfig.Npcs
local datas = Q73036ClientConfig.Datas

function Q73036Trigger13_09hint1:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q73036Trigger13_09hint1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(15, 10, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73036Trigger13_09hint1:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("73036")
    actor:NarratorOnlyTask(datas.NarratorTable_Arama13, nil, "")
    actor:CallDelay(5, function(arg1)
        actorMgr:GetActor("73036"):NarratorOnlyTask(datas.NarratorTable_Arama14, nil, "")
    end)

    actor:CallDelay(15, function(arg1)
        actorMgr:GetActor("73036"):NarratorOnlyTask(datas.NarratorTable_Arama15, nil, "")
    end)

    actor:CallDelay(25, function(arg1)
        actorMgr:GetActor("73036"):NarratorOnlyTask(datas.NarratorTable_Arama16, function(arg1)
            actorMgr:GetActor("73036"):CallDelay(3, function(arg1)
                actorUtils.FinishQuestID(false, 7303609)
            end)
        end, "")
    end)

    this:DestroySelf()
end

function Q73036Trigger13_09hint1:TriggerOut()
    print("TriggerOut")
end

return Q73036Trigger13_09hint1
