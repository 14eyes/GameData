require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22037 = class("Quest22037", QuestActorProxy)
Quest22037.defaultAlias = "Quest22037"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest22037:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest22037:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2203701"] = self.OnSubStart2203701,
        ["2203702"] = self.OnSubStart2203702,
        ["2203705"] = self.OnSubStart2203705,
        ["2203706"] = self.OnSubStart2203706,
        ["2203703"] = self.OnSubStart2203703,
        ["2203704"] = self.OnSubStart2203704
    }
end

function Quest22037:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2203701"] = self.OnSubFinish2203701,
        ["2203702"] = self.OnSubFinish2203702,
        ["2203705"] = self.OnSubFinish2203705,
        ["2203706"] = self.OnSubFinish2203706,
        ["2203703"] = self.OnSubFinish2203703,
        ["2203704"] = self.OnSubFinish2203704
    }
end

function Quest22037:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2203701"] = self.OnSubFailed2203701,
        ["2203702"] = self.OnSubFailed2203702,
        ["2203705"] = self.OnSubFailed2203705,
        ["2203706"] = self.OnSubFailed2203706,
        ["2203703"] = self.OnSubFailed2203703,
        ["2203704"] = self.OnSubFailed2203704
    }
end

function Quest22037:Start()
    print("Start")
end

function Quest22037:OnDestroy()
    print("OnDestroy")
end

function Quest22037:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest22037:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest22037:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc3080Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3066Data.alias, 3)
end

function Quest22037:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest22037:OnSubStart2203701(arg1)
    print("OnSubStart2203701")
    self:CreateQuestNpc(arg1, npcs.Npc3080Data.id, 1)
end

function Quest22037:OnSubFinish2203701(arg1)
    print("OnSubFinish2203701")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3080Data.alias)
end

function Quest22037:OnSubFailed2203701(arg1)
    print("OnSubFailed2203701")
end

function Quest22037:OnSubStart2203702(arg1)
    print("OnSubStart2203702")
    self:CreateQuestNpc(arg1, npcs.Npc3066Data.id, 1)
end

function Quest22037:OnSubFinish2203702(arg1)
    print("OnSubFinish2203702")
end

function Quest22037:OnSubFailed2203702(arg1)
    print("OnSubFailed2203702")
end

function Quest22037:OnSubStart2203705(arg1)
    print("OnSubStart2203705")
end

function Quest22037:OnSubFinish2203705(arg1)
    print("OnSubFinish2203705")
    self:NarratorOnlyTask(datas.NarratorTable1, nil, "")
end

function Quest22037:OnSubFailed2203705(arg1)
    print("OnSubFailed2203705")
end

function Quest22037:OnSubStart2203703(arg1)
    print("OnSubStart2203703")
end

function Quest22037:OnSubFinish2203703(arg1)
    print("OnSubFinish2203703")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3066Data.alias)
end

function Quest22037:OnSubFailed2203703(arg1)
    print("OnSubFailed2203703")
end

function Quest22037:OnSubStart2203704(arg1)
    print("OnSubStart2203704")
end

function Quest22037:OnSubFinish2203704(arg1)
    print("OnSubFinish2203704")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3066Data.alias)
end

function Quest22037:OnSubFailed2203704(arg1)
    print("OnSubFailed2203704")
end

function Quest22037:OnSubStart2203706(arg1)
    print("OnSubStart2203706")
end

function Quest22037:OnSubFinish2203706(arg1)
    print("OnSubFinish2203706")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest22037:OnSubFailed2203706(arg1)
    print("OnSubFailed2203706")
end

return Quest22037
