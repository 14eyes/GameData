require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41213 = class("Quest41213", QuestActorProxy)
Quest41213.defaultAlias = "Quest41213"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest41213:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest41213:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4121301"] = self.OnSubStart4121301,
        ["4121302"] = self.OnSubStart4121302,
        ["4121317"] = self.OnSubStart4121317,
        ["4121318"] = self.OnSubStart4121318,
        ["4121303"] = self.OnSubStart4121303,
        ["4121304"] = self.OnSubStart4121304,
        ["4121305"] = self.OnSubStart4121305,
        ["4121306"] = self.OnSubStart4121306,
        ["4121307"] = self.OnSubStart4121307,
        ["4121309"] = self.OnSubStart4121309,
        ["4121311"] = self.OnSubStart4121311,
        ["4121310"] = self.OnSubStart4121310,
        ["4121319"] = self.OnSubStart4121319,
        ["4121320"] = self.OnSubStart4121320,
        ["4121308"] = self.OnSubStart4121308,
        ["4121313"] = self.OnSubStart4121313,
        ["4121312"] = self.OnSubStart4121312,
        ["4121316"] = self.OnSubStart4121316,
        ["4121315"] = self.OnSubStart4121315,
        ["4121314"] = self.OnSubStart4121314
    }
end

function Quest41213:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4121301"] = self.OnSubFinish4121301,
        ["4121302"] = self.OnSubFinish4121302,
        ["4121317"] = self.OnSubFinish4121317,
        ["4121318"] = self.OnSubFinish4121318,
        ["4121303"] = self.OnSubFinish4121303,
        ["4121304"] = self.OnSubFinish4121304,
        ["4121305"] = self.OnSubFinish4121305,
        ["4121306"] = self.OnSubFinish4121306,
        ["4121307"] = self.OnSubFinish4121307,
        ["4121309"] = self.OnSubFinish4121309,
        ["4121311"] = self.OnSubFinish4121311,
        ["4121310"] = self.OnSubFinish4121310,
        ["4121319"] = self.OnSubFinish4121319,
        ["4121320"] = self.OnSubFinish4121320,
        ["4121308"] = self.OnSubFinish4121308,
        ["4121313"] = self.OnSubFinish4121313,
        ["4121312"] = self.OnSubFinish4121312,
        ["4121316"] = self.OnSubFinish4121316,
        ["4121315"] = self.OnSubFinish4121315,
        ["4121314"] = self.OnSubFinish4121314
    }
end

function Quest41213:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4121301"] = self.OnSubFailed4121301,
        ["4121302"] = self.OnSubFailed4121302,
        ["4121317"] = self.OnSubFailed4121317,
        ["4121318"] = self.OnSubFailed4121318,
        ["4121303"] = self.OnSubFailed4121303,
        ["4121304"] = self.OnSubFailed4121304,
        ["4121305"] = self.OnSubFailed4121305,
        ["4121306"] = self.OnSubFailed4121306,
        ["4121307"] = self.OnSubFailed4121307,
        ["4121309"] = self.OnSubFailed4121309,
        ["4121311"] = self.OnSubFailed4121311,
        ["4121310"] = self.OnSubFailed4121310,
        ["4121319"] = self.OnSubFailed4121319,
        ["4121320"] = self.OnSubFailed4121320,
        ["4121308"] = self.OnSubFailed4121308,
        ["4121313"] = self.OnSubFailed4121313,
        ["4121312"] = self.OnSubFailed4121312,
        ["4121316"] = self.OnSubFailed4121316,
        ["4121315"] = self.OnSubFailed4121315,
        ["4121314"] = self.OnSubFailed4121314
    }
end

function Quest41213:Start()
    print("Start")
end

function Quest41213:OnDestroy()
    print("OnDestroy")
end

function Quest41213:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41213:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41213:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ActionSafeCall(self.EliminateAllNPC)
end

function Quest41213:EliminateShatang()
    print("EliminateShatang")
    self:DestroyQuestNpcActor(npcs.Npc1019Data.alias, 3)
end

function Quest41213:abeiduokaiche()
    print("abeiduokaiche")
    self:NarratorOnlyTaskByData(datas.kaiche1, nil, 41213)
end

function Quest41213:jidongshukaiche()
    print("jidongshukaiche")
    self:NarratorOnlyTaskByData(datas.kaiche2, nil, 41213)
end

function Quest41213:TALKTOSHATANG()
    print("TALKTOSHATANG")
    self:RequestInteraction(npcs.Npc1019Data.alias)
end

function Quest41213:TALKTOABEIDUO()
    print("TALKTOABEIDUO")
    self:RequestInteraction(npcs.Npc1018Data.alias)
