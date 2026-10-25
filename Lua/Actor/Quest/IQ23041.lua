require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest23041 = class("Quest23041", QuestActorProxy)
Quest23041.defaultAlias = "Quest23041"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest23041:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest23041:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2304101"] = self.OnSubStart2304101,
        ["2304118"] = self.OnSubStart2304118,
        ["2304102"] = self.OnSubStart2304102,
        ["2304103"] = self.OnSubStart2304103,
        ["2304105"] = self.OnSubStart2304105,
        ["2304117"] = self.OnSubStart2304117,
        ["2304116"] = self.OnSubStart2304116,
        ["2304111"] = self.OnSubStart2304111,
        ["2304113"] = self.OnSubStart2304113,
        ["2304112"] = self.OnSubStart2304112,
        ["2304106"] = self.OnSubStart2304106,
        ["2304107"] = self.OnSubStart2304107,
        ["2304109"] = self.OnSubStart2304109,
        ["2304110"] = self.OnSubStart2304110,
        ["2304114"] = self.OnSubStart2304114,
        ["2304115"] = self.OnSubStart2304115
    }
end

function Quest23041:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2304101"] = self.OnSubFinish2304101,
        ["2304118"] = self.OnSubFinish2304118,
        ["2304102"] = self.OnSubFinish2304102,
        ["2304103"] = self.OnSubFinish2304103,
        ["2304105"] = self.OnSubFinish2304105,
        ["2304117"] = self.OnSubFinish2304117,
        ["2304116"] = self.OnSubFinish2304116,
        ["2304111"] = self.OnSubFinish2304111,
        ["2304113"] = self.OnSubFinish2304113,
        ["2304112"] = self.OnSubFinish2304112,
        ["2304106"] = self.OnSubFinish2304106,
        ["2304107"] = self.OnSubFinish2304107,
        ["2304109"] = self.OnSubFinish2304109,
        ["2304110"] = self.OnSubFinish2304110,
        ["2304114"] = self.OnSubFinish2304114,
        ["2304115"] = self.OnSubFinish2304115
    }
end

function Quest23041:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest23041:Start()
    print("Start")
end

function Quest23041:OnDestroy()
    print("OnDestroy")
end

function Quest23041:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest23041:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest23041:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearNarratorTask()
    self:SafeDestroyQuestNpc(npcs.Npc4404Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4405Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12899Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12899Data2.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12899Data3.alias, 3)
    actorMgr:DestroyEntityActor("Q2304106Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q2304112Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q2304113Trigger", 3, false)
end

function Quest23041:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest23041:OnSubStart2304101(arg1)
    print("OnSubStart2304101")
    self:CreateQuestNpc(arg1, npcs.Npc4404Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc4405Data.id, 2)
end

function Quest23041:OnSubFinish2304101(arg1)
    print("OnSubFinish2304101")
end

function Quest23041:OnSubStart2304118(arg1)
    print("OnSubStart2304118")
end

function Quest23041:OnSubFinish2304118(arg1)
    print("OnSubFinish2304118")
end

function Quest23041:OnSubStart2304102(arg1)
    print("OnSubStart2304102")
end

function Quest23041:OnSubFinish2304102(arg1)
    print("OnSubFinish2304102")
end

function Quest23041:OnSubStart2304103(arg1)
    print("OnSubStart2304103")
end

function Quest23041:OnSubFinish2304103(arg1)
    print("OnSubFinish2304103")
end

function Quest23041:OnSubStart2304105(arg1)
    print("OnSubStart2304105")
end

function Quest23041:OnSubFinish2304105(arg1)
    print("OnSubFinish2304105")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4404Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4405Data.alias)
end

function Quest23041:OnSubStart2304117(arg1)
    print("OnSubStart2304117")
end

function Quest23041:OnSubFinish2304117(arg1)
    print("OnSubFinish2304117")
end

function Quest23041:OnSubStart2304116(arg1)
    print("OnSubStart2304116")
