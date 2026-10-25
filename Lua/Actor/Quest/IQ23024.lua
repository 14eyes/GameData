require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest23024 = class("Quest23024", QuestActorProxy)
Quest23024.defaultAlias = "Quest23024"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest23024:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest23024:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2302401"] = self.OnSubStart2302401,
        ["2302402"] = self.OnSubStart2302402,
        ["2302405"] = self.OnSubStart2302405,
        ["2302403"] = self.OnSubStart2302403,
        ["2302404"] = self.OnSubStart2302404,
        ["2302406"] = self.OnSubStart2302406,
        ["2302407"] = self.OnSubStart2302407
    }
end

function Quest23024:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2302401"] = self.OnSubFinish2302401,
        ["2302402"] = self.OnSubFinish2302402,
        ["2302405"] = self.OnSubFinish2302405,
        ["2302403"] = self.OnSubFinish2302403,
        ["2302404"] = self.OnSubFinish2302404,
        ["2302406"] = self.OnSubFinish2302406,
        ["2302407"] = self.OnSubFinish2302407
    }
end

function Quest23024:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest23024:Start()
    print("Start")
end

function Quest23024:OnDestroy()
    print("OnDestroy")
end

function Quest23024:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest23024:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest23024:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc4080Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4079Data.alias, 3)
    actorMgr:DestroyEntityActor("Q23024Trigger", 3, false)
end

function Quest23024:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest23024:OnSubStart2302401(arg1)
    print("OnSubStart2302401")
    self:CreateQuestNpc(arg1, npcs.Npc4080Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc4079Data.id, 2)
end

function Quest23024:OnSubFinish2302401(arg1)
    print("OnSubFinish2302401")
end

function Quest23024:OnSubStart2302402(arg1)
    print("OnSubStart2302402")
end

function Quest23024:OnSubFinish2302402(arg1)
    print("OnSubFinish2302402")
end

function Quest23024:OnSubStart2302405(arg1)
    print("OnSubStart2302405")
end

function Quest23024:OnSubFinish2302405(arg1)
    print("OnSubFinish2302405")
end

function Quest23024:OnSubStart2302403(arg1)
    print("OnSubStart2302403")
end

function Quest23024:OnSubFinish2302403(arg1)
    print("OnSubFinish2302403")
end

function Quest23024:OnSubStart2302404(arg1)
    print("OnSubStart2302404")
    actorMgr:CreateActorWithPos("Q23024Trigger", "Actor/Gadget/Q23024Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q23023_GUERGENG").pos, sceneData:GetDummyPoint(3, "Q23023_GUERGENG").rot, true, false, 3)
end

function Quest23024:OnSubFinish2302404(arg1)
    print("OnSubFinish2302404")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4080Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc4079Data.alias, 3)
end

function Quest23024:OnSubStart2302406(arg1)
    print("OnSubStart2302406")
end

function Quest23024:OnSubFinish2302406(arg1)
    print("OnSubFinish2302406")
end

function Quest23024:OnSubStart2302407(arg1)
    print("OnSubStart2302407")
    actorMgr:CreateActorWithPos("Q23024Trigger", "Actor/Gadget/Q23024Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q23023_GUERGENG").pos, sceneData:GetDummyPoint(3, "Q23023_GUERGENG").rot, true, false, 3)
end

function Quest23024:OnSubFinish2302407(arg1)
    print("OnSubFinish2302407")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4080Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4079Data.alias)
    self:NarratorOnlyTask(datas.NarratorTable, nil, "story")
    self:EnterSceneLookCamera({x = -188.0, y = 201.0, z = 2681.0}, 5, 5, true, true)
end

return Quest23024
