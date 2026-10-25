require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73036Trigger13_07hint1 = class("Q73036Trigger13_07hint1", GadgetActorProxy)
Q73036Trigger13_07hint1.defaultAlias = "Q73036Trigger13_07hint1"
local Q73036ClientConfig = require("Quest/Client/Q73036ClientConfig")

local subIDs = Q73036ClientConfig.SubIDs
local npcs = Q73036ClientConfig.Npcs
local datas = Q73036ClientConfig.Datas

function Q73036Trigger13_07hint1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73036Trigger13_07hint1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCylinderShapeTrigger(27.90872, 6.572011, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73036Trigger13_07hint1:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("73036")
    actor:NarratorOnlyTask(datas.NarratorTable_Arama13, nil, "")
    actor:CallDelay(5, function(arg1)
        actorMgr:GetActor("73036"):NarratorOnlyTask(datas.NarratorTable_Arama14, nil, "")
    end)

    actor:CallDelay(14, function(arg1)
        actorMgr:GetActor("73036"):NarratorOnlyTask(datas.NarratorTable_Arama15, nil, "")
    end)

    actor:CallDelay(24, function(arg1)
        actorMgr:GetActor("73036"):NarratorOnlyTask(datas.NarratorTable_Arama15, function(arg1)
            actorMgr:GetActor("73036"):CallDelay(4, function(arg1)
                actorUtils.FinishQuestID(false, 7303607)
            end)
        end, "")
    end)

    self:DestroySelf()
end

function Q73036Trigger13_07hint1:TriggerOut()
    print("TriggerOut")
end

return Q73036Trigger13_07hint1
