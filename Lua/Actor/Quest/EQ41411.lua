require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41411 = class("Quest41411", QuestActorProxy)
Quest41411.defaultAlias = "Quest41411"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest41411:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest41411:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4141115"] = self.OnSubStart4141115,
        ["4141101"] = self.OnSubStart4141101,
        ["4141114"] = self.OnSubStart4141114,
        ["4141102"] = self.OnSubStart4141102,
        ["4141103"] = self.OnSubStart4141103,
        ["4141105"] = self.OnSubStart4141105,
        ["4141106"] = self.OnSubStart4141106,
        ["4141107"] = self.OnSubStart4141107,
        ["4141108"] = self.OnSubStart4141108,
        ["4141109"] = self.OnSubStart4141109,
        ["4141110"] = self.OnSubStart4141110,
        ["4141111"] = self.OnSubStart4141111,
        ["4141112"] = self.OnSubStart4141112,
        ["4141104"] = self.OnSubStart4141104,
        ["4141113"] = self.OnSubStart4141113
    }
end

function Quest41411:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4141115"] = self.OnSubFinish4141115,
        ["4141101"] = self.OnSubFinish4141101,
        ["4141114"] = self.OnSubFinish4141114,
        ["4141102"] = self.OnSubFinish4141102,
        ["4141103"] = self.OnSubFinish4141103,
        ["4141105"] = self.OnSubFinish4141105,
        ["4141106"] = self.OnSubFinish4141106,
        ["4141107"] = self.OnSubFinish4141107,
        ["4141108"] = self.OnSubFinish4141108,
        ["4141109"] = self.OnSubFinish4141109,
        ["4141110"] = self.OnSubFinish4141110,
        ["4141111"] = self.OnSubFinish4141111,
        ["4141112"] = self.OnSubFinish4141112,
        ["4141104"] = self.OnSubFinish4141104,
        ["4141113"] = self.OnSubFinish4141113
    }
end

function Quest41411:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4141115"] = self.OnSubFailed4141115,
        ["4141101"] = self.OnSubFailed4141101,
        ["4141114"] = self.OnSubFailed4141114,
        ["4141102"] = self.OnSubFailed4141102,
        ["4141103"] = self.OnSubFailed4141103,
        ["4141105"] = self.OnSubFailed4141105,
        ["4141106"] = self.OnSubFailed4141106,
        ["4141107"] = self.OnSubFailed4141107,
        ["4141108"] = self.OnSubFailed4141108,
        ["4141109"] = self.OnSubFailed4141109,
        ["4141110"] = self.OnSubFailed4141110,
        ["4141111"] = self.OnSubFailed4141111,
        ["4141112"] = self.OnSubFailed4141112,
        ["4141104"] = self.OnSubFailed4141104,
        ["4141113"] = self.OnSubFailed4141113
    }
end

function Quest41411:Start()
    print("Start")
end

function Quest41411:OnDestroy()
    print("OnDestroy")
end

function Quest41411:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41411:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41411:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc146101Data.alias, 3)
    self:NotifyTo("Npc1461", 0, true)
    self:SafeDestroyQuestNpc(npcs.QinData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.LisaData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.BarbaraData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.GaiaData.alias, 1004)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 1004)
    self:SafeDestroyQuestNpc(npcs.BarbaraData.alias, 1008)
    self:SafeDestroyQuestNpc(npcs.Npc1028Data.alias, 1008)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 1008)
    self:PaimonDis()
    actorMgr:DestroyEntityActor(datas.Q4141105Trigger_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q4141106Trigger_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q4141111Trigger_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q4141108Trigger_.alias, 1008, false)
end

function Quest41411:PaimonDis()
    local questNpcActor = self:GetQuestNpcActor(npcs.paimonData.alias)
    if questNpcActor ~= nil then
        self:ActionSafeCall(function(arg1)
            questNpcActor:DestroyWithDisappear(false)
        end)
    end
end

function Quest41411:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("param == 1")
        self:ShowReadingDialog(100763)
    end

    if arg1 == 2 then
        print("param == 2")
        self:ShowQuestPictureDialog(1023)
    end
end

function Quest41411:OnSubStart4141115(arg1)
    print("OnSubStart4141115")
    actorMgr:CreateActorWithPos(datas.Q4141105Trigger_.alias, datas.Q4141105Trigger_.script, datas.Q4141105Trigger_.id, 0, datas.Q4141105Trigger_.point.pos, datas.Q4141105Trigger_.point.rot, true, false, 3)
