require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22038 = class("Quest22038", QuestActorProxy)
Quest22038.defaultAlias = "Quest22038"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest22038:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest22038:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2203801"] = self.OnSubStart2203801,
        ["2203802"] = self.OnSubStart2203802,
        ["2203803"] = self.OnSubStart2203803,
        ["2203804"] = self.OnSubStart2203804
    }
end

function Quest22038:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2203801"] = self.OnSubFinish2203801,
        ["2203802"] = self.OnSubFinish2203802,
        ["2203803"] = self.OnSubFinish2203803,
        ["2203804"] = self.OnSubFinish2203804
    }
end

function Quest22038:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2203801"] = self.OnSubFailed2203801,
        ["2203802"] = self.OnSubFailed2203802,
        ["2203803"] = self.OnSubFailed2203803,
        ["2203804"] = self.OnSubFailed2203804
    }
end

function Quest22038:Start()
    print("Start")
end

function Quest22038:OnDestroy()
    print("OnDestroy")
end

function Quest22038:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest22038:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest22038:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc3011Data.alias, 3)
end

function Quest22038:OnSubStart2203801(arg1)
    print("OnSubStart2203801")
    self:CreateQuestNpc(arg1, npcs.Npc3011Data.id, 1)
end

function Quest22038:OnSubFinish2203801(arg1)
    print("OnSubFinish2203801")
end

function Quest22038:OnSubFailed2203801(arg1)
    print("OnSubFailed2203801")
end

function Quest22038:OnSubStart2203802(arg1)
    print("OnSubStart2203802")
    actorMgr:CreateActorWithPos("Q22038Trigger", "Actor/Gadget/Q22038Trigger", 70900002, 1, sceneData:GetDummyPoint(1060, "Q22038Nakanishi").pos, sceneData:GetDummyPoint(1060, "Q22038Nakanishi").rot, true, false, 1060)
end

function Quest22038:OnSubFinish2203802(arg1)
    print("OnSubFinish2203802")
    self:NarratorOnlyTask(datas.Reminder02Finish, nil, "")
end

function Quest22038:OnSubFailed2203802(arg1)
    print("OnSubFailed2203802")
    self:FinishTaskByCmdType(ActorCommandType.QUEST_MOVE_TASK)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc3011Data.alias)
    questNpcActor:ClearAllTask()
    questNpcActor:Standby()
    self:CreateQuestNpc(arg1, npcs.Npc3011Data.id, 1)
end

function Quest22038:OnSubStart2203803(arg1)
    print("OnSubStart2203803")
end

function Quest22038:OnSubFinish2203803(arg1)
    print("OnSubFinish2203803")
    self:NarratorOnlyTask(datas.Reminder03Finish, nil, "")
end

function Quest22038:OnSubFailed2203803(arg1)
    print("OnSubFailed2203803")
    self:ShowBlackScreen(0.2, 1, 0.2, nil, function(arg1) end, nil, "", false, true)
    self:NarratorOnlyTask(datas.Reminder03Fail, nil, "")
end

function Quest22038:OnSubStart2203804(arg1)
    print("OnSubStart2203804")
end

function Quest22038:OnSubFinish2203804(arg1)
    print("OnSubFinish2203804")
    self:ShowBlackScreen(0.3, 1.2, 0.3, function(arg1)
        arg1:SafeDestroyQuestNpc(npcs.Npc3011Data.alias, 1060)
    end, nil, nil, "", false, true)
end

function Quest22038:OnSubFailed2203804(arg1)
    print("OnSubFailed2203804")
end

return Quest22038
