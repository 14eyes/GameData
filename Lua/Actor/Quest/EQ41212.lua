require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41212 = class("Quest41212", QuestActorProxy)
Quest41212.defaultAlias = "Quest41212"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest41212:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest41212:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4121201"] = self.OnSubStart4121201,
        ["4121203"] = self.OnSubStart4121203,
        ["4121204"] = self.OnSubStart4121204,
        ["4121221"] = self.OnSubStart4121221,
        ["4121207"] = self.OnSubStart4121207,
        ["4121205"] = self.OnSubStart4121205,
        ["4121208"] = self.OnSubStart4121208,
        ["4121218"] = self.OnSubStart4121218,
        ["4121216"] = self.OnSubStart4121216,
        ["4121217"] = self.OnSubStart4121217,
        ["4121209"] = self.OnSubStart4121209,
        ["4121202"] = self.OnSubStart4121202,
        ["4121210"] = self.OnSubStart4121210,
        ["4121219"] = self.OnSubStart4121219,
        ["4121213"] = self.OnSubStart4121213,
        ["4121211"] = self.OnSubStart4121211,
        ["4121212"] = self.OnSubStart4121212,
        ["4121224"] = self.OnSubStart4121224,
        ["4121206"] = self.OnSubStart4121206,
        ["4121214"] = self.OnSubStart4121214,
        ["4121215"] = self.OnSubStart4121215,
        ["4121220"] = self.OnSubStart4121220,
        ["4121223"] = self.OnSubStart4121223,
        ["4121222"] = self.OnSubStart4121222
    }
end

function Quest41212:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4121201"] = self.OnSubFinish4121201,
        ["4121203"] = self.OnSubFinish4121203,
        ["4121204"] = self.OnSubFinish4121204,
        ["4121221"] = self.OnSubFinish4121221,
        ["4121207"] = self.OnSubFinish4121207,
        ["4121205"] = self.OnSubFinish4121205,
        ["4121208"] = self.OnSubFinish4121208,
        ["4121218"] = self.OnSubFinish4121218,
        ["4121216"] = self.OnSubFinish4121216,
        ["4121217"] = self.OnSubFinish4121217,
        ["4121209"] = self.OnSubFinish4121209,
        ["4121202"] = self.OnSubFinish4121202,
        ["4121210"] = self.OnSubFinish4121210,
        ["4121219"] = self.OnSubFinish4121219,
        ["4121213"] = self.OnSubFinish4121213,
        ["4121211"] = self.OnSubFinish4121211,
        ["4121212"] = self.OnSubFinish4121212,
        ["4121224"] = self.OnSubFinish4121224,
        ["4121206"] = self.OnSubFinish4121206,
        ["4121214"] = self.OnSubFinish4121214,
        ["4121215"] = self.OnSubFinish4121215,
        ["4121220"] = self.OnSubFinish4121220,
        ["4121223"] = self.OnSubFinish4121223,
        ["4121222"] = self.OnSubFinish4121222
    }
end

function Quest41212:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4121201"] = self.OnSubFailed4121201,
        ["4121203"] = self.OnSubFailed4121203,
        ["4121204"] = self.OnSubFailed4121204,
        ["4121221"] = self.OnSubFailed4121221,
        ["4121207"] = self.OnSubFailed4121207,
        ["4121205"] = self.OnSubFailed4121205,
        ["4121208"] = self.OnSubFailed4121208,
        ["4121218"] = self.OnSubFailed4121218,
        ["4121216"] = self.OnSubFailed4121216,
        ["4121217"] = self.OnSubFailed4121217,
        ["4121209"] = self.OnSubFailed4121209,
        ["4121202"] = self.OnSubFailed4121202,
        ["4121210"] = self.OnSubFailed4121210,
        ["4121219"] = self.OnSubFailed4121219,
        ["4121213"] = self.OnSubFailed4121213,
        ["4121211"] = self.OnSubFailed4121211,
        ["4121212"] = self.OnSubFailed4121212,
        ["4121224"] = self.OnSubFailed4121224,
        ["4121206"] = self.OnSubFailed4121206,
        ["4121214"] = self.OnSubFailed4121214,
        ["4121215"] = self.OnSubFailed4121215,
        ["4121220"] = self.OnSubFailed4121220,
        ["4121223"] = self.OnSubFailed4121223,
        ["4121222"] = self.OnSubFailed4121222
    }
end

function Quest41212:Start()
    print("Start")
end

function Quest41212:OnDestroy()
    print("OnDestroy")