end

function Quest41213:SetShatangPosition1()
    print("SetShatangPosition1")
    self:GetQuestNpcActor(npcs.Npc1019Data.alias):SetPosAndTurnTo(sceneData:GetDummyPoint(3, "Q41213_shatang3").pos, sceneData:GetDummyPoint(3, "Q41213_shatang3").rot, true)
end

function Quest41213:EliminateAbeiduo()
    print("EliminateAbeiduo")
    self:DestroyQuestNpcActor(npcs.Npc1019Data.alias, 3)
end

function Quest41213:EliminateAll()
    print("EliminateAll")
    self:DestroyQuestNpcActor(npcs.Npc157701Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1019Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1018Data.alias, 3)
end

function Quest41213:TransPort1()
    print("TransPort1")
    self:TransmitPlayerByQuestId(4121305, 1, self.TALKTOSHATANG)
end

function Quest41213:Transport2()
    print("Transport2")
    self:TransmitPlayerByQuestId(4121310, 1, self.TALKTOABEIDUO)
end

function Quest41213:Transport3()
    print("Transport3")
    self:TransmitPlayerByQuestId(4121314, 1, self.TALKTOABEIDUO)
end

function Quest41213:DestroyAll()
    print("DestroyAll")
    self:DestroyQuestNpcActor(npcs.Npc1019Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc157701Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10341Data.alias, 3)
end

function Quest41213:Q02Finish()
    print("Q02Finish")
    self:EliminateShatang()
    self:EliminatePaimon()
end

function Quest41213:Q05Finish()
    print("Q05Finish")
    self:EliminatePaimon()
    self:EliminateShatang()
end

function Quest41213:Q07Finish()
    print("Q07Finish")
    self:DestroyAll()
    self:EliminatePaimon()
end

function Quest41213:Q10Finish()
    print("Q10Finish")
    self:EliminateAll()
    self:DestroyQuestNpcActor(npcs.PaimonData.alias, 3)
end

function Quest41213:Q14Finish()
    print("Q14Finish")
    self:EliminateAll()
    self:EliminatePaimon()
    self:ShowDragonSpinePage(5)
end

function Quest41213:FinishCutScene()
    print("FinishCutScene")
    self:FinishQuestID(false, 4121308)
end

function Quest41213:FailCutScene()
    print("FailCutScene")
    self:FinishQuestID(true, 4121399)
end

function Quest41213:EliminatePaimon()
    print("EliminatePaimon")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest41213:TransportFail()
    print("TransportFail")
    self:CallDelay(2, function(arg1)
        arg1:TransmitPlayerByQuestId(4121312, 1, function(arg1)
            arg1.Finish16()
        end)
    end)
end

function Quest41213:Finish16()
    print("Finish16")
    self:FinishQuestID(false, 4121316)
end

function Quest41213:InvokeOnInteraction(arg1)
    if arg1 == 4121317 then
        self:FinishQuestID(false, 4121317)
        print("refreshSword")
    elseif arg1 == 4121318 then
        self:FinishQuestID(false, 4121318)
    elseif arg1 == 4121319 then
        self:FinishQuestID(false, 4121319)
    elseif arg1 == 4121320 then
        self:FinishQuestID(false, 4121320)
    end
end

function Quest41213:PlayCS()
    print("PlayCS")
    self:PlayCutsceneIndex("412130801", self.FinishCutScene, nil, self.FailCutScene, false)
end

function Quest41213:EliminateAllNPC()
    print("EliminateAllNPC")
    self:DestroyQuestNpcActor(npcs.Npc1019Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc157701Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1018Data.alias, 3)
    self:CreateQuestNpc(quest, npcs.Npc10341Data.id, 0)
    self:CreateQuestNpc(quest, npcs.PaimonData.id, 0)
end

function Quest41213:OnSubStart4121301(arg1)
    print("OnStart4121301")
    if self:IsInNavigation() == false then
        self:SetNavigationByMainId(41213, true)
    end
end

function Quest41213:OnSubFinish4121301(arg1)
    print("OnSubFinish4121301")
end

function Quest41213:OnSubFailed4121301(arg1)
    print("OnSubFailed4121301")
end

function Quest41213:OnSubStart4121302(arg1)
    print("OnSubStart4121302")
    self:LevelLoadFinishSafeCall(function(arg1)
        local questNpcCreateTask = arg1:CreateQuestNpcCreateTask({npcs.Npc1019Data.alias})
        arg1:TransmitPlayerByQuestId(4121302, 1, nil, function(arg1)
            arg1:CreateQuestNpcById(4121302, npcs.Npc1019Data.id, 1)
        end, questNpcCreateTask)
    end)
