require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest23022 = class("Quest23022", QuestActorProxy)
Quest23022.defaultAlias = "Quest23022"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest23022:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest23022:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2302201"] = self.OnSubStart2302201,
        ["2302202"] = self.OnSubStart2302202,
        ["2302203"] = self.OnSubStart2302203,
        ["2302204"] = self.OnSubStart2302204,
        ["2302205"] = self.OnSubStart2302205
    }
end

function Quest23022:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2302201"] = self.OnSubFinish2302201,
        ["2302202"] = self.OnSubFinish2302202,
        ["2302203"] = self.OnSubFinish2302203,
        ["2302204"] = self.OnSubFinish2302204,
        ["2302205"] = self.OnSubFinish2302205
    }
end

function Quest23022:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest23022:Start()
    print("Start")
end

function Quest23022:OnDestroy()
    print("OnDestroy")
end

function Quest23022:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest23022:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest23022:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc4032Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4031Data.alias, 3)
    actorMgr:DestroyEntityActor("Q2302202Trigger", 3, false)
end

function Quest23022:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest23022:OnSubStart2302201(arg1)
    print("OnSubStart2302201")
    self:CreateQuestNpc(arg1, npcs.Npc4032Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc4031Data.id, 2)
end

function Quest23022:OnSubFinish2302201(arg1)
    print("OnSubFinish2302201")
end

function Quest23022:OnSubStart2302202(arg1)
    print("OnSubStart2302202")
    actorMgr:CreateActorWithPos("Q2302202Trigger", "Actor/Gadget/Q2302202Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2302001_GUIDE").pos, sceneData:GetDummyPoint(3, "Q2302001_GUIDE").rot, true, false, 3)
end

function Quest23022:OnSubFinish2302202(arg1)
    print("OnSubFinish2302202")
end

function Quest23022:OnSubStart2302203(arg1)
    print("OnSubStart2302203")
end

function Quest23022:OnSubFinish2302203(arg1)
    print("OnSubFinish2302203")
    self:NarratorOnlyTask(datas.NarratorTable01, nil, "")
end

function Quest23022:OnSubStart2302204(arg1)
    print("OnSubStart2302204")
end

function Quest23022:OnSubFinish2302204(arg1)
    print("OnSubFinish2302204")
end

function Quest23022:OnSubStart2302205(arg1)
    print("OnSubStart2302205")
end

function Quest23022:OnSubFinish2302205(arg1)
    print("OnSubFinish2302205")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4032Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4031Data.alias)
end

return Quest23022
