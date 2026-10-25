require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73109 = class("Quest73109", QuestActorProxy)
Quest73109.defaultAlias = "Quest73109"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73109:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73109:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7310901"] = self.OnSubStart7310901,
        ["7310902"] = self.OnSubStart7310902,
        ["7310903"] = self.OnSubStart7310903,
        ["7310904"] = self.OnSubStart7310904,
        ["7310905"] = self.OnSubStart7310905
    }
end

function Quest73109:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7310901"] = self.OnSubFinish7310901,
        ["7310902"] = self.OnSubFinish7310902,
        ["7310903"] = self.OnSubFinish7310903,
        ["7310904"] = self.OnSubFinish7310904,
        ["7310905"] = self.OnSubFinish7310905
    }
end

function Quest73109:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73109:Start()
    print("Start")
end

function Quest73109:OnDestroy()
    print("OnDestroy")
end

function Quest73109:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73109:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73109:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73109:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73109:OnSubStart7310901(arg1)
    print("OnSubStart7310901")
    self:CreateQuestNpc(arg1, npcs.Npc20819Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20819Data.alias):DoFreeStyle(1280, true, nil, true, true, false, false)
end

function Quest73109:OnSubFinish7310901(arg1)
    print("OnSubFinish7310901")
end

function Quest73109:OnSubStart7310902(arg1)
    print("OnSubStart7310902")
    self:GetQuestNpcActor(npcs.Npc20819Data.alias):DoFreeStyle(1280, true, nil, true, true, false, false)
end

function Quest73109:OnSubFinish7310902(arg1)
    print("OnSubFinish7310902")
end

function Quest73109:OnSubStart7310903(arg1)
    print("OnSubStart7310903")
    self:GetQuestNpcActor(npcs.Npc20819Data.alias):DoFreeStyle(1280, true, nil, true, true, false, false)
end

function Quest73109:OnSubFinish7310903(arg1)
    print("OnSubFinish7310903")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20819Data.alias)
end

function Quest73109:OnSubStart7310904(arg1)
    print("OnSubStart7310904")
    self:CallDelay(3, function(arg1)
        actorUtils.FinishQuestID(false, 7310904)
    end)
end

function Quest73109:OnSubFinish7310904(arg1)
    print("OnSubFinish7310904")
    self:NarratorOnlyTaskByData(datas.Narrator_7310902)
end

function Quest73109:OnSubStart7310905(arg1)
    print("OnSubStart7310905")
    self:CreateQuestNpc(arg1, npcs.Npc20819Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20819Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    self:CreateQuestNpc(arg1, npcs.Npc4160Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc4160Data.alias):DoFreeStyle(1090, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7310905Trigger", "Actor/Gadget/Q7310905Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7310905_N4160").pos, sceneData:GetDummyPoint(3, "Q7310905_N4160").rot, true, false, 3)
end

function Quest73109:OnSubFinish7310905(arg1)
    print("OnSubFinish7310905")
    self:SafeDestroyQuestNpc(npcs.Npc20819Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4160Data.alias, 3)
end

return Quest73109