end

function Quest41213:OnSubFinish4121302(arg1)
    print("OnSubFinish4121302")
    self:ActionSafeCall(self.Q02Finish)
end

function Quest41213:OnSubFailed4121302(arg1)
    print("OnSubFailed4121302")
end

function Quest41213:OnSubStart4121317(arg1)
    print("OnSubStart4121317")
end

function Quest41213:OnSubFinish4121317(arg1)
    print("OnSubFinish4121317")
end

function Quest41213:OnSubFailed4121317(arg1)
    print("OnSubFailed4121317")
end

function Quest41213:OnSubStart4121318(arg1)
    print("OnSubStart4121318")
end

function Quest41213:OnSubFinish4121318(arg1)
    print("OnSubFinish4121318")
end

function Quest41213:OnSubFailed4121318(arg1)
    print("OnSubFailed4121318")
end

function Quest41213:OnSubStart4121303(arg1)
    print("OnSubStart4121303")
end

function Quest41213:OnSubFinish4121303(arg1)
    print("OnSubFinish4121303")
end

function Quest41213:OnSubFailed4121303(arg1)
    print("OnSubFailed4121303")
end

function Quest41213:OnSubStart4121304(arg1)
    print("OnSubStart4121304")
end

function Quest41213:OnSubFinish4121304(arg1)
    print("OnSubFinish4121304")
end

function Quest41213:OnSubFailed4121304(arg1)
    print("OnSubFailed4121304")
end

function Quest41213:OnSubStart4121305(arg1)
    print("OnSubStart4121305")
    self:CallDelay(2, function(arg1)
        local questNpcCreateTask = arg1:CreateQuestNpcCreateTask({npcs.Npc1019Data.alias})
        arg1:TransmitPlayerByQuestId(4121305, 1, nil, function(arg1)
            arg1:CreateQuestNpcById(4121305, npcs.Npc1019Data.id, 1)
        end, questNpcCreateTask)
    end)
end

function Quest41213:OnSubFinish4121305(arg1)
    print("OnSubFinish4121305")
    self:ActionSafeCall(self.Q05Finish)
end

function Quest41213:OnSubFailed4121305(arg1)
    print("OnSubFailed4121305")
end

function Quest41213:OnSubStart4121306(arg1)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc157701Data.id)
        arg1_2:GetQuestNpcActor(npcs.Npc157701Data.alias):DoFreeStyle(4200, true, nil, true, true)
    end)

    self:ActionSafeCall(function(arg1_2)
        arg1_2:CallDelay(1, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc1019Data.id)
        end)
    end)
end

function Quest41213:OnSubFinish4121306(arg1)
    print("OnSubFinish4121306")
end

function Quest41213:OnSubFailed4121306(arg1)
    print("OnSubFailed4121306")
end

function Quest41213:OnSubStart4121307(arg1)
    print("OnSubStart4121307")
end

function Quest41213:OnSubFinish4121307(arg1)
    print("OnSubFinish4121307")
    self:ActionSafeCall(self.Q07Finish)
end

function Quest41213:OnSubFailed4121307(arg1)
    print("OnSubFailed4121307")
end

function Quest41213:OnSubStart4121309(arg1)
    print("OnSubStart4121309")
end

function Quest41213:OnSubFinish4121309(arg1)
    print("OnSubFinish4121309")
end

function Quest41213:OnSubFailed4121309(arg1)
    print("OnSubFailed4121309")
end

function Quest41213:OnSubStart4121311(arg1)
    print("OnSubStart4121311")
end

function Quest41213:OnSubFinish4121311(arg1)
    print("OnSubFinish4121311")
    self:abeiduokaiche()
end

function Quest41213:OnSubFailed4121311(arg1)
    print("OnSubFailed4121311")
end

function Quest41213:OnSubStart4121310(arg1)
    print("OnSubStart4121310")
    self:CallDelay(2, function(arg1)
        local questNpcCreateTask = arg1:CreateQuestNpcCreateTask({npcs.Npc1018Data.alias})
        arg1:TransmitPlayerByQuestId(4121310, 1, nil, function(arg1)
            arg1:CreateQuestNpcById(4121310, npcs.Npc1018Data.id, 0)
            arg1:CreateQuestNpcById(4121310, npcs.Npc1019Data.id, 1)
            arg1:CreateQuestNpcById(4121310, npcs.Npc157701Data.id, 2)
        end, questNpcCreateTask)
    end)
end

function Quest41213:OnSubFinish4121310(arg1)
    print("OnSubFinish4121310")
    self:Q10Finish()
