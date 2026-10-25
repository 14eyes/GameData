require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11201 = class("Quest11201", QuestActorProxy)
Quest11201.defaultAlias = "Quest11201"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest11201:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest11201:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1120100"] = self.OnSubStart1120100,
        ["1120101"] = self.OnSubStart1120101,
        ["1120102"] = self.OnSubStart1120102,
        ["1120123"] = self.OnSubStart1120123,
        ["1120124"] = self.OnSubStart1120124,
        ["1120125"] = self.OnSubStart1120125,
        ["1120126"] = self.OnSubStart1120126,
        ["1120103"] = self.OnSubStart1120103,
        ["1120104"] = self.OnSubStart1120104,
        ["1120117"] = self.OnSubStart1120117,
        ["1120105"] = self.OnSubStart1120105,
        ["1120106"] = self.OnSubStart1120106,
        ["1120107"] = self.OnSubStart1120107,
        ["1120114"] = self.OnSubStart1120114,
        ["1120108"] = self.OnSubStart1120108,
        ["1120109"] = self.OnSubStart1120109,
        ["1120116"] = self.OnSubStart1120116,
        ["1120115"] = self.OnSubStart1120115,
        ["1120110"] = self.OnSubStart1120110,
        ["1120119"] = self.OnSubStart1120119,
        ["1120118"] = self.OnSubStart1120118,
        ["1120120"] = self.OnSubStart1120120,
        ["1120111"] = self.OnSubStart1120111,
        ["1120112"] = self.OnSubStart1120112,
        ["1120113"] = self.OnSubStart1120113,
        ["1120121"] = self.OnSubStart1120121
    }
end

function Quest11201:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1120100"] = self.OnSubFinish1120100,
        ["1120101"] = self.OnSubFinish1120101,
        ["1120102"] = self.OnSubFinish1120102,
        ["1120123"] = self.OnSubFinish1120123,
        ["1120124"] = self.OnSubFinish1120124,
        ["1120125"] = self.OnSubFinish1120125,
        ["1120126"] = self.OnSubFinish1120126,
        ["1120103"] = self.OnSubFinish1120103,
        ["1120104"] = self.OnSubFinish1120104,
        ["1120117"] = self.OnSubFinish1120117,
        ["1120105"] = self.OnSubFinish1120105,
        ["1120106"] = self.OnSubFinish1120106,
        ["1120107"] = self.OnSubFinish1120107,
        ["1120114"] = self.OnSubFinish1120114,
        ["1120108"] = self.OnSubFinish1120108,
        ["1120109"] = self.OnSubFinish1120109,
        ["1120116"] = self.OnSubFinish1120116,
        ["1120115"] = self.OnSubFinish1120115,
        ["1120110"] = self.OnSubFinish1120110,
        ["1120119"] = self.OnSubFinish1120119,
        ["1120118"] = self.OnSubFinish1120118,
        ["1120120"] = self.OnSubFinish1120120,
        ["1120111"] = self.OnSubFinish1120111,
        ["1120112"] = self.OnSubFinish1120112,
        ["1120113"] = self.OnSubFinish1120113,
        ["1120121"] = self.OnSubFinish1120121
    }
end

function Quest11201:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1120100"] = self.OnSubFailed1120100,
        ["1120101"] = self.OnSubFailed1120101,
        ["1120102"] = self.OnSubFailed1120102,
        ["1120123"] = self.OnSubFailed1120123,
        ["1120124"] = self.OnSubFailed1120124,
        ["1120125"] = self.OnSubFailed1120125,
        ["1120126"] = self.OnSubFailed1120126,
        ["1120103"] = self.OnSubFailed1120103,
        ["1120104"] = self.OnSubFailed1120104,
        ["1120117"] = self.OnSubFailed1120117,
        ["1120105"] = self.OnSubFailed1120105,
        ["1120106"] = self.OnSubFailed1120106,
        ["1120107"] = self.OnSubFailed1120107,
        ["1120114"] = self.OnSubFailed1120114,
        ["1120108"] = self.OnSubFailed1120108,
        ["1120109"] = self.OnSubFailed1120109,
        ["1120116"] = self.OnSubFailed1120116,
        ["1120115"] = self.OnSubFailed1120115,
        ["1120110"] = self.OnSubFailed1120110,
        ["1120119"] = self.OnSubFailed1120119,
        ["1120118"] = self.OnSubFailed1120118,
        ["1120120"] = self.OnSubFailed1120120,
        ["1120111"] = self.OnSubFailed1120111,
        ["1120112"] = self.OnSubFailed1120112,
        ["1120113"] = self.OnSubFailed1120113,
        ["1120121"] = self.OnSubFailed1120121
    }
