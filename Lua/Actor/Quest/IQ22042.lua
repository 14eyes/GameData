require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22042 = class("Quest22042", QuestActorProxy)
Quest22042.defaultAlias = "Quest22042"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest22042:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest22042:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2204201"] = self.OnSubStart2204201,
        ["2204202"] = self.OnSubStart2204202,
        ["2204203"] = self.OnSubStart2204203,
        ["2204204"] = self.OnSubStart2204204
    }
end

function Quest22042:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2204201"] = self.OnSubFinish2204201,
        ["2204202"] = self.OnSubFinish2204202,
        ["2204203"] = self.OnSubFinish2204203,
        ["2204204"] = self.OnSubFinish2204204
    }
end

function Quest22042:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2204201"] = self.OnSubFailed2204201,
        ["2204202"] = self.OnSubFailed2204202,
        ["2204203"] = self.OnSubFailed2204203,
        ["2204204"] = self.OnSubFailed2204204
    }
end

function Quest22042:Start()
    print("Start")
end

function Quest22042:OnDestroy()
    print("OnDestroy")
end

function Quest22042:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest22042:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest22042:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc20283Data.alias, 3)
end

function Quest22042:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest22042:OnSubStart2204201(arg1)
    print("OnSubStart2204201")
    self:CreateQuestNpc(arg1, npcs.Npc20283Data.id, 1)
end

function Quest22042:OnSubFinish2204201(arg1)
    print("OnSubFinish2204201")
end

function Quest22042:OnSubFailed2204201(arg1)
    print("OnSubFailed2204201")
end

function Quest22042:OnSubStart2204202(arg1)
    print("OnSubStart2204202")
end

function Quest22042:OnSubFinish2204202(arg1)
    print("OnSubFinish2204202")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest22042:OnSubFailed2204202(arg1)
    print("OnSubFailed2204202")
end

function Quest22042:OnSubStart2204203(arg1)
    print("OnSubStart2204203")
end

function Quest22042:OnSubFinish2204203(arg1)
    print("OnSubFinish2204203")
    self:NarratorOnlyTask(datas.NarratorTable1, nil, "")
end

function Quest22042:OnSubFailed2204203(arg1)
    print("OnSubFailed2204203")
end

function Quest22042:OnSubStart2204204(arg1)
    print("OnSubStart2204204")
end

function Quest22042:OnSubFinish2204204(arg1)
    print("OnSubFinish2204204")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc20283Data.alias)
end

function Quest22042:OnSubFailed2204204(arg1)
    print("OnSubFailed2204204")
end

return Quest22042
