require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19145 = class("Quest19145", QuestActorProxy)
Quest19145.defaultAlias = "Quest19145"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19145:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19145:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1914501"] = self.OnSubStart1914501,
        ["1914502"] = self.OnSubStart1914502,
        ["1914503"] = self.OnSubStart1914503,
        ["1914505"] = self.OnSubStart1914505,
        ["1914506"] = self.OnSubStart1914506,
        ["1914507"] = self.OnSubStart1914507,
        ["1914508"] = self.OnSubStart1914508,
        ["1914509"] = self.OnSubStart1914509,
        ["1914511"] = self.OnSubStart1914511,
        ["1914512"] = self.OnSubStart1914512,
        ["1914510"] = self.OnSubStart1914510,
        ["1914504"] = self.OnSubStart1914504
    }
end

function Quest19145:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1914501"] = self.OnSubFinish1914501,
        ["1914502"] = self.OnSubFinish1914502,
        ["1914503"] = self.OnSubFinish1914503,
        ["1914505"] = self.OnSubFinish1914505,
        ["1914506"] = self.OnSubFinish1914506,
        ["1914507"] = self.OnSubFinish1914507,
        ["1914508"] = self.OnSubFinish1914508,
        ["1914509"] = self.OnSubFinish1914509,
        ["1914511"] = self.OnSubFinish1914511,
        ["1914512"] = self.OnSubFinish1914512,
        ["1914510"] = self.OnSubFinish1914510,
        ["1914504"] = self.OnSubFinish1914504
    }
end

function Quest19145:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19145:Start()
    print("Start")
end

function Quest19145:OnDestroy()
    print("OnDestroy")
end

function Quest19145:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19145:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19145:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Coop_ShinobuData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12503Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12506Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12508Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1034Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3105Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3107Data.alias, 3)
    actorMgr:DestroyEntityActor("Q1914509Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1914512Trigger", 3, false)
end

function Quest19145:OnSubStart1914501(arg1)
    print("OnSubStart1914501")
    self:CreateQuestNpc(arg1, npcs.Npc12503Data.id, 2)
    self:RequestCoopInteractionFromSubStartPoint(106501, 1914501)
end

function Quest19145:OnSubFinish1914501(arg1)
    print("OnSubFinish1914501")
    self:SafeDestroyQuestNpc(npcs.Npc12503Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId01, nil, 19145)
    end)
end

function Quest19145:OnSubStart1914502(arg1)
    print("OnSubStart1914502")
    self:CreateQuestNpc(arg1, npcs.Npc12506Data.id, 2)
    self:RequestCoopInteractionFromSubStartPoint(106501, 1914502)
end

function Quest19145:OnSubFinish1914502(arg1)
    print("OnSubFinish1914502")
    self:SafeDestroyQuestNpc(npcs.Npc12506Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId02, nil, 19145)
    end)
end

function Quest19145:OnSubStart1914503(arg1)
    print("OnSubStart1914503")
    self:CreateQuestNpc(arg1, npcs.Npc12508Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc3105Data.id, 3)
    self:RequestCoopInteractionFromSubStartPoint(106501, 1914503)
    self:GetQuestNpcActor(npcs.Npc12508Data.alias):EnableHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc3105Data.alias):EnableHeadCtrl(false)
end

function Quest19145:OnSubFinish1914503(arg1)
    print("OnSubFinish1914503")
end

function Quest19145:OnSubStart1914505(arg1)
    print("OnSubStart1914505")
end

function Quest19145:OnSubFinish1914505(arg1)
    print("OnSubFinish1914505")
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId03, nil, 19145)
    end)
end

function Quest19145:OnSubStart1914506(arg1)
    print("OnSubStart1914506")
end

function Quest19145:OnSubFinish1914506(arg1)
    print("OnSubFinish1914506")
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId04, nil, 19145)
    end)
end

function Quest19145:OnSubStart1914507(arg1)
    print("OnSubStart1914507")
    self:CreateQuestNpc(arg1, npcs.Npc3107Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc12508Data.alias):EnableHeadCtrl(true)
end

function Quest19145:OnSubFinish1914507(arg1)
    print("OnSubFinish1914507")
end

function Quest19145:OnSubStart1914508(arg1)
    print("OnSubStart1914508")
    self:CreateQuestNpc(arg1, npcs.Npc12508Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc3105Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc12508Data.alias):EnableHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc3105Data.alias):EnableHeadCtrl(false)
end

function Quest19145:OnSubFinish1914508(arg1)
    print("OnSubFinish1914508")
    self:CallDelay(3, function(arg1)
        arg1:ActionSafeCall(function(arg1)
            arg1:ClearNarratorTask()
            arg1:NarratorOnlyTaskByData(datas.NarratorWithId05, nil, 19145)
        end)
    end)
end

function Quest19145:OnSubStart1914509(arg1)
    print("OnSubStart1914509")
    self:CreateQuestNpc(arg1, npcs.Npc12508Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc3105Data.id, 3)
    self:RequestCoopInteractionFromSubStartPoint(106501, 1914509)
    actorMgr:CreateActorWithPos("Q1914509Trigger", "Actor/Gadget/Q1914509Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1914510_C1914510_N12508").pos, sceneData:GetDummyPoint(3, "Q1914510_C1914510_N12508").rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc12508Data.alias):EnableHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc3105Data.alias):EnableHeadCtrl(false)
end

function Quest19145:OnSubFinish1914509(arg1)
    print("OnSubFinish1914509")
    self:SafeDestroyQuestNpc(npcs.Npc12508Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3105Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3107Data.alias, 3)
end

function Quest19145:OnSubStart1914511(arg1)
    print("OnSubStart1914511")
    self:CreateQuestNpc(arg1, npcs.Npc1034Data.id, 2)
    self:RequestCoopInteractionFromSubStartPoint(106501, 1914511)
end

function Quest19145:OnSubFinish1914511(arg1)
    print("OnSubFinish1914511")
end

function Quest19145:OnSubStart1914512(arg1)
    print("OnSubStart1914512")
    self:RequestCoopInteractionFromSubStartPoint(106501, 1914512)
    actorMgr:CreateActorWithPos("Q1914512Trigger", "Actor/Gadget/Q1914512Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1914512_C1914512_guide").pos, sceneData:GetDummyPoint(3, "Q1914512_C1914512_guide").rot, true, false, 3)
end

function Quest19145:OnSubFinish1914512(arg1)
    print("OnSubFinish1914512")
    self:SafeDestroyQuestNpc(npcs.Coop_ShinobuData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1034Data.alias, 3)
end

function Quest19145:OnSubStart1914510(arg1)
    print("OnSubStart1914510")
end

function Quest19145:OnSubFinish1914510(arg1)
    print("OnSubFinish1914510")
end

function Quest19145:OnSubStart1914504(arg1)
    print("OnSubStart1914504")
end

function Quest19145:OnSubFinish1914504(arg1)
    print("OnSubFinish1914504")
end

return Quest19145