end

function Quest11201:Start()
    print("Start")
end

function Quest11201:OnDestroy()
    print("OnDestroy")
end

function Quest11201:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest11201:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest11201:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest11201:Endquest1()
    local actor = actorMgr:GetActor("11201")
    if actor ~= nil then
        actor:FinishQuestID(false, 1120109)
    end

    actor:GetQuestNpcActor("Npc10233"):PerformDither(false, 1, self.HideSelf)
end

function Quest11201:Endquest2()
    local actor = actorMgr:GetActor("11201")
    if actor ~= nil then
        actor:FinishQuestID(false, 1120106)
    end

    actor:GetQuestNpcActor("Npc10233"):DoFreeStyle(1190)
end

function Quest11201:Starttalk1()
    print("Starttalk1")
    self:RequestInteraction("Npc10233")
end

function Quest11201:Narrow()
    print("Narrow")
    self:NarratorOnlyTaskByData(datas.NarratorWithId3, nil, 0)
end

function Quest11201:StartTalk2()
    print("StartTalk2")
    self:CreateQuestNpcById(1120111, npcs.Npc10233Data.id, 0)
    self:RequestInteraction("Npc10233")
end

function Quest11201:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("invoke-1")
        local actor = actorMgr:GetActor("11201")
        if actor ~= nil then
            actor:FinishQuestID(false, 1120124)
        end

        local v = actorMgr:GetActor("11201")
        if v ~= nil then
            v:FinishQuestID(false, 1120125)
        end
    elseif arg1 == 2 then
        print("invoke-2")
        local actor = actorMgr:GetActor("11201")
        if actor ~= nil then
            actor:FinishQuestID(false, 1120125)
        end
    elseif arg1 == 3 then
        print("invoke-3")
        local actor = actorMgr:GetActor("11201")
        if actor ~= nil then
            actor:FinishQuestID(false, 1120121)
        end
    end
end

function Quest11201:Endquest3()
    actorMgr:GetActor("11201"):GetQuestNpcActor("Npc10233"):PerformDither(false, 1, self.HideSelf)
end

function Quest11201:PaimonVanish()
    print("paimon vanish")
    local questNpcActor = self:GetQuestNpcActor("Paimon")
    questNpcActor:AirModeOff()
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest11201:Start11()
    print("Start11")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.StartTalk2, nil, nil, "")
end

function Quest11201:Narrator06()
    print("Narrator06")
    self:NarratorOnlyTaskByData(datas.NarratorWithId2)
end

function Quest11201:OnSubStart1120100(arg1)
    print("OnSubStart1120100")
end

function Quest11201:OnSubFinish1120100(arg1)
    print("OnSubFinish1120100")
end

function Quest11201:OnSubFailed1120100(arg1)
    print("OnSubFailed1120100")
end

function Quest11201:OnSubStart1120101(arg1)
    print("OnSubStart1120101")
    self:CreateQuestNpc(arg1, npcs.Npc2027Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc2028Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc10233Data.id, 0)
    self:GetQuestNpcActor(npcs.Npc2027Data.alias):DoFreeStyle(1250, true, nil, true, true)
    self:GetQuestNpcActor(npcs.Npc2028Data.alias):DoFreeStyle(0, true, nil, true, true)
    self:GetQuestNpcActor(npcs.Npc10233Data.alias):DoFreeStyle(1190, true, nil, true, true)
    self:NotifyTo("Npc2068", 1, true)
end

function Quest11201:OnSubFinish1120101(arg1)
    print("OnSubFinish1120101")
    self:PaimonVanish()
end

function Quest11201:OnSubFailed1120101(arg1)
    print("OnSubFailed1120101")
end