end

function Quest23041:OnSubFinish2304116(arg1)
    print("OnSubFinish2304116")
end

function Quest23041:OnSubStart2304111(arg1)
    print("OnSubStart2304111")
end

function Quest23041:OnSubFinish2304111(arg1)
    print("OnSubFinish2304111")
end

function Quest23041:OnSubStart2304113(arg1)
    print("OnSubStart2304113")
    self:CreateQuestNpc(arg1, npcs.Npc12899Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc12899Data.alias):DisableInteeHeadCtrl(false)
    actorMgr:CreateActorWithPos("Q2304113Trigger", "Actor/Gadget/Q2304113Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q23041_N12899_1").pos, sceneData:GetDummyPoint(3, "Q23041_N12899_1").rot, true, false, 3)
end

function Quest23041:OnSubFinish2304113(arg1)
    print("OnSubFinish2304113")
    self:GetQuestNpcActor(npcs.Npc12899Data.alias):EnableHeadCtrl(false)
end

function Quest23041:OnSubStart2304112(arg1)
    print("OnSubStart2304112")
    self:CreateQuestNpc(arg1, npcs.Npc12899Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc12899Data.alias):DisableInteeHeadCtrl(false)
    actorMgr:CreateActorWithPos("Q2304112Trigger", "Actor/Gadget/Q2304112Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q23041_N12899_2").pos, sceneData:GetDummyPoint(3, "Q23041_N12899_2").rot, true, false, 3)
end

function Quest23041:OnSubFinish2304112(arg1)
    print("OnSubFinish2304112")
    self:GetQuestNpcActor(npcs.Npc12899Data.alias):EnableHeadCtrl(false)
end

function Quest23041:OnSubStart2304106(arg1)
    print("OnSubStart2304106")
    self:CreateQuestNpc(arg1, npcs.Npc12899Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc12899Data.alias):DisableInteeHeadCtrl(false)
    actorMgr:CreateActorWithPos("Q2304106Trigger", "Actor/Gadget/Q2304106Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q23041_N12899_3").pos, sceneData:GetDummyPoint(3, "Q23041_N12899_3").rot, true, false, 3)
end

function Quest23041:OnSubFinish2304106(arg1)
    print("OnSubFinish2304106")
    self:GetQuestNpcActor(npcs.Npc12899Data.alias):EnableHeadCtrl(false)
end

function Quest23041:OnSubStart2304107(arg1)
    print("OnSubStart2304107")
    local questVar = self:GetQuestVar(2304107, 2)
    if questVar == 1 then
        self:CreateQuestNpc(arg1, npcs.Npc12899Data.id, 1)
    elseif questVar == 2 then
        self:CreateQuestNpc(arg1, npcs.Npc12899Data2.id, 2)
    else
        self:CreateQuestNpc(arg1, npcs.Npc12899Data3.id, 3)
    end
end

function Quest23041:OnSubFinish2304107(arg1)
    print("OnSubFinish2304107")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4404Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4405Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc12899Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc12899Data2.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc12899Data3.alias)
end

function Quest23041:OnSubStart2304109(arg1)
    print("OnSubStart2304109")
end

function Quest23041:OnSubFinish2304109(arg1)
    print("OnSubFinish2304109")
end

function Quest23041:OnSubStart2304110(arg1)
    print("OnSubStart2304110")
end

function Quest23041:OnSubFinish2304110(arg1)
    print("OnSubFinish2304110")
end

function Quest23041:OnSubStart2304114(arg1)
    print("OnSubStart2304114")
end

function Quest23041:OnSubFinish2304114(arg1)
    print("OnSubFinish2304114")
end

function Quest23041:OnSubStart2304115(arg1)
    print("OnSubStart2304115")
end

function Quest23041:OnSubFinish2304115(arg1)
    print("OnSubFinish2304115")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4404Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4405Data.alias)
end

return Quest23041