end

function Quest41213:OnSubFailed4121310(arg1)
    print("OnSubFailed4121310")
end

function Quest41213:OnSubStart4121319(arg1)
    print("OnSubStart4121319")
end

function Quest41213:OnSubFinish4121319(arg1)
    print("OnSubFinish4121319")
end

function Quest41213:OnSubFailed4121319(arg1)
    print("OnSubFailed4121319")
end

function Quest41213:OnSubStart4121320(arg1)
    print("OnSubStart4121320")
end

function Quest41213:OnSubFinish4121320(arg1)
    print("OnSubFinish4121320")
end

function Quest41213:OnSubFailed4121320(arg1)
    print("OnSubFailed4121320")
end

function Quest41213:OnSubStart4121308(arg1)
    print("OnSubStart4121308")
    self:ActionSafeCall(self.PlayCS)
end

function Quest41213:OnSubFinish4121308(arg1)
    print("OnSubFinish4121308")
end

function Quest41213:OnSubFailed4121308(arg1)
    print("OnSubFailed4121308")
end

function Quest41213:OnSubStart4121313(arg1)
    print("OnSubStart4121313")
    self:CallDelay(1, self.jidongshukaiche)
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q41213_camera").pos, 0, 3, true, false)
end

function Quest41213:OnSubFinish4121313(arg1)
    print("OnSubFinisht(4121313")
    self:CallDelay(4, function(arg1)
        arg1:LevelLoadFinishSafeCall(function(arg1)
            local questNpcCreateTask = arg1:CreateQuestNpcCreateTask({npcs.Npc1018Data.alias})
            arg1:TransmitPlayerByQuestId(4121315, 1, nil, function(arg1)
                arg1:CreateQuestNpcById(4121315, npcs.Npc1018Data.id)
                arg1:CreateQuestNpcById(4121315, npcs.Npc1019Data.id)
                arg1:CreateQuestNpcById(4121315, npcs.Npc157701Data.id)
            end, questNpcCreateTask)
        end)
    end)
end

function Quest41213:OnSubFailed4121313(arg1)
    print("OnSubFailed4121313")
end

function Quest41213:OnSubStart4121312(arg1)
    print("OnSubStart4121312")
end

function Quest41213:OnSubFinish4121312(arg1)
    print("OnSubFinish4121312")
end

function Quest41213:OnSubFailed4121312(arg1)
    print("OnSubFailed(4121312")
    self:CallDelay(4, function(arg1)
        local questNpcCreateTask = arg1:CreateQuestNpcCreateTask({npcs.Npc1018Data.alias})
        arg1:TransmitPlayerByQuestId(4121315, 1, nil, function(arg1)
            arg1:CreateQuestNpcById(4121315, npcs.Npc1018Data.id)
            arg1:CreateQuestNpcById(4121315, npcs.Npc1019Data.id)
            arg1:CreateQuestNpcById(4121315, npcs.Npc157701Data.id)
        end, questNpcCreateTask)
    end)
end

function Quest41213:OnSubStart4121316(arg1)
    print("OnSubStart4121316")
end

function Quest41213:OnSubFinish4121316(arg1)
    print("OnSubFinish4121316")
end

function Quest41213:OnSubFailed4121316(arg1)
    print("OnSubFailed4121316")
end

function Quest41213:OnSubStart4121315(arg1)
    print("OnSubStart4121315")
end

function Quest41213:OnSubFinish4121315(arg1)
    print("OnSubFinisht(4121315")
    self:CallDelay(4, function(arg1)
        arg1:LevelLoadFinishSafeCall(function(arg1)
            local questNpcCreateTask = arg1:CreateQuestNpcCreateTask({npcs.Npc1018Data.alias})
            arg1:TransmitPlayerByQuestId(4121315, 1, nil, function(arg1)
                arg1:CreateQuestNpcById(4121315, npcs.Npc1018Data.id)
                arg1:CreateQuestNpcById(4121315, npcs.Npc1019Data.id)
                arg1:CreateQuestNpcById(4121315, npcs.Npc157701Data.id)
            end, questNpcCreateTask)
        end)
    end)
end

function Quest41213:OnSubFailed4121315(arg1)
    print("OnSubFailed4121315")
end

function Quest41213:OnSubStart4121314(arg1)
    print("OnSubStart4121314")
end

function Quest41213:OnSubFinish4121314(arg1)
    print("OnSubFinish4121314")
    self:ActionSafeCall(self.Q14Finish)
end

function Quest41213:OnSubFailed4121314(arg1)
    print("OnSubFailed4121314")
end

return Quest41213