function Quest11201:OnSubStart1120102(arg1)
    print("OnSubStart1120102")
    self:CreateQuestNpc(arg1, npcs.Npc10233Data.id, 0)
    self:GetQuestNpcActor(npcs.Npc10233Data.alias):DoFreeStyle(1190, true, 0, true, true)
end

function Quest11201:OnSubFinish1120102(arg1)
    print("OnSubFinish1120102")
    self:NotifyTo("Npc2068", 0, true)
    self:PaimonVanish()
end

function Quest11201:OnSubFailed1120102(arg1)
    print("OnSubFailed1120102")
end

function Quest11201:OnSubStart1120123(arg1)
    print("OnSubStart1120123")
    self:GetQuestNpcActor(npcs.Npc10233Data.alias):RunToRouteTask(datas.RoutePointsData1120123)
    actorMgr:CreateActorWithPos(datas.Q1120123Trigger_.alias, datas.Q1120123Trigger_.script, datas.Q1120123Trigger_.id, 0, datas.Q1120123Trigger_.point.pos, datas.Q1120123Trigger_.point.rot, true, false, 3)
    actorMgr:CreateActorWithPos(datas.Q1120123Trigger_Faild_.alias, datas.Q1120123Trigger_Faild_.script, datas.Q1120123Trigger_Faild_.id, 0, datas.Q1120123Trigger_Faild_.point.pos, datas.Q1120123Trigger_Faild_.point.rot, true, false, 3)
end

function Quest11201:OnSubFinish1120123(arg1)
    print("OnSubFinish1120123")
    actorMgr:DestroyEntityActor(datas.Q1120008Trigger_.alias, 3, false)
end

function Quest11201:OnSubFailed1120123(arg1)
    print("OnSubFailed1120123")
end

function Quest11201:OnSubStart1120124(arg1)
    print("OnSubStart1120124")
    self:RequestInteraction("Npc10233")
end

function Quest11201:OnSubFinish1120124(arg1)
    print("OnSubFinish1120124")
    self:NarratorOnlyTaskByData(datas.NarratorWithId5, nil, 0)
    self:PaimonVanish()
end

function Quest11201:OnSubFailed1120124(arg1)
    print("OnSubFailed1120124")
end

function Quest11201:OnSubStart1120125(arg1)
    print("OnSubStart1120125")
    self:RequestInteraction("Npc10233")
end

function Quest11201:OnSubFinish1120125(arg1)
    print("OnSubFinish1120125")
    self:NarratorOnlyTaskByData(datas.NarratorWithId6, nil, 0)
    self:PaimonVanish()
end

function Quest11201:OnSubFailed1120125(arg1)
    print("OnSubFailed1120125")
end

function Quest11201:OnSubStart1120126(arg1)
    print("OnSubStart1120126")
end

function Quest11201:OnSubFinish1120126(arg1)
    print("OnSubFinish1120126")
    self:GetQuestNpcActor(npcs.Npc10233Data.alias):RunToRouteTask(datas.RoutePointsData1120103)
    actorMgr:CreateActorWithPos(datas.Q1120103Trigger_Failed_.alias, datas.Q1120103Trigger_Failed_.script, datas.Q1120103Trigger_Failed_.id, 0, datas.Q1120103Trigger_Failed_.point.pos, datas.Q1120103Trigger_Failed_.point.rot, true, false, 3)
end

function Quest11201:OnSubFailed1120126(arg1)
    print("OnSubFailed1120126")
end

function Quest11201:OnSubStart1120103(arg1)
    print("OnSubStart1120103")
    actorMgr:CreateActorWithPos(datas.Q1120103Trigger_.alias, datas.Q1120103Trigger_.script, datas.Q1120103Trigger_.id, 0, datas.Q1120103Trigger_.point.pos, datas.Q1120103Trigger_.point.rot, true, false, 3)
end

function Quest11201:OnSubFinish1120103(arg1)
    print("OnSubFinish1120103")
end

function Quest11201:OnSubFailed1120103(arg1)
    print("OnSubFailed1120103")
end

function Quest11201:OnSubStart1120104(arg1)
    print("OnSubStart1120104")
    self:RequestInteraction("Npc10233")
end

function Quest11201:OnSubFinish1120104(arg1)
    print("OnSubFinish1120104")
    self:PaimonVanish()