end

function Quest41212:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41212:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41212:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ActionSafeCall(self.EliminateAll)
end

function Quest41212:EliminateSailiusi()
    print("EliminateSailiusi")
    self:DestroyQuestNpcActor(npcs.Npc140901Data.alias, 3)
end

function Quest41212:EliminateAbeiduo()
    print("EliminateAbeiduo")
    self:DestroyQuestNpcActor(npcs.Npc1018Data.alias, 3)
end

function Quest41212:Kaiche1()
    print("Kaiche1")
    self:NarratorOnlyTaskByData(datas.PaimonFight, nil, 41212)
end

function Quest41212:TalkWithAbeiduo()
    print("TalkWithAbeiduo")
    self:RequestInteraction(npcs.Npc1018Data.alias)
end

function Quest41212:Kaiche2()
    print("Kaiche2")
    self:NarratorOnlyTaskByData(datas.PaimonLanding, nil, 41212)
end

function Quest41212:FlyFail()
    print("FlyFail")
    self:ShowBlackScreen(0, 3, 0.3, nil, nil, nil, "QUEST_MESSAGE_41212")
end

function Quest41212:MoveAbeiduo()
    print("MoveAbeiduo")
    self:GetQuestNpcActor(npcs.Npc1018Data.alias):SetPosAndTurnTo(sceneData:GetDummyPoint(3, "Q41212_abeiduo2").pos, sceneData:GetDummyPoint(3, "Q41212_abeiduo2").rot, true)
    self:DestroyQuestNpcActor(npcs.Npc140901Data.alias, 3)
end

function Quest41212:TransPort1()
    print("TransPort1")
    self:TransmitPlayerByQuestId(4121208, 1, nil, self.TalkWithAbeiduo)
end

function Quest41212:EnableInput()
    print("EnableInput")
    self:EnablePlayerInput(true)
end

function Quest41212:Q03Finish()
    print("Q03Finish")
    self:EliminateAbeiduo()
    self:EliminateSailiusi()
    self:EliminatePaimon()
end

function Quest41212:Q21Finish()
    print("Q21Finish")
    self:EliminateAbeiduo()
    self:EliminatePaimon()
    self:DestroyQuestNpcActor(npcs.Npc10205Data.alias, 3)
end

function Quest41212:Q08Finish()
    print("Q08Finish")
    self:EnablePlayerInput(false)
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q41212_footcam1").pos, 0, 4, true, false)
    self:CallDelay(4, self.EnableInput)
    self:EliminatePaimon()
end

function Quest41212:Q15Finish()
    print("Q15Finish")
    self:EliminateAbeiduo()
    self:EliminatePaimon()
    self:ShowDragonSpinePage(4)
end

function Quest41212:EliminatePaimon()
    print("EliminatePaimon")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest41212:Q22Transport()
    print("Q22Transport")
    self:TransmitPlayerByQuestId(4121222, 1, self.Q22Finish)
end

function Quest41212:Q22Finish()
    print("Q22Finish")
    self:FinishQuestID(false, 4121222)
    self:EliminateAbeiduo()
    self:EliminatePaimon()
    self:ShowDragonSpinePage(4)
end

function Quest41212:InvokeOnInteraction(arg1)
    if arg1 == 4121220 then
        self:FinishQuestID(false, 4121220)
        print("Sward")
    elseif arg1 == 4121223 then
        self:FinishQuestID(false, 4121223)
    end
end

function Quest41212:EliminateAll()
    print("EliminateAll")
    self:DestroyQuestNpcActor(npcs.Npc1018Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc140901Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.PaimonData.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10205Data.alias, 3)
end

function Quest41212:OnSubStart4121201(arg1)
    print("OnSubStart4121201")
    self:CreateQuestNpc(arg1, npcs.Npc1018Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc140901Data.id, 2)
    if self:IsInNavigation() == false then
        self:SetNavigationByMainId(41212, true)
    end
end

function Quest41212:OnSubFinish4121201(arg1)
    print("OnSubFinish4121201")
end

function Quest41212:OnSubFailed4121201(arg1)
    print("OnSubFailed4121201")
end

function Quest41212:OnSubStart4121203(arg1)
    print("OnSubStart4121203")
    self:RequestInteraction(npcs.Npc1018Data.alias)
end

function Quest41212:OnSubFinish4121203(arg1)
    print("OnSubFinish4121203")
    self:ActionSafeCall(self.Q03Finish)
end

