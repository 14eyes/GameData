require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest13009 = class("Quest13009", QuestActorProxy)
Quest13009.defaultAlias = "Quest13009"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest13009:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest13009:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1300901"] = self.OnSubStart1300901,
        ["1300902"] = self.OnSubStart1300902,
        ["1300903"] = self.OnSubStart1300903,
        ["1300910"] = self.OnSubStart1300910,
        ["1300904"] = self.OnSubStart1300904,
        ["1300905"] = self.OnSubStart1300905,
        ["1300906"] = self.OnSubStart1300906,
        ["1300907"] = self.OnSubStart1300907,
        ["1300908"] = self.OnSubStart1300908,
        ["1300909"] = self.OnSubStart1300909
    }
end

function Quest13009:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1300901"] = self.OnSubFinish1300901,
        ["1300902"] = self.OnSubFinish1300902,
        ["1300903"] = self.OnSubFinish1300903,
        ["1300910"] = self.OnSubFinish1300910,
        ["1300904"] = self.OnSubFinish1300904,
        ["1300905"] = self.OnSubFinish1300905,
        ["1300906"] = self.OnSubFinish1300906,
        ["1300907"] = self.OnSubFinish1300907,
        ["1300908"] = self.OnSubFinish1300908,
        ["1300909"] = self.OnSubFinish1300909
    }
end

function Quest13009:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest13009:Start()
    print("Start")
end

function Quest13009:OnDestroy()
    print("OnDestroy")
end

function Quest13009:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest13009:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest13009:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearNarratorTask()
    self:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1055Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12772Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12773Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12774Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12775Data.alias, 3)
    actorMgr:DestroyEntityActor("Q13009Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q13009Trigger1", 3, false)
    actorMgr:DestroyEntityActor("Q13009Trigger2", 3, false)
    actorMgr:DestroyEntityActor("Q13009Trigger3", 3, false)
    actorMgr:DestroyEntityActor("Q13009Trigger4", 3, false)
    actorMgr:DestroyEntityActor("Q13009Trigger5", 3, false)
end

function Quest13009:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest13009:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest13009:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest13009:OnSubStart1300901(arg1)
    print("OnSubStart1300901")
    self:CreateQuestNpc(arg1, npcs.Npc12772Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc12772Data.alias):DoFreeStyle(1240, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q13009Trigger", "Actor/Gadget/Q13009Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1300901_N1058").pos, sceneData:GetDummyPoint(3, "Q1300901_N1058").rot, true, false, 3)
end

function Quest13009:OnSubFinish1300901(arg1)
    print("OnSubFinish1300901")
    self:ActorDestroy("Q13009Trigger")
end

function Quest13009:OnSubStart1300902(arg1)
    print("OnSubStart1300902")
end

function Quest13009:OnSubFinish1300902(arg1)
    print("OnSubFinish1300902")
end

function Quest13009:OnSubStart1300903(arg1)
    print("OnSubStart1300903")
    self:CreateQuestNpc(arg1, npcs.Npc1058Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc1058Data.alias):DoFreeStyle(1280, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q13009Trigger4", "Actor/Gadget/Q13009Trigger4", 70900002, 0, sceneData:GetDummyPoint(3, "Q1300903").pos, sceneData:GetDummyPoint(3, "Q1300903").rot, true, false, 3)
end

function Quest13009:OnSubFinish1300903(arg1)
    print("OnSubFinish1300903")
    self:ActorDestroy("Q13009Trigger4")
    self:NpcDestroy(npcs.Npc1058Data.alias, 3)
    self:NpcDestroy(npcs.Npc12772Data.alias, 3)
end

function Quest13009:OnSubStart1300910(arg1)
    print("OnSubStart1300910")
    self:CreateQuestNpc(arg1, npcs.Npc12773Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc12773Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    self:CreateQuestNpc(arg1, npcs.Npc12774Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc12774Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    self:CreateQuestNpc(arg1, npcs.Npc12775Data.id, 4)
    self:GetQuestNpcActor(npcs.Npc12775Data.alias):DoFreeStyle(1180, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q13009Trigger2", "Actor/Gadget/Q13009Trigger2", 70900002, 0, sceneData:GetDummyPoint(3, "Q1300910_guide").pos, sceneData:GetDummyPoint(3, "Q1300910_guide").rot, true, false, 3)
end

function Quest13009:OnSubFinish1300910(arg1)
    print("OnSubFinish1300910")
    self:ActorDestroy("Q13009Trigger2")
    self:NpcDestroy(npcs.Npc1058Data.alias, 3)
    self:NpcDestroy(npcs.Npc12773Data.alias, 3)
    self:NpcDestroy(npcs.Npc12774Data.alias, 3)
    self:NpcDestroy(npcs.Npc12775Data.alias, 3)
end

function Quest13009:OnSubStart1300904(arg1)
    print("OnSubStart1300904")
    self:CreateQuestNpc(arg1, npcs.Npc1055Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc1055Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q13009Trigger3", "Actor/Gadget/Q13009Trigger3", 70900002, 0, {x = 55.35, y = 194.422, z = 2616.925}, {x = 0.0, y = 329.982, z = 0.0}, true, false, 3)
end

function Quest13009:OnSubFinish1300904(arg1)
    print("OnSubFinish1300904")
    self:ActorDestroy("Q13009Trigger3")
end

function Quest13009:OnSubStart1300905(arg1)
    print("OnSubStart1300905")
    self:CreateQuestNpc(arg1, npcs.Npc1058Data.id, 1)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1058Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, false)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest13009:OnSubFinish1300905(arg1)
    print("OnSubFinish1300905")
    self:NpcDestroy(npcs.Npc1058Data.alias, 3)
    self:NpcDestroy(npcs.Npc1055Data.alias, 3)
    self:GetQuestNpcActor(npcs.Npc1058Data.alias):DisableInteeHeadCtrl(false)
end

function Quest13009:OnSubStart1300906(arg1)
    print("OnSubStart1300906")
    actorMgr:CreateActorWithPos("Q13009Trigger1", "Actor/Gadget/Q13009Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q1300906_guide").pos, sceneData:GetDummyPoint(3, "Q1300906_guide").rot, true, false, 3)
end

function Quest13009:OnSubFinish1300906(arg1)
    print("OnSubFinish1300906")
    self:ActorDestroy("Q13009Trigger1")
end

function Quest13009:OnSubStart1300907(arg1)
    print("OnSubStart1300907")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1058Data.id, 1, npcs.Npc1058Data.alias)
end

function Quest13009:OnSubFinish1300907(arg1)
    print("OnSubFinish1300907")
    self:NpcDestroy(npcs.Npc1058Data.alias, 3)
end

function Quest13009:OnSubStart1300908(arg1)
    print("OnSubStart1300908")
end

function Quest13009:OnSubFinish1300908(arg1)
    print("OnSubFinish1300908")
end

function Quest13009:OnSubStart1300909(arg1)
    print("OnSubStart1300909")
    self:CallDelay(2, function(arg1)
        arg1:CreateQuestNpcWithTriggerBlack("1300909tri", 1300909, 1058, 1, 40, 1)
    end)
end

function Quest13009:OnSubFinish1300909(arg1)
    print("OnSubFinish1300909")
    self:NpcDestroy(npcs.Npc1058Data.alias, 3)
end

return Quest13009