end

function Quest11201:OnSubFailed1120104(arg1)
    print("OnSubFailed1120104")
end

function Quest11201:OnSubStart1120117(arg1)
    print("OnSubStart1120117")
    actorMgr:CreateActorWithPos(datas.Q1120105Trigger_.alias, datas.Q1120105Trigger_.script, datas.Q1120105Trigger_.id, 0, datas.Q1120105Trigger_.point.pos, datas.Q1120105Trigger_.point.rot, true, false, 3)
    actorMgr:CreateActorWithPos(datas.Q1120117Trigger_.alias, datas.Q1120117Trigger_.script, datas.Q1120117Trigger_.id, 0, datas.Q1120117Trigger_.point.pos, datas.Q1120117Trigger_.point.rot, true, false, 3)
    self:CreateQuestNpc(arg1, npcs.Npc10233Data.id, 0)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc10233Data.alias)
    questNpcActor:Standby()
    questNpcActor:DoFreeStyle(1240, true, nil, true, true)
    self:CreateSpeechBubbleTask(npcs.Npc10233Data.id, 112019201, 10, true, 5, 6)
end

function Quest11201:OnSubFinish1120117(arg1)
    print("OnSubFinish1120117")
end

function Quest11201:OnSubFailed1120117(arg1)
    print("OnSubFailed1120117")
end

function Quest11201:OnSubStart1120105(arg1)
    print("OnSubStart1120105")
    self:GetQuestNpcActor(npcs.Npc10233Data.alias):NarratorOnlyTaskByData(datas.NarratorWithId1, nil, 0)
end

function Quest11201:OnSubFinish1120105(arg1)
    print("OnSubFinish1120105")
end

function Quest11201:OnSubFailed1120105(arg1)
    print("OnSubFailed1120105")
end

function Quest11201:OnSubStart1120106(arg1)
    print("OnSubStart1120106")
    self:GetQuestNpcActor(npcs.Npc10233Data.alias):RunToRouteTask(datas.RoutePointsData1120106, self.Endquest2)
    self:ClearSpeechBubbleTask()
    self:CallDelay(2, self.Narrator06)
end

function Quest11201:OnSubFinish1120106(arg1)
    print("OnSubFinish1120106")
end

function Quest11201:OnSubFailed1120106(arg1)
    print("OnSubFailed1120106")
end

function Quest11201:OnSubStart1120107(arg1)
    print("OnSubStart1120107")
end

function Quest11201:OnSubFinish1120107(arg1)
    print("OnSubFinish1120107")
end

function Quest11201:OnSubFailed1120107(arg1)
    print("OnSubFailed1120107")
end

function Quest11201:OnSubStart1120114(arg1)
    print("OnSubStart1120114")
end

function Quest11201:OnSubFinish1120114(arg1)
    print("OnSubFinish1120114")
    self:PaimonVanish()
end

function Quest11201:OnSubFailed1120114(arg1)
    print("OnSubFailed1120114")
end

function Quest11201:OnSubStart1120108(arg1)
    print("OnSubStart1120108")
end

function Quest11201:OnSubFinish1120108(arg1)
    print("OnSubFinish1120108")
    self:PaimonVanish()
end

function Quest11201:OnSubFailed1120108(arg1)
    print("OnSubFailed1120108")
end

function Quest11201:OnSubStart1120109(arg1)
    print("OnSubStart1120109")
    self:GetQuestNpcActor(npcs.Npc10233Data.alias):RunToTask(sceneData:GetDummyPoint(3, "Q1120109Qiqi").pos, self.Endquest1)
    self:CallDelay(3, self.Narrow)
end

function Quest11201:OnSubFinish1120109(arg1)
    print("OnSubFinish1120109")
end

function Quest11201:OnSubFailed1120109(arg1)
    print("OnSubFailed1120109")
end

function Quest11201:OnSubStart1120116(arg1)
    print("OnSubStart1120116")
end

function Quest11201:OnSubFinish1120116(arg1)
    print("OnSubFinish1120116")
end

function Quest11201:OnSubFailed1120116(arg1)
    print("OnSubFailed1120116")
end

