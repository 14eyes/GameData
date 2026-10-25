require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22046 = class("Quest22046", QuestActorProxy)
Quest22046.defaultAlias = "Quest22046"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest22046:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest22046:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2204601"] = self.OnSubStart2204601,
        ["2204602"] = self.OnSubStart2204602,
        ["2204603"] = self.OnSubStart2204603
    }
end

function Quest22046:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2204601"] = self.OnSubFinish2204601,
        ["2204602"] = self.OnSubFinish2204602,
        ["2204603"] = self.OnSubFinish2204603
    }
end

function Quest22046:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2204601"] = self.OnSubFailed2204601,
        ["2204602"] = self.OnSubFailed2204602,
        ["2204603"] = self.OnSubFailed2204603
    }
end

function Quest22046:Start()
    print("Start")
end

function Quest22046:OnDestroy()
    print("OnDestroy")
end

function Quest22046:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest22046:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest22046:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc3189Data.alias, 3)
end

function Quest22046:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest22046:OnSubStart2204601(arg1)
    print("OnSubStart2204601")
    self:CreateQuestNpc(arg1, npcs.Npc3189Data.id, 1)
end

function Quest22046:OnSubFinish2204601(arg1)
    print("OnSubFinish2204601")
end

function Quest22046:OnSubFailed2204601(arg1)
    print("OnSubFailed2204601")
end

function Quest22046:OnSubStart2204602(arg1)
    print("OnSubStart2204602")
end

function Quest22046:OnSubFinish2204602(arg1)
    print("OnSubFinish2204602")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest22046:OnSubFailed2204602(arg1)
    print("OnSubFailed2204602")
end

function Quest22046:OnSubStart2204603(arg1)
    print("OnSubStart2204603")
end

function Quest22046:OnSubFinish2204603(arg1)
    print("OnSubFinish2204603")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3189Data.alias)
end

function Quest22046:OnSubFailed2204603(arg1)
    print("OnSubFailed2204603")
end

return Quest22046