end

function Quest41411:OnSubFinish4141115(arg1)
    print("OnSubFinish4141115")
    self:PaimonDis()
end

function Quest41411:OnSubFailed4141115(arg1)
    print("OnSubFailed4141115")
end

function Quest41411:OnSubStart4141101(arg1)
    print("OnSubStart4141101")
    self:CreateQuestNpc(arg1, npcs.GaiaData.id, 1)
    self:GetQuestNpcActor(npcs.GaiaData.alias):SitOnChair()
end

function Quest41411:OnSubFinish4141101(arg1)
    print("OnSubFinish4141101")
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 1004)
    self:PaimonDis()
end

function Quest41411:OnSubFailed4141101(arg1)
    print("OnSubFailed4141101")
end

function Quest41411:OnSubStart4141114(arg1)
    print("OnSubStart4141114")
    self:CreateQuestNpc(arg1, npcs.Npc146101Data.id, 1)
    self:CallDelay(0.5, function(arg1)
        print("ninglu nizuoya")
        arg1:GetQuestNpcActor(npcs.Npc146101Data.alias):SitOnChair(8061)
    end)

    self:NotifyTo("Npc1461", 1, true)
    self:GetQuestNpcActor(npcs.GaiaData.alias):SitOnChair()
end

function Quest41411:OnSubFinish4141114(arg1)
    print("OnSubFinish4141114")
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    self:PaimonDis()
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc146101Data.alias)
    questNpcActor.DoFreeStateTrigger(questNpcActor)
    questNpcActor.WalkToTask(questNpcActor, npcs.Npc146101Data.LeavePos01, function(arg1)
        print("\231\187\167\231\187\173\232\181\176")
        questNpcActor:WalkToTask(npcs.Npc146101Data.LeavePos, function(arg1, arg2)
            print("\232\189\172\232\186\171")
            arg1:ClearFollowTask()
            arg1:Standby()
            arg1:TurnTo(M.Euler2DirXZ(npcs.Npc146101Data.LeaveDir))
        end)
    end)
end

function Quest41411:OnSubFailed4141114(arg1)
    print("OnSubFailed4141114")
end

function Quest41411:OnSubStart4141102(arg1)
    print("OnSubStart4141102")
    self:GetQuestNpcActor(npcs.GaiaData.alias):SitOnChair()
    self:NotifyTo("Npc1461", 1, true)
end

function Quest41411:OnSubFinish4141102(arg1)
    print("OnSubFinish4141102")
end

function Quest41411:OnSubFailed4141102(arg1)
    print("OnSubFailed4141102")
end

function Quest41411:OnSubStart4141103(arg1)
    print("OnSubStart4141103")
    self:GetQuestNpcActor(npcs.GaiaData.alias):SitOnChair()
    self:NotifyTo("Npc1461", 1, true)
end

function Quest41411:OnSubFinish4141103(arg1)
    print("OnSubFinish4141103")
    self:SafeDestroyQuestNpc(npcs.Npc146101Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    self:PaimonDis()
    self:NotifyTo("Npc1461", 0, true)
end

function Quest41411:OnSubFailed4141103(arg1)
    print("OnSubFailed4141103")
end

function Quest41411:OnSubStart4141105(arg1)
    print("OnSubStart4141105")
    self:CreateQuestNpc(arg1, npcs.GaiaData.id, 1)
    self:GetQuestNpcActor(npcs.GaiaData.alias):SitOnChair()
end

function Quest41411:OnSubFinish4141105(arg1)
    print("OnSubFinish4141105")
    self:SafeDestroyQuestNpc(npcs.GaiaData.alias, 1004)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 1004)
    self:PaimonDis()
end

function Quest41411:OnSubFailed4141105(arg1)
    print("OnSubFailed4141105")
end

function Quest41411:OnSubStart4141106(arg1)
    print("OnSubStart4141106")
    actorMgr:CreateActorWithPos(datas.Q4141106Trigger_.alias, datas.Q4141106Trigger_.script, datas.Q4141106Trigger_.id, 0, datas.Q4141106Trigger_.point.pos, datas.Q4141106Trigger_.point.rot, true, false, 3)
    self:CreateQuestNpc(arg1, npcs.QinData.id, 1)
    self:CreateQuestNpc(arg1, npcs.LisaData.id, 2)
