require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41211 = class("Quest41211", QuestActorProxy)
Quest41211.defaultAlias = "Quest41211"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest41211:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest41211:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4121101"] = self.OnSubStart4121101,
        ["4121105"] = self.OnSubStart4121105,
        ["4121106"] = self.OnSubStart4121106,
        ["4121102"] = self.OnSubStart4121102,
        ["4121103"] = self.OnSubStart4121103,
        ["4121104"] = self.OnSubStart4121104,
        ["4121113"] = self.OnSubStart4121113,
        ["4121109"] = self.OnSubStart4121109,
        ["4121110"] = self.OnSubStart4121110,
        ["4121111"] = self.OnSubStart4121111,
        ["4121112"] = self.OnSubStart4121112,
        ["4121107"] = self.OnSubStart4121107,
        ["4121108"] = self.OnSubStart4121108
    }
end

function Quest41211:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4121101"] = self.OnSubFinish4121101,
        ["4121105"] = self.OnSubFinish4121105,
        ["4121106"] = self.OnSubFinish4121106,
        ["4121102"] = self.OnSubFinish4121102,
        ["4121103"] = self.OnSubFinish4121103,
        ["4121104"] = self.OnSubFinish4121104,
        ["4121113"] = self.OnSubFinish4121113,
        ["4121109"] = self.OnSubFinish4121109,
        ["4121110"] = self.OnSubFinish4121110,
        ["4121111"] = self.OnSubFinish4121111,
        ["4121112"] = self.OnSubFinish4121112,
        ["4121107"] = self.OnSubFinish4121107,
        ["4121108"] = self.OnSubFinish4121108
    }
end

function Quest41211:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4121101"] = self.OnSubFailed4121101,
        ["4121105"] = self.OnSubFailed4121105,
        ["4121106"] = self.OnSubFailed4121106,
        ["4121102"] = self.OnSubFailed4121102,
        ["4121103"] = self.OnSubFailed4121103,
        ["4121104"] = self.OnSubFailed4121104,
        ["4121113"] = self.OnSubFailed4121113,
        ["4121109"] = self.OnSubFailed4121109,
        ["4121110"] = self.OnSubFailed4121110,
        ["4121111"] = self.OnSubFailed4121111,
        ["4121112"] = self.OnSubFailed4121112,
        ["4121107"] = self.OnSubFailed4121107,
        ["4121108"] = self.OnSubFailed4121108
    }
end

function Quest41211:Start()
    print("Start")
end

function Quest41211:OnDestroy()
    print("OnDestroy")
end

function Quest41211:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41211:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41211:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc1018Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.PaimonData.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc10205Data.alias, 3)
    end)
end

function Quest41211:EliminateAbeiduo()
    print("EliminateAbeiduo")
    self:DestroyQuestNpcActor(npcs.Npc1018Data.alias, 3)
end

function Quest41211:TalkWithAbeiduo()
    print("TalkWithAbeiduo")
    self:RequestInteraction(npcs.Npc1018Data.alias)
end

function Quest41211:Transport1()
    print("Transport1")
    self:TransmitPlayerByQuestId(4121109, 1, nil, self.TalkWithAbeiduo)
end

function Quest41211:Transport2()
    print("Transport2")
    self:TransmitPlayerByQuestId(4121112, 1, nil, self.TalkWithAbeiduo)
end

function Quest41211:MoveAbeiduo()
    print("MoveAbeiduo")
    self:GetQuestNpcActor(npcs.Npc1018Data.alias):SetPosAndTurnTo(sceneData:GetDummyPoint(3, "Q41211_abeiduo2").pos, M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q41211_abeiduo2").rot), true)
end

function Quest41211:Q02Finish()
    print("Q02Finish")
    self:MoveAbeiduo()
end

function Quest41211:Q03Finish()
    print("Q03Finish")
    self:EliminateAbeiduo()
    self:EliminatePaimon()
    self:DestroyQuestNpcActor(npcs.Npc10205Data.alias, 3)
end

function Quest41211:Q09Finish()
    print("Q09Finish")
    self:EliminateAbeiduo()
    self:EliminatePaimon()
end

function Quest41211:EliminatePaimon()
    print("EliminatePaimon")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest41211:Q12Finish()
    print("Q12Finish")
    self:EliminateAbeiduo()
    self:EliminatePaimon()
    self:ShowDragonSpinePage(3)
end

function Quest41211:Q01Finish()
    print("Q01Finish")
    self:EliminatePaimon()
    self:EliminateAbeiduo()
end

function Quest41211:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 4121105 then
        self:FinishQuestID(false, 4121105)
    elseif arg1 == 4121106 then
        self:FinishQuestID(false, 4121106)
    elseif arg1 == 4121107 then
        self:FinishQuestID(false, 4121107)
    elseif arg1 == 4121108 then
        self:FinishQuestID(false, 4121108)
    end
end

function Quest41211:OnSubStart4121101(arg1)
    print("OnSubStart4121101")
    self:CreateQuestNpc(arg1, npcs.Npc1018Data.id, 1)
    if self:IsInNavigation() == false then
        self:SetNavigationByMainId(41211, true)
    end
end

function Quest41211:OnSubFinish4121101(arg1)
    print("OnSubFinish4121101")
    self:ActionSafeCall(self.Q01Finish)
end

function Quest41211:OnSubFailed4121101(arg1)
    print("OnSubFailed4121101")
end

function Quest41211:OnSubStart4121105(arg1)
    print("OnSubStart4121105")
end

function Quest41211:OnSubFinish4121105(arg1)
    print("OnSubFinish4121105")
end

function Quest41211:OnSubFailed4121105(arg1)
    print("OnSubFailed4121105")
end

function Quest41211:OnSubStart4121106(arg1)
    print("OnSubStart4121106")
end

function Quest41211:OnSubFinish4121106(arg1)
    print("OnSubFinish4121106")
end

function Quest41211:OnSubFailed4121106(arg1)
    print("OnSubFailed4121106")
end

function Quest41211:OnSubStart4121102(arg1)
    print("OnSubStart4121102")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CallDelay(1, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc1018Data.id, 1)
        end)
    end)
