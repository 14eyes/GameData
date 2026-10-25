require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41120 = class("Quest41120", QuestActorProxy)
Quest41120.defaultAlias = "Quest41120"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest41120:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest41120:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4112009"] = self.OnSubStart4112009,
        ["4112001"] = self.OnSubStart4112001,
        ["4112002"] = self.OnSubStart4112002,
        ["4112003"] = self.OnSubStart4112003,
        ["4112008"] = self.OnSubStart4112008,
        ["4112004"] = self.OnSubStart4112004,
        ["4112005"] = self.OnSubStart4112005,
        ["4112006"] = self.OnSubStart4112006,
        ["4112007"] = self.OnSubStart4112007
    }
end

function Quest41120:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4112009"] = self.OnSubFinish4112009,
        ["4112001"] = self.OnSubFinish4112001,
        ["4112002"] = self.OnSubFinish4112002,
        ["4112003"] = self.OnSubFinish4112003,
        ["4112008"] = self.OnSubFinish4112008,
        ["4112004"] = self.OnSubFinish4112004,
        ["4112005"] = self.OnSubFinish4112005,
        ["4112006"] = self.OnSubFinish4112006,
        ["4112007"] = self.OnSubFinish4112007
    }
end

function Quest41120:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4112009"] = self.OnSubFailed4112009,
        ["4112001"] = self.OnSubFailed4112001,
        ["4112002"] = self.OnSubFailed4112002,
        ["4112003"] = self.OnSubFailed4112003,
        ["4112008"] = self.OnSubFailed4112008,
        ["4112004"] = self.OnSubFailed4112004,
        ["4112005"] = self.OnSubFailed4112005,
        ["4112006"] = self.OnSubFailed4112006,
        ["4112007"] = self.OnSubFailed4112007
    }
end

function Quest41120:Start()
    print("Start")
    actorMgr:GetActor(actorAlias):SetQuestVar(subIDs.q4112004, 0, 0)
end

function Quest41120:OnDestroy()
    print("OnDestroy")
end

function Quest41120:OnMainFinished(arg1)
    print("OnMainFinished")
    self:ShowBlackScreen(0.2, 0.4, 0.4, self.ClearData, nil, nil, "")
end

function Quest41120:OnMainFailed(arg1)
    print("OnMainFailed")
    self:ClearData()
end

function Quest41120:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearData()
end

function Quest41120:ClearData()
    print("ClearData")
    self:DestroyQuestNpcActor(npcs.Npc1581Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1429Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1479Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1591Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1589Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1573Data.alias, 3)
    actorMgr:GetActor(actorAlias):SetQuestVar(subIDs.q4112004, 0, 0)
end

function Quest41120:ClearNpc_1573()
    print("ClearNpc_1573")
    self:DestroyQuestNpcActor(npcs.Npc1573Data.alias, 3)
end

function Quest41120:OnSubStart4112009(arg1)
    print("OnSubStart4112009")
end

function Quest41120:OnSubFinish4112009(arg1)
    print("OnSubFinish4112009")
end

function Quest41120:OnSubFailed4112009(arg1)
    print("OnSubFailed4112009")
end

function Quest41120:OnSubStart4112001(arg1)
    print("OnSubStart4112001")
    self:CreateQuestNpc(arg1, npcs.Npc1429Data.id, 1)
end

function Quest41120:OnSubFinish4112001(arg1)
    print("OnSubFinish4112001")
end

function Quest41120:OnSubFailed4112001(arg1)
    print("OnSubFailed4112001")
end

function Quest41120:OnSubStart4112002(arg1)
    print("OnSubStart4112002")
    self:CreateQuestNpc(arg1, npcs.Npc1479Data.id, 1)
end

function Quest41120:OnSubFinish4112002(arg1)
    print("OnSubFinish4112002")
end

function Quest41120:OnSubFailed4112002(arg1)
    print("OnSubFailed4112002")
end

function Quest41120:OnSubStart4112003(arg1)
    print("OnSubStart4112003")
    self:CreateQuestNpc(arg1, npcs.Npc1591Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1589Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc1589Data.alias):DoFreeStyle(1280, false)
end

function Quest41120:OnSubFinish4112003(arg1)
    print("OnSubFinish4112003")
end

function Quest41120:OnSubFailed4112003(arg1)
    print("OnSubFailed4112003")
end

function Quest41120:OnSubStart4112008(arg1)
    print("OnSubStart4112008")
    self:CreateQuestNpc(arg1, npcs.Npc1573Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc1573Data.alias):DoFreeStyle(4190, false)
    self:GetQuestNpcActor(npcs.Npc1589Data.alias):DoFreeStyle(1280, false)
end

function Quest41120:OnSubFinish4112008(arg1)
    print("OnSubFinish4112008")
    self:ShowBlackScreen(0.2, 0.4, 0.2, self.ClearNpc_1573, nil, nil, "")
end

function Quest41120:OnSubFailed4112008(arg1)
    print("OnSubFailed4112008")
end

function Quest41120:OnSubStart4112004(arg1)
    print("OnSubStart4112004")
    actorMgr:CreateActorWithPos(datas.Q41120Trigger_.alias, datas.Q41120Trigger_.script, datas.Q41120Trigger_.id, 0, datas.Q41120Trigger_.point.pos, datas.Q41120Trigger_.point.rot, true, false, 3)
    self:CreateQuestNpc(arg1, npcs.Npc1581Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc1589Data.alias):DoFreeStyle(1280, false)
end

function Quest41120:OnSubFinish4112004(arg1)
    print("OnSubFinish4112004")
    self:GetQuestNpcActor("Paimon"):DestroyWithDisappear()
end

function Quest41120:OnSubFailed4112004(arg1)
    print("OnSubFailed4112004")
end

function Quest41120:OnSubStart4112005(arg1)
    print("OnSubStart4112005")
    self:GetQuestNpcActor(npcs.Npc1581Data.alias):DoFreeStyle(4190, true, nil, true, true)
    self:GetQuestNpcActor(npcs.Npc1589Data.alias):DoFreeStyle(1280, false)
    self:NarratorOnlyTaskByData(datas.NarratorWithId)
end

function Quest41120:OnSubFinish4112005(arg1)
    print("OnSubFinish4112005")
    self:GetQuestNpcActor(npcs.Npc1581Data.alias):DoFreeStateTrigger()
end

function Quest41120:OnSubFailed4112005(arg1)
    print("OnSubFailed4112005")
end

function Quest41120:OnSubStart4112006(arg1)
    print("OnSubStart4112006")
    self:GetQuestNpcActor(npcs.Npc1589Data.alias):DoFreeStyle(1280, false)
end

function Quest41120:OnSubFinish4112006(arg1)
    print("OnSubFinish4112006")
end

function Quest41120:OnSubFailed4112006(arg1)
    print("OnSubFailed4112006")
end

function Quest41120:OnSubStart4112007(arg1)
    print("OnSubStart4112007")
    self:GetQuestNpcActor(npcs.Npc1589Data.alias):DoFreeStyle(1280, false)
end

function Quest41120:OnSubFinish4112007(arg1)
    print("OnSubFinish4112007")
end

function Quest41120:OnSubFailed4112007(arg1)
    print("OnSubFailed4112007")
end

return Quest41120