end

function Quest41411:OnSubFinish4141106(arg1)
    print("OnSubFinish4141106")
end

function Quest41411:OnSubFailed4141106(arg1)
    print("OnSubFailed4141106")
end

function Quest41411:OnSubStart4141107(arg1)
    print("OnSubStart4141107")
    self:RequestInteraction(npcs.QinData.alias)
end

function Quest41411:OnSubFinish4141107(arg1)
    print("OnSubFinish4141107")
    self:SafeDestroyQuestNpc(npcs.QinData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.LisaData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    self:PaimonDis()
end

function Quest41411:OnSubFailed4141107(arg1)
    print("OnSubFailed4141107")
end

function Quest41411:OnSubStart4141108(arg1)
    print("OnSubStart4141108")
    self:CreateQuestNpc(arg1, npcs.BarbaraData.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1028Data.id, 2)
    actorMgr:CreateActorWithPos(datas.Q4141108Trigger_.alias, datas.Q4141108Trigger_.script, datas.Q4141108Trigger_.id, 0, datas.Q4141108Trigger_.point.pos, datas.Q4141108Trigger_.point.rot, true, false, 1008)
end

function Quest41411:OnSubFinish4141108(arg1)
    print("OnSubFinish4141108")
    self:SafeDestroyQuestNpc(npcs.BarbaraData.alias, 1008)
    self:SafeDestroyQuestNpc(npcs.Npc1028Data.alias, 1008)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 1008)
    self:PaimonDis()
end

function Quest41411:OnSubFailed4141108(arg1)
    print("OnSubFailed4141108")
end

function Quest41411:OnSubStart4141109(arg1)
    print("OnSubStart4141109")
end

function Quest41411:OnSubFinish4141109(arg1)
    print("OnSubFinish4141109")
end

function Quest41411:OnSubFailed4141109(arg1)
    print("OnSubFailed4141109")
end

function Quest41411:OnSubStart4141110(arg1)
    print("OnSubStart4141110")
    self:CreateQuestNpc(arg1, npcs.BarbaraData.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1020Data.id, 2)
    self:RequestInteraction(npcs.BarbaraData.alias)
end

function Quest41411:OnSubFinish4141110(arg1)
    print("OnSubFinish4141110")
    self:SafeDestroyQuestNpc(npcs.BarbaraData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1020Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    self:PaimonDis()
end

function Quest41411:OnSubFailed4141110(arg1)
    print("OnSubFailed4141110")
end

function Quest41411:OnSubStart4141111(arg1)
    print("OnSubStart4141111")
    actorMgr:CreateActorWithPos(datas.Q4141111Trigger_.alias, datas.Q4141111Trigger_.script, datas.Q4141111Trigger_.id, 0, datas.Q4141111Trigger_.point.pos, datas.Q4141111Trigger_.point.rot, true, false, 3)
end

function Quest41411:OnSubFinish4141111(arg1)
    print("OnSubFinish4141111")
    self:NarratorOnlyTaskByData(clientData.NarratorWithId01, nil)
end

function Quest41411:OnSubFailed4141111(arg1)
    print("OnSubFailed4141111")
end

function Quest41411:OnSubStart4141112(arg1)
    print("OnSubStart4141112")
end

function Quest41411:OnSubFinish4141112(arg1)
    print("OnSubFinish4141112")
    self:NarratorOnlyTaskByData(clientData.NarratorWithId02, nil)
end

function Quest41411:OnSubFailed4141112(arg1)
    print("OnSubFailed4141112")
end

function Quest41411:OnSubStart4141104(arg1)
    print("OnSubStart4141104")
end

function Quest41411:OnSubFinish4141104(arg1)
    print("OnSubFinish4141104")
end

function Quest41411:OnSubFailed4141104(arg1)
    print("OnSubFailed4141104")
end

function Quest41411:OnSubStart4141113(arg1)
    print("OnSubStart4141113")
    self:CallDelay(2, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.BarbaraData.id, 1)
        arg1_2:RequestInteraction(npcs.BarbaraData.alias)
    end)
end

function Quest41411:OnSubFinish4141113(arg1)
    print("OnSubFinish4141113")
    self:SafeDestroyQuestNpc(npcs.BarbaraData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    self:PaimonDis()
end

function Quest41411:OnSubFailed4141113(arg1)
    print("OnSubFailed4141113")
end

return Quest41411
