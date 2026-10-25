require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19136 = class("Quest19136", QuestActorProxy)
Quest19136.defaultAlias = "Quest19136"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19136:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19136:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1913601"] = self.OnSubStart1913601,
        ["1913602"] = self.OnSubStart1913602,
        ["1913603"] = self.OnSubStart1913603,
        ["1913604"] = self.OnSubStart1913604,
        ["1913605"] = self.OnSubStart1913605,
        ["1913606"] = self.OnSubStart1913606,
        ["1913607"] = self.OnSubStart1913607,
        ["1913608"] = self.OnSubStart1913608,
        ["1913609"] = self.OnSubStart1913609,
        ["1913614"] = self.OnSubStart1913614,
        ["1913610"] = self.OnSubStart1913610,
        ["1913611"] = self.OnSubStart1913611,
        ["1913612"] = self.OnSubStart1913612,
        ["1913613"] = self.OnSubStart1913613,
        ["1913615"] = self.OnSubStart1913615
    }
end

function Quest19136:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1913601"] = self.OnSubFinish1913601,
        ["1913602"] = self.OnSubFinish1913602,
        ["1913603"] = self.OnSubFinish1913603,
        ["1913604"] = self.OnSubFinish1913604,
        ["1913605"] = self.OnSubFinish1913605,
        ["1913606"] = self.OnSubFinish1913606,
        ["1913607"] = self.OnSubFinish1913607,
        ["1913608"] = self.OnSubFinish1913608,
        ["1913609"] = self.OnSubFinish1913609,
        ["1913614"] = self.OnSubFinish1913614,
        ["1913610"] = self.OnSubFinish1913610,
        ["1913611"] = self.OnSubFinish1913611,
        ["1913612"] = self.OnSubFinish1913612,
        ["1913613"] = self.OnSubFinish1913613,
        ["1913615"] = self.OnSubFinish1913615
    }
end

function Quest19136:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19136:Start()
    print("Start")
end

function Quest19136:OnDestroy()
    print("OnDestroy")
end

function Quest19136:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19136:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19136:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Coop_NingguangData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2006Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2013Data.alias, 3)
    actorMgr:DestroyEntityActor("Q1913603Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1913606Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1913609Trigger", 3, false)
    self:ActorDestroy("Q19136Trigger")
    self:ActorDestroy("Q1913611Trigger")
    self:ActorDestroy("Q19136Trigger1")
    self:ClearNarratorTask()
    self:StopNarrator()
end

function Quest19136:NpcCreateWithBlackscreenInteractionDelay(arg1, arg2, arg3, arg4)
    self:CallDelay(2, function(arg1_2)
        arg1_2:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, arg2, arg3)
            arg1_2:RequestInteraction(arg4)
        end)
    end)
end

function Quest19136:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest19136:OnSubStart1913601(arg1)
    print("OnSubStart1913601")
    self:CreateQuestNpc(arg1, npcs.Npc2006Data.id, 2)
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913601)
end

function Quest19136:OnSubFinish1913601(arg1)
    print("OnSubFinish1913601")
end

function Quest19136:OnSubStart1913602(arg1)
    print("OnSubStart1913602")
    self:CreateQuestNpc(arg1, npcs.Npc2013Data.id, 2)
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913602)
end

function Quest19136:OnSubFinish1913602(arg1)
    print("OnSubFinish1913602")
    self:SafeDestroyQuestNpc(npcs.Npc2006Data.alias, 3)
end

function Quest19136:OnSubStart1913603(arg1)
    print("OnSubStart1913603")
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913609)
    actorMgr:CreateActorWithPos("Q1913603Trigger", "Actor/Gadget/Q1913603Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1913603Target").pos, sceneData:GetDummyPoint(3, "Q1913603Target").rot, true, false, 3)
end

function Quest19136:OnSubFinish1913603(arg1)
    print("OnSubFinish1913603")
    actorMgr:CreateActorWithPos("Q19136Trigger", "Actor/Gadget/Q19136Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1913603_C1913606_tofail").pos, sceneData:GetDummyPoint(3, "Q1913603_C1913606_tofail").rot, true, false, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2013Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Coop_NingguangData.alias, 3)
    self:ActorDestroy("Q1913603Trigger")
