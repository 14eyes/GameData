require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest23020 = class("Quest23020", QuestActorProxy)
Quest23020.defaultAlias = "Quest23020"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest23020:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest23020:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2302001"] = self.OnSubStart2302001,
        ["2302002"] = self.OnSubStart2302002,
        ["2302003"] = self.OnSubStart2302003,
        ["2302004"] = self.OnSubStart2302004,
        ["2302005"] = self.OnSubStart2302005
    }
end

function Quest23020:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2302001"] = self.OnSubFinish2302001,
        ["2302002"] = self.OnSubFinish2302002,
        ["2302003"] = self.OnSubFinish2302003,
        ["2302004"] = self.OnSubFinish2302004,
        ["2302005"] = self.OnSubFinish2302005
    }
end

function Quest23020:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest23020:Start()
    print("Start")
end

function Quest23020:OnDestroy()
    print("OnDestroy")
end

function Quest23020:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest23020:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest23020:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc4031Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4032Data.alias, 3)
    actorMgr:DestroyEntityActor("Q2302002Trigger", 3, false)
end

function Quest23020:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest23020:OnSubStart2302001(arg1)
    print("OnSubStart2302001")
    self:CreateQuestNpc(arg1, npcs.Npc4031Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc4032Data.id, 2)
end

function Quest23020:OnSubFinish2302001(arg1)
    print("OnSubFinish2302001")
end

function Quest23020:OnSubStart2302002(arg1)
    print("OnSubStart2302002")
    actorMgr:CreateActorWithPos("Q2302002Trigger", "Actor/Gadget/Q2302002Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2302001_GUIDE").pos, sceneData:GetDummyPoint(3, "Q2302001_GUIDE").rot, true, false, 3)
end

function Quest23020:OnSubFinish2302002(arg1)
    print("OnSubFinish2302002")
end

function Quest23020:OnSubStart2302003(arg1)
    print("OnSubStart2302003")
end

function Quest23020:OnSubFinish2302003(arg1)
    print("OnSubFinish2302003")
    self:NarratorOnlyTask(datas.NarratorTable01, nil, "")
end

function Quest23020:OnSubStart2302004(arg1)
    print("OnSubStart2302004")
end

function Quest23020:OnSubFinish2302004(arg1)
    print("OnSubFinish2302004")
end

function Quest23020:OnSubStart2302005(arg1)
    print("OnSubStart2302005")
end

function Quest23020:OnSubFinish2302005(arg1)
    print("OnSubFinish2302005")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4031Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4032Data.alias)
end

return Quest23020