function Quest41212:OnSubFailed4121203(arg1)
    print("OnSubFailed4121203")
end

function Quest41212:OnSubStart4121204(arg1)
    print("OnSubStart4121204")
end

function Quest41212:OnSubFinish4121204(arg1)
    print("OnSubFinish4121204")
end

function Quest41212:OnSubFailed4121204(arg1)
    print("OnSubFailed4121204")
end

function Quest41212:OnSubStart4121221(arg1)
    self:LevelLoadFinishSafeCall(function(arg1_2)
        local questNpcCreateTask = arg1_2:CreateQuestNpcCreateTask({npcs.Npc1018Data.alias})
        arg1_2:ShowBlackScreen(0.5, 3, 0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc1018Data.id)
            arg1_2:RequestInteraction(npcs.Npc1018Data.alias)
        end, nil, questNpcCreateTask)
    end)
end

function Quest41212:OnSubFinish4121221(arg1)
    print("OnSubFinish4121221")
    self:ActionSafeCall(self.Q21Finish)
end

function Quest41212:OnSubFailed4121221(arg1)
    print("OnSubFailed4121221")
end

function Quest41212:OnSubStart4121207(arg1)
    print("OnSubStart4121207")
end

function Quest41212:OnSubFinish4121207(arg1)
    print("OnSubFinish4121207")
end

function Quest41212:OnSubFailed4121207(arg1)
    print("OnSubFailed4121207")
end

function Quest41212:OnSubStart4121205(arg1)
    print("OnSubStart4121205")
end

function Quest41212:OnSubFinish4121205(arg1)
    print("OnSubFinish4121205")
    self:NarratorOnlyTaskByData(datas.PaimonFight, nil, 41212)
end

function Quest41212:OnSubFailed4121205(arg1)
    print("OnSubFailed4121205")
end

function Quest41212:OnSubStart4121208(arg1)
    print("OnSubStart4121208")
    self:CallDelay(2, function(arg1)
        local questNpcCreateTask = arg1:CreateQuestNpcCreateTask({npcs.Npc1018Data.alias})
        arg1:TransmitPlayerByQuestId(4121208, 1, nil, function(arg1)
            arg1:CreateQuestNpcById(4121208, npcs.Npc1018Data.id, 1)
        end, questNpcCreateTask)
    end)
end

function Quest41212:OnSubFinish4121208(arg1)
    print("OnSubFinish4121208")
    self:ActionSafeCall(self.Q08Finish)
end

function Quest41212:OnSubFailed4121208(arg1)
    print("OnSubFailed4121208")
end

function Quest41212:OnSubStart4121218(arg1)
    print("OnSubStart4121218")
end

function Quest41212:OnSubFinish4121218(arg1)
    print("OnSubFinish4121218")
end

function Quest41212:OnSubFailed4121218(arg1)
    print("OnSubFailed4121218")
end

function Quest41212:OnSubStart4121216(arg1)
    print("OnSubStart4121216")
end

function Quest41212:OnSubFinish4121216(arg1)
    print("OnSubFinish4121216")
    self:NarratorOnlyTaskByData(datas.AbeiduoFind, nil, 41212)
end

function Quest41212:OnSubFailed4121216(arg1)
    print("OnSubFailed4121216")
end

function Quest41212:OnSubStart4121217(arg1)
    print("OnSubStart4121217")
end

function Quest41212:OnSubFinish4121217(arg1)
    print("OnSubFinish4121217")
end

function Quest41212:OnSubFailed4121217(arg1)
    print("OnSubFailed4121217")
end

function Quest41212:OnSubStart4121209(arg1)
    print("OnSubStart4121209")
end

function Quest41212:OnSubFinish4121209(arg1)
    print("OnSubFinish4121209")
end

function Quest41212:OnSubFailed4121209(arg1)
    print("OnSubFailed4121209")
end

function Quest41212:OnSubStart4121202(arg1)
    print("OnSubStart4121202")
end

function Quest41212:OnSubFinish4121202(arg1)
    print("OnSubFinish4121202")
    self:TransmitPlayerById(arg1, 1)
end

function Quest41212:OnSubFailed4121202(arg1)
    print("OnSubFailed4121202")
end

function Quest41212:OnSubStart4121210(arg1)
    self:LevelLoadFinishSafeCall(function(arg1_2)
        local questNpcCreateTask = arg1_2:CreateQuestNpcCreateTask({npcs.Npc1018Data.alias})
        arg1_2:ShowBlackScreen(0.5, 3, 0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc1018Data.id)
            arg1_2:RequestInteraction(npcs.Npc1018Data.alias)
        end, nil, questNpcCreateTask)
    end)