end

function Quest19136:OnSubStart1913604(arg1)
    print("OnSubStart1913604")
end

function Quest19136:OnSubFinish1913604(arg1)
    print("OnSubFinish1913604")
end

function Quest19136:OnSubStart1913605(arg1)
    print("OnSubStart1913605")
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913605)
    self:ShowBlackScreen(0.5, 1.5, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Coop_NingguangData.id, 1)
        arg1_2:RequestInteraction(npcs.Coop_NingguangData.alias)
    end, nil, nil, "", false, true)
end

function Quest19136:OnSubFinish1913605(arg1)
    print("OnSubFinish1913605")
end

function Quest19136:OnSubStart1913606(arg1)
    print("OnSubStart1913606")
    actorMgr:CreateActorWithPos("Q1913606Trigger", "Actor/Gadget/Q1913606Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1913606Target").pos, sceneData:GetDummyPoint(3, "Q1913606Target").rot, true, false, 3)
end

function Quest19136:OnSubFinish1913606(arg1)
    print("OnSubFinish1913606")
end

function Quest19136:OnSubStart1913607(arg1)
    print("OnSubStart1913607")
end

function Quest19136:OnSubFinish1913607(arg1)
    print("OnSubFinish1913607")
    self:ActorDestroy("Q19136Trigger")
end

function Quest19136:OnSubStart1913608(arg1)
    print("OnSubStart1913608")
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913606)
    self:ShowBlackScreen(0.5, 1.5, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Coop_NingguangData.id, 1)
        arg1_2:RequestInteraction(npcs.Coop_NingguangData.alias)
    end, nil, nil, "", false, true)
end

function Quest19136:OnSubFinish1913608(arg1)
    print("OnSubFinish1913608")
end

function Quest19136:OnSubStart1913609(arg1)
    print("OnSubStart1913609")
    actorMgr:CreateActorWithPos("Q1913609Trigger", "Actor/Gadget/Q1913609Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1913609Target").pos, sceneData:GetDummyPoint(3, "Q1913609Target").rot, true, false, 3)
end

function Quest19136:OnSubFinish1913609(arg1)
    print("OnSubFinish1913609")
end

function Quest19136:OnSubStart1913614(arg1)
    print("OnSubStart1913614")
end

function Quest19136:OnSubFinish1913614(arg1)
    print("OnSubFinish1913614")
    self:NarratorOnlyTaskByData(datas.NarratorWithId09Finish)
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q1913606CuteMouse").pos, 1.5, 2, true, false)
end

function Quest19136:OnSubStart1913610(arg1)
    print("OnSubStart1913610")
end

function Quest19136:OnSubFinish1913610(arg1)
    print("OnSubFinish1913610")
end

function Quest19136:OnSubStart1913611(arg1)
    print("OnSubStart1913611")
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913603)
    actorMgr:CreateActorWithPos("Q1913611Trigger", "Actor/Gadget/Q1913611Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1913611_C1913603Player").pos, sceneData:GetDummyPoint(3, "Q1913611_C1913603Player").rot, true, false, 3)
end

function Quest19136:OnSubFinish1913611(arg1)
    print("OnSubFinish1913611")
end

function Quest19136:OnSubStart1913612(arg1)
    print("OnSubStart1913612")
end

function Quest19136:OnSubFinish1913612(arg1)
    print("OnSubFinish1913612")
    self:NarratorOnlyTaskByData(datas.NarratorWithId12Finish)
end

function Quest19136:OnSubStart1913613(arg1)
    print("OnSubStart1913613")
    self:RequestCoopInteractionFromSubStartPoint(102701, 1913604)
    actorMgr:CreateActorWithPos("Q19136Trigger1", "Actor/Gadget/Q19136Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q1913613_C1913604Player").pos, sceneData:GetDummyPoint(3, "Q1913613_C1913604Player").rot, true, false, 3)
end

function Quest19136:OnSubFinish1913613(arg1)
    print("OnSubFinish1913613")
end

function Quest19136:OnSubStart1913615(arg1)
    print("OnSubStart1913615")
end

function Quest19136:OnSubFinish1913615(arg1)
    print("OnSubFinish1913615")
end

return Quest19136
