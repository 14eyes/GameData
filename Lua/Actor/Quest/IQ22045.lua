require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22045 = class("Quest22045", QuestActorProxy)
Quest22045.defaultAlias = "Quest22045"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest22045:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest22045:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2204501"] = self.OnSubStart2204501,
        ["2204502"] = self.OnSubStart2204502,
        ["2204503"] = self.OnSubStart2204503,
        ["2204504"] = self.OnSubStart2204504
    }
end

function Quest22045:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2204501"] = self.OnSubFinish2204501,
        ["2204502"] = self.OnSubFinish2204502,
        ["2204503"] = self.OnSubFinish2204503,
        ["2204504"] = self.OnSubFinish2204504
    }
end

function Quest22045:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2204501"] = self.OnSubFailed2204501,
        ["2204502"] = self.OnSubFailed2204502,
        ["2204503"] = self.OnSubFailed2204503,
        ["2204504"] = self.OnSubFailed2204504
    }
end

function Quest22045:Start()
    print("Start")
end

function Quest22045:OnDestroy()
    print("OnDestroy")
end

function Quest22045:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest22045:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest22045:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc3182Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3189Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12130Data.alias, 3)
end

function Quest22045:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest22045:OnSubStart2204501(arg1)
    print("OnSubStart2204501")
    self:CreateQuestNpc(arg1, npcs.Npc3182Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc3189Data.id, 2)
end

function Quest22045:OnSubFinish2204501(arg1)
    print("OnSubFinish2204501")
end

function Quest22045:OnSubFailed2204501(arg1)
    print("OnSubFailed2204501")
end

function Quest22045:OnSubStart2204502(arg1)
    print("OnSubStart2204502")
    self:CreateQuestNpc(arg1, npcs.Npc12130Data.id, 1)
end

function Quest22045:OnSubFinish2204502(arg1)
    print("OnSubFinish2204502")
    self:NarratorOnlyTask(datas.Reminder02, nil, "")
end

function Quest22045:OnSubFailed2204502(arg1)
    print("OnSubFailed2204502")
end

function Quest22045:OnSubStart2204503(arg1)
    print("OnSubStart2204503")
    self:CreateQuestNpc(arg1, npcs.Npc12130Data.id, 1)
end

function Quest22045:OnSubFinish2204503(arg1)
    print("OnSubFinish2204503")
    self:SafeDestroyQuestNpc(npcs.Npc12130Data.alias, 3)
    self:NarratorOnlyTask(datas.Reminder03, nil, "")
end

function Quest22045:OnSubFailed2204503(arg1)
    print("OnSubFailed2204503")
end

function Quest22045:OnSubStart2204504(arg1)
    print("OnSubStart2204504")
end

function Quest22045:OnSubFinish2204504(arg1)
    print("OnSubFinish2204504")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3182Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc3189Data.alias, 3)
end

function Quest22045:OnSubFailed2204504(arg1)
    print("OnSubFailed2204504")
end

return Quest22045
