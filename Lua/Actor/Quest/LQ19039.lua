require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19039 = class("Quest19039", QuestActorProxy)
Quest19039.defaultAlias = "Quest19039"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19039:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19039:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1903909"] = self.OnSubStart1903909,
        ["1903901"] = self.OnSubStart1903901,
        ["1903902"] = self.OnSubStart1903902,
        ["1903903"] = self.OnSubStart1903903,
        ["1903904"] = self.OnSubStart1903904,
        ["1903905"] = self.OnSubStart1903905,
        ["1903906"] = self.OnSubStart1903906,
        ["1903907"] = self.OnSubStart1903907,
        ["1903908"] = self.OnSubStart1903908
    }
end

function Quest19039:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1903909"] = self.OnSubFinish1903909,
        ["1903901"] = self.OnSubFinish1903901,
        ["1903902"] = self.OnSubFinish1903902,
        ["1903903"] = self.OnSubFinish1903903,
        ["1903904"] = self.OnSubFinish1903904,
        ["1903905"] = self.OnSubFinish1903905,
        ["1903906"] = self.OnSubFinish1903906,
        ["1903907"] = self.OnSubFinish1903907,
        ["1903908"] = self.OnSubFinish1903908
    }
end

function Quest19039:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19039:Start()
    print("Start")
end

function Quest19039:OnDestroy()
    print("OnDestroy")
end

function Quest19039:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19039:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19039:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc3142Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Coop_GorouData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1039Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3142Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q19039Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q19039Trigger1", 3, false)
    self:ClearNarratorTask()
    self:StopNarrator()
end

function Quest19039:OnSubStart1903909(arg1)
    print("OnSubStart1903909")
end

function Quest19039:OnSubFinish1903909(arg1)
    print("OnSubFinish1903909")
end

function Quest19039:OnSubStart1903901(arg1)
    print("OnSubStart1903901")
    self:CreateQuestNpc(arg1, npcs.Coop_GorouData.id, 0)
    self:GetQuestNpcActor(npcs.Coop_GorouData.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest19039:OnSubFinish1903901(arg1)
    print("OnSubFinish1903901")
    self:NarratorOnlyTaskByData(datas.Narrator1, nil, 19039)
end

function Quest19039:OnSubStart1903902(arg1)
    print("OnSubStart1903902")
end

function Quest19039:OnSubFinish1903902(arg1)
    print("OnSubFinish1903902")
    self:NarratorOnlyTaskByData(datas.Narrator2, nil, 19039)
end

function Quest19039:OnSubStart1903903(arg1)
    print("OnSubStart1903903")
end

function Quest19039:OnSubFinish1903903(arg1)
    print("OnSubFinish1903903")
end

function Quest19039:OnSubStart1903904(arg1)
    print("OnSubStart1903904")
end

function Quest19039:OnSubFinish1903904(arg1)
    print("OnSubFinish1903904")
end

function Quest19039:OnSubStart1903905(arg1)
    print("OnSubStart1903905")
    actorMgr:GetActor("19039"):RequestCoopInteractionFromSubStartPoint(105901, 1903905)
    self:GetQuestNpcActor(npcs.Coop_GorouData.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest19039:OnSubFinish1903905(arg1)
    print("OnSubFinish1903905")
    self:DestroyQuestNpcActor(npcs.Coop_GorouData.alias, 3)
end

function Quest19039:OnSubStart1903906(arg1)
    print("OnSubStart1903906")
    actorMgr:CreateActorWithPos("Q19039Trigger", "Actor/Gadget/Q19039Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1903906_N3142").pos, sceneData:GetDummyPoint(3, "Q1903906_N3142").rot, true, false, 3)
    self:CreateQuestNpc(arg1, npcs.Npc3142Data.id, 0)
end

function Quest19039:OnSubFinish1903906(arg1)
    print("OnSubFinish1903906")
end

function Quest19039:OnSubStart1903907(arg1)
    print("OnSubStart1903907")
    actorMgr:GetActor("19039"):RequestCoopInteractionFromSubStartPoint(105901, 1903907)
end

function Quest19039:OnSubFinish1903907(arg1)
    print("OnSubFinish1903907")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc3142Data.alias, 3)
    end)
end

function Quest19039:OnSubStart1903908(arg1)
    print("OnSubStart1903908")
    self:ActionSafeCall(function(arg1_2)
        actorMgr:CreateActorWithPos("Q19039Trigger1", "Actor/Gadget/Q19039Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q1903908_N10000005").pos, sceneData:GetDummyPoint(3, "Q1903908_N10000005").rot, true, false, 3)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1039Data.id, 0)
        arg1_2:NotifyTo(npcs.Npc3142Data.alias, 1, true)
    end)
end

function Quest19039:OnSubFinish1903908(arg1)
    print("OnSubFinish1903908")
    self:DestroyQuestNpcActor(npcs.Coop_GorouData.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1039Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3142Data.alias, 0, true)
end

return Quest19039
