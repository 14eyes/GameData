require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22047 = class("Quest22047", QuestActorProxy)
Quest22047.defaultAlias = "Quest22047"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest22047:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest22047:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2204701"] = self.OnSubStart2204701,
        ["2204702"] = self.OnSubStart2204702,
        ["2204703"] = self.OnSubStart2204703,
        ["2204704"] = self.OnSubStart2204704
    }
end

function Quest22047:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2204701"] = self.OnSubFinish2204701,
        ["2204702"] = self.OnSubFinish2204702,
        ["2204703"] = self.OnSubFinish2204703,
        ["2204704"] = self.OnSubFinish2204704
    }
end

function Quest22047:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2204701"] = self.OnSubFailed2204701,
        ["2204702"] = self.OnSubFailed2204702,
        ["2204703"] = self.OnSubFailed2204703,
        ["2204704"] = self.OnSubFailed2204704
    }
end

function Quest22047:Start()
    print("Start")
end

function Quest22047:OnDestroy()
    print("OnDestroy")
end

function Quest22047:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest22047:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest22047:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc12064Data.alias, 3)
    self:UnSpawn(gadgets.Gadget70350220Data.alias)
    actorMgr:DestroyEntityActor("Q22047Trigger", 3, false)
end

function Quest22047:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest22047:OnSubStart2204701(arg1)
    print("OnSubStart2204701")
    self:LevelLoadFinishSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12064Data.id, 1)
    end)
end

function Quest22047:OnSubFinish2204701(arg1)
    print("OnSubFinish2204701")
    self:CallDelay(1.5, function(arg1)
        arg1:NarratorOnlyTask(datas.NarratorTable01, nil, "")
    end)
end

function Quest22047:OnSubFailed2204701(arg1)
    print("OnSubFailed2204701")
end

function Quest22047:OnSubStart2204702(arg1)
    print("OnSubStart2204702")
    self:UnSpawn(gadgets.Gadget70350220Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70350220Data.id, 1, 0)
    self:LevelLoadFinishSafeCall(function(arg1_2)
        arg1_2:TransmitPlayerById(arg1, 1)
        actorMgr:CreateActorWithPos("Q22047Trigger", "Actor/Gadget/Q22047Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q200918trans").pos, {x = 0, y = 0, z = 0}, true, false)
    end)
end

function Quest22047:OnSubFinish2204702(arg1)
    print("OnSubFinish2204702")
    self:UnSpawn(gadgets.Gadget70350220Data.alias)
    self:CallDelay(1.5, function(arg1)
        arg1:NarratorOnlyTask(datas.NarratorTableSucc, nil, "")
    end)
end

function Quest22047:OnSubFailed2204702(arg1)
    print("OnSubFailed2204702")
    self:ShowBlackScreen(0.5, 2, 0.5, nil, nil, nil, "", false, true)
    self:CallDelay(3.5, function(arg1)
        arg1:NarratorOnlyTask(datas.NarratorTableFail, nil, "")
    end)
end

function Quest22047:OnSubStart2204703(arg1)
    print("OnSubStart2204703")
    self:CreateQuestNpc(arg1, npcs.Npc12064Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc12064Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
end

function Quest22047:OnSubFinish2204703(arg1)
    print("OnSubFinish2204703")
    self:SafeDestroyQuestNpc(npcs.Npc12064Data.alias, 3)
end

function Quest22047:OnSubFailed2204703(arg1)
    print("OnSubFailed2204703")
end

function Quest22047:OnSubStart2204704(arg1)
    print("OnSubStart2204704")
    self:CreateQuestNpc(arg1, npcs.Npc12064Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc12064Data.alias):DoFreeStyle(1260, true, nil, true, true, false)
end

function Quest22047:OnSubFinish2204704(arg1)
    print("OnSubFinish2204704")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc12064Data.alias)
end

function Quest22047:OnSubFailed2204704(arg1)
    print("OnSubFailed2204704")
end

return Quest22047