function Quest11201:OnSubStart1120115(arg1)
    print("OnSubStart1120115")
    self:CreateQuestNpc(arg1, npcs.Npc10233Data.id, 0)
    self:CallDelay(1, self.Starttalk1)
end

function Quest11201:OnSubFinish1120115(arg1)
    print("OnSubFinish1120115")
    self:PaimonVanish()
end

function Quest11201:OnSubFailed1120115(arg1)
    print("OnSubFailed1120115")
end

function Quest11201:OnSubStart1120110(arg1)
    print("OnSubStart1120110")
    self:CreateQuestNpc(arg1, npcs.Npc10233Data.id, 0)
    actorMgr:CreateActorWithPos(datas.Q1120110Trigger_.alias, datas.Q1120110Trigger_.script, datas.Q1120110Trigger_.id, 0, datas.Q1120110Trigger_.point.pos, datas.Q1120110Trigger_.point.rot, true, false, 20102)
end

function Quest11201:OnSubFinish1120110(arg1)
    print("OnSubFinish1120110")
    self:PaimonVanish()
end

function Quest11201:OnSubFailed1120110(arg1)
    print("OnSubFailed1120110")
end

function Quest11201:OnSubStart1120119(arg1)
    print("OnSubStart1120119")
end

function Quest11201:OnSubFinish1120119(arg1)
    print("OnSubFinish1120119")
end

function Quest11201:OnSubFailed1120119(arg1)
    print("OnSubFailed1120119")
end

function Quest11201:OnSubStart1120118(arg1)
    print("OnSubStart1120118")
    self:RequestInteraction("Npc10233")
end

function Quest11201:OnSubFinish1120118(arg1)
    print("OnSubFinish1120118")
    self:PaimonVanish()
end

function Quest11201:OnSubFailed1120118(arg1)
    print("OnSubFailed1120118")
end

function Quest11201:OnSubStart1120120(arg1)
    print("OnSubStart1120120")
    self:DestroyQuestNpcActor(npcs.Npc10233Data.alias, 3)
end

function Quest11201:OnSubFinish1120120(arg1)
    print("OnSubFinish1120120")
end

function Quest11201:OnSubFailed1120120(arg1)
    print("OnSubFailed1120120")
end

function Quest11201:OnSubStart1120111(arg1)
    print("OnSubStart1120111")
    self:CallDelay(2, self.Start11)
end

function Quest11201:OnSubFinish1120111(arg1)
    print("OnSubFinish1120111")
    self:GetQuestNpcActor(npcs.Npc10233Data.alias):RunToTask({x = -59.17604, y = 13.35394, z = 96.41414}, self.Endquest3)
    self:PaimonVanish()
end

function Quest11201:OnSubFailed1120111(arg1)
    print("OnSubFailed1120111")
end

function Quest11201:OnSubStart1120112(arg1)
    print("OnSubStart1120112")
end

function Quest11201:OnSubFinish1120112(arg1)
    print("OnSubFinish1120112")
end

function Quest11201:OnSubFailed1120112(arg1)
    print("OnSubFailed1120112")
end

function Quest11201:OnSubStart1120113(arg1)
    print("OnSubStart1120113")
    self:CreateQuestNpc(arg1, npcs.Npc10233Data.id, 0)
    actorMgr:CreateActorWithPos(datas.Q1120113Trigger_.alias, datas.Q1120113Trigger_.script, datas.Q1120113Trigger_.id, 0, datas.Q1120113Trigger_.point.pos, datas.Q1120113Trigger_.point.rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc10233Data.alias):DoFreeStyle(1190, true, nil, true, true)
end

function Quest11201:OnSubFinish1120113(arg1)
    print("OnSubFinish1120113")
    self:DestroyQuestNpcActor(npcs.Npc10233Data.alias, 0)
    self:FinishQuestID(false, 1120121)
    self:PaimonVanish()
end

function Quest11201:OnSubFailed1120113(arg1)
    print("OnSubFailed1120113")
end

function Quest11201:OnSubStart1120121(arg1)
    print("OnSubStart1120121")
end

function Quest11201:OnSubFinish1120121(arg1)
    print("OnSubFinish1120121")
    self:PaimonVanish()
end

function Quest11201:OnSubFailed1120121(arg1)
    print("OnSubFailed1120121")
end

return Quest11201