end

function Quest41211:OnSubFinish4121102(arg1)
    print("OnSubFinish4121102")
end

function Quest41211:OnSubFailed4121102(arg1)
    print("OnSubFailed4121102")
end

function Quest41211:OnSubStart4121103(arg1)
    print("OnSubStart4121103")
end

function Quest41211:OnSubFinish4121103(arg1)
    print("OnSubFinish4121103")
    self:ActionSafeCall(self.Q03Finish)
end

function Quest41211:OnSubFailed4121103(arg1)
    print("OnSubFailed4121103")
end

function Quest41211:OnSubStart4121104(arg1)
    print("OnSubStart4121104")
end

function Quest41211:OnSubFinish4121104(arg1)
    print("OnSubFinish4121104")
end

function Quest41211:OnSubFailed4121104(arg1)
    print("OnSubFailed4121104")
end

function Quest41211:OnSubStart4121109(arg1)
    print("OnSubStart4121109")
    self:CallDelay(2, function(arg1)
        local questNpcCreateTask = arg1:CreateQuestNpcCreateTask({npcs.Npc1018Data.alias})
        arg1:TransmitPlayerByQuestId(4121109, 1, nil, function(arg1)
            arg1:CreateQuestNpcById(4121109, npcs.Npc1018Data.id, 1)
        end, questNpcCreateTask)
    end)
end

function Quest41211:OnSubFinish4121109(arg1)
    print("OnSubFinish4121109")
    self:ActionSafeCall(self.Q09Finish)
end

function Quest41211:OnSubFailed4121109(arg1)
    print("OnSubFailed4121109")
end

function Quest41211:OnSubStart4121110(arg1)
    print("OnSubStart4121110")
end

function Quest41211:OnSubFinish4121110(arg1)
    print("OnSubFinish4121110")
end

function Quest41211:OnSubFailed4121110(arg1)
    print("OnSubFailed4121110")
end

function Quest41211:OnSubStart4121111(arg1)
    print("OnSubStart4121111")
end

function Quest41211:OnSubFinish4121111(arg1)
    print("OnSubFinish4121111")
end

function Quest41211:OnSubFailed4121111(arg1)
    print("OnSubFailed4121111")
end

function Quest41211:OnSubStart4121112(arg1)
    print("OnSubStart4121112")
    self:CallDelay(2, function(arg1)
        local questNpcCreateTask = arg1:CreateQuestNpcCreateTask({npcs.Npc1018Data.alias})
        arg1:TransmitPlayerByQuestId(4121112, 1, nil, function(arg1)
            arg1:CreateQuestNpcById(4121112, npcs.Npc1018Data.id, 1)
        end, questNpcCreateTask)
    end)
end

function Quest41211:OnSubFinish4121112(arg1)
    print("OnSubFinish4121112")
    self:ActionSafeCall(self.Q12Finish)
end

function Quest41211:OnSubFailed4121112(arg1)
    print("OnSubFailed4121112")
end

function Quest41211:OnSubStart4121107(arg1)
    print("OnSubStart4121107")
end

function Quest41211:OnSubFinish4121107(arg1)
    print("OnSubFinish4121107")
end

function Quest41211:OnSubFailed4121107(arg1)
    print("OnSubFailed4121107")
end

function Quest41211:OnSubStart4121108(arg1)
    print("OnSubStart4121108")
end

function Quest41211:OnSubFinish4121108(arg1)
    print("OnSubFinish4121108")
end

function Quest41211:OnSubFailed4121108(arg1)
    print("OnSubFailed4121108")
end

function Quest41211:OnSubStart4121113(arg1)
    print("OnSubStart4121113")
end

function Quest41211:OnSubFinish4121113(arg1)
    print("OnSubFinish4121113")
    self:NarratorOnlyTaskByData(datas.Yurenzhong, nil, 41211)
end

function Quest41211:OnSubFailed4121113(arg1)
    print("OnSubFailed4121113")
end

return Quest41211