end

function Quest41212:OnSubFinish4121210(arg1)
    print("OnSubFinish4121210")
    self:ActionSafeCall(self.EliminatePaimon)
end

function Quest41212:OnSubFailed4121210(arg1)
    print("OnSubFailed4121210")
end

function Quest41212:OnSubStart4121219(arg1)
    print("OnSubStart4121219")
end

function Quest41212:OnSubFinish4121219(arg1)
    print("OnSubFinish4121219")
end

function Quest41212:OnSubFailed4121219(arg1)
    print("OnSubFailed4121219")
end

function Quest41212:OnSubStart4121213(arg1)
    print("OnSubStart4121213")
end

function Quest41212:OnSubFinish4121213(arg1)
    print("OnSubFinish4121213")
end

function Quest41212:OnSubFailed4121213(arg1)
    print("OnSubFailed4121213")
end

function Quest41212:OnSubStart4121211(arg1)
    print("OnSubStart4121211")
end

function Quest41212:OnSubFinish4121211(arg1)
    print("OnSubFinish4121211")
end

function Quest41212:OnSubFailed4121211(arg1)
    print("OnSubFailed4121211")
    self:TransmitPlayerWithTextByQuestId(4121211, 1, {"QUEST_MESSAGE_Q41212"}, 3)
end

function Quest41212:OnSubStart4121212(arg1)
    print("OnSubStart4121212")
end

function Quest41212:OnSubFinish4121212(arg1)
    print("OnSubFinish4121212")
    self:NarratorOnlyTaskByData(datas.PaimonFly, nil, 41212)
    self:DestroyQuestNpcActor(npcs.Npc1018Data.alias, 3)
end

function Quest41212:OnSubFailed4121212(arg1)
    print("OnSubFailed4121212")
end

function Quest41212:OnSubStart4121224(arg1)
    print("OnSubStart4121224")
end

function Quest41212:OnSubFinish4121224(arg1)
    print("OnSubFinish4121224")
    self:NarratorOnlyTaskByData(datas.PaimonLanding, nil, 41212)
end

function Quest41212:OnSubFailed4121224(arg1)
    print("OnSubFailed4121224")
end

function Quest41212:OnSubStart4121206(arg1)
    print("OnSubStart4121206")
end

function Quest41212:OnSubFinish4121206(arg1)
    print("OnSubFinish4121206")
end

function Quest41212:OnSubFailed4121206(arg1)
    print("OnSubFailed4121206")
end

function Quest41212:OnSubStart4121214(arg1)
    print("OnSubStart4121214")
    self:NarratorOnlyTaskByData(datas.PaimonTrap, nil, 41212)
end

function Quest41212:OnSubFinish4121214(arg1)
    print("OnSubFinish4121214")
end

function Quest41212:OnSubFailed4121214(arg1)
    print("OnSubFailed4121214")
end

function Quest41212:OnSubStart4121215(arg1)
    print("OnSubStart4121215")
    self:CreateQuestNpc(arg1, npcs.Npc1018Data.id, 0)
    self:NarratorOnlyTaskByData(datas.AbeiduoEnd, nil, 41212)
end

function Quest41212:OnSubFinish4121215(arg1)
    print("OnSubFinish4121215")
    self:ActionSafeCall(self.Q15Finish)
end

function Quest41212:OnSubFailed4121215(arg1)
    print("OnSubFailed4121215")
end

function Quest41212:OnSubStart4121220(arg1)
    print("OnSubStart4121220")
end

function Quest41212:OnSubFinish4121220(arg1)
    print("OnSubFinish4121220")
end

function Quest41212:OnSubFailed4121220(arg1)
    print("OnSubFailed4121220")
end

function Quest41212:OnSubStart4121223(arg1)
    print("OnSubStart4121223")
end

function Quest41212:OnSubFinish4121223(arg1)
    print("OnSubFinish4121223")
end

function Quest41212:OnSubFailed4121223(arg1)
    print("OnSubFailed4121223")
end

function Quest41212:OnSubStart4121222(arg1)
    print("OnSubStart4121222")
    self:ActionSafeCall(self.Q22Transport)
end

function Quest41212:OnSubFinish4121222(arg1)
    print("OnSubFinish4121222")
end

function Quest41212:OnSubFailed4121222(arg1)
    print("OnSubFailed4121222")
end

return Quest41212
