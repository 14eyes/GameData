require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22049 = class("Quest22049", QuestActorProxy)
Quest22049.defaultAlias = "Quest22049"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest22049:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest22049:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2204901"] = self.OnSubStart2204901,
        ["2204902"] = self.OnSubStart2204902,
        ["2204903"] = self.OnSubStart2204903
    }
end

function Quest22049:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2204901"] = self.OnSubFinish2204901,
        ["2204902"] = self.OnSubFinish2204902,
        ["2204903"] = self.OnSubFinish2204903
    }
end

function Quest22049:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2204901"] = self.OnSubFailed2204901,
        ["2204902"] = self.OnSubFailed2204902,
        ["2204903"] = self.OnSubFailed2204903
    }
end

function Quest22049:Start()
    print("Start")
end

function Quest22049:OnDestroy()
    print("OnDestroy")
end

function Quest22049:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest22049:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest22049:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc3035Data.alias, 3)
end

function Quest22049:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest22049:OnSubStart2204901(arg1)
    print("OnSubStart2204901")
    self:CreateQuestNpc(arg1, npcs.Npc3035Data.id, 1)
end

function Quest22049:OnSubFinish2204901(arg1)
    print("OnSubFinish2204901")
end

function Quest22049:OnSubFailed2204901(arg1)
    print("OnSubFailed2204901")
end

function Quest22049:OnSubStart2204902(arg1)
    print("OnSubStart2204902")
end

function Quest22049:OnSubFinish2204902(arg1)
    print("OnSubFinish2204902")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest22049:OnSubFailed2204902(arg1)
    print("OnSubFailed2204902")
end

function Quest22049:OnSubStart2204903(arg1)
    print("OnSubStart2204903")
end

function Quest22049:OnSubFinish2204903(arg1)
    print("OnSubFinish2204903")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3035Data.alias)
end

function Quest22049:OnSubFailed2204903(arg1)
    print("OnSubFailed2204903")
end

return Quest22049
