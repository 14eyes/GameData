require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41210 = class("Quest41210", QuestActorProxy)
Quest41210.defaultAlias = "Quest41210"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest41210:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest41210:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4121001"] = self.OnSubStart4121001,
        ["4121002"] = self.OnSubStart4121002,
        ["4121003"] = self.OnSubStart4121003,
        ["4121004"] = self.OnSubStart4121004,
        ["4121010"] = self.OnSubStart4121010,
        ["4121011"] = self.OnSubStart4121011,
        ["4121009"] = self.OnSubStart4121009,
        ["4121005"] = self.OnSubStart4121005,
        ["4121015"] = self.OnSubStart4121015,
        ["4121006"] = self.OnSubStart4121006,
        ["4121007"] = self.OnSubStart4121007,
        ["4121008"] = self.OnSubStart4121008,
        ["4121012"] = self.OnSubStart4121012,
        ["4121013"] = self.OnSubStart4121013,
        ["4121014"] = self.OnSubStart4121014
    }
end

function Quest41210:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4121001"] = self.OnSubFinish4121001,
        ["4121002"] = self.OnSubFinish4121002,
        ["4121003"] = self.OnSubFinish4121003,
        ["4121004"] = self.OnSubFinish4121004,
        ["4121010"] = self.OnSubFinish4121010,
        ["4121011"] = self.OnSubFinish4121011,
        ["4121009"] = self.OnSubFinish4121009,
        ["4121005"] = self.OnSubFinish4121005,
        ["4121015"] = self.OnSubFinish4121015,
        ["4121006"] = self.OnSubFinish4121006,
        ["4121007"] = self.OnSubFinish4121007,
        ["4121008"] = self.OnSubFinish4121008,
        ["4121012"] = self.OnSubFinish4121012,
        ["4121013"] = self.OnSubFinish4121013,
        ["4121014"] = self.OnSubFinish4121014
    }
end

function Quest41210:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4121001"] = self.OnSubFailed4121001,
        ["4121002"] = self.OnSubFailed4121002,
        ["4121003"] = self.OnSubFailed4121003,
        ["4121004"] = self.OnSubFailed4121004,
        ["4121010"] = self.OnSubFailed4121010,
        ["4121011"] = self.OnSubFailed4121011,
        ["4121009"] = self.OnSubFailed4121009,
        ["4121005"] = self.OnSubFailed4121005,
        ["4121015"] = self.OnSubFailed4121015,
        ["4121006"] = self.OnSubFailed4121006,
        ["4121007"] = self.OnSubFailed4121007,
        ["4121008"] = self.OnSubFailed4121008,
        ["4121012"] = self.OnSubFailed4121012,
        ["4121013"] = self.OnSubFailed4121013,
        ["4121014"] = self.OnSubFailed4121014
    }
end

function Quest41210:Start()
    print("Start")
end

function Quest41210:OnDestroy()
    print("OnDestroy")
end

function Quest41210:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41210:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41210:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ActionSafeCall(self.EliminateAll)
end

function Quest41210:EliminateShatang()
    print("EliminateShatang")
    self:DestroyQuestNpcActor(npcs.Npc1019Data.alias, 3)
end

function Quest41210:EliminateAbeiduo()
    print("EliminateAbeiduo")
    self:DestroyQuestNpcActor(npcs.Npc1018Data.alias, 3)
end

function Quest41210:TalkWithDaobaotuan()
    print("TalkWithDaobaotuan")
    self:RequestInteraction(npcs.Npc10354Data.alias)
end

function Quest41210:ElinimnateDaobaotuan()
    print("ElinimnateDaobaotuan")
    self:DestroyQuestNpcActor(npcs.Npc10354Data.alias, 3)
end

function Quest41210:TalkWithAbeiduo()
    print("TalkWithAbeiduo")
    self:RequestInteraction(npcs.Npc1018Data.alias)
end

function Quest41210:TalkWithShatang()
    print("TalkWithShatang")
    self:RequestInteraction(npcs.Npc1019Data.alias)
end

function Quest41210:Kaitoupaimengkaiche()
    print("Kaitoupaimengkaiche")
    self:NarratorOnlyTaskByData(datas.Paimon, nil, 41210)
end

function Quest41210:Transport1()
    print("Transport1")
    self:TransmitPlayerByQuestId(4121006, 1, self.TalkWithDaobaotuan)
end

function Quest41210:TransPort2()
    print("TransPort2")
    self:TransmitPlayerByQuestId(4121008, 1, self.TalkWithAbeiduo)
end

function Quest41210:Q04Finish()
    print("Q04Finish")
    self:EliminatePaimon()
    self:EliminateAbeiduo()
    self:ShowWeaponInfoDialog(11413)
end

function Quest41210:Q06Finish()
    print("Q06Finish")
    self:ElinimnateDaobaotuan()
    self:EliminatePaimon()
    self:EliminateAbeiduo()
end

function Quest41210:Q08Finish()
    print("Q08Finish")
    self:EliminateAbeiduo()
    self:EliminatePaimon()
    self:ShowDragonSpinePage(2)
end

function Quest41210:EliminatePaimon()
    print("EliminatePaimon")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest41210:InvokeOnInteraction(arg1)
    if arg1 == 4121010 then
        self:FinishQuestID(false, 4121010)
        print("\229\136\183\229\135\186\229\137\145\230\157\165")
    elseif arg1 == 4121011 then
        self:FinishQuestID(false, 4121011)
        print("\229\136\183\230\142\137\229\137\145\230\157\165")
    elseif arg1 == 4121012 then
        self:FinishQuestID(false, 4121012)
    elseif arg1 == 4121013 then
        self:FinishQuestID(false, 4121013)
    elseif arg1 == 4121014 then
        self:FinishQuestID(false, 4121014)
    end
end

function Quest41210:EliminateAll()
    print("EliminateAll")
    self:DestroyQuestNpcActor(npcs.Npc1018Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1019Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10354Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.PaimonData.alias, 3)
end

function Quest41210:OnSubStart4121001(arg1)
    print("OnSubStart4121001")
    self:CreateQuestNpc(arg1, npcs.Npc1019Data.id, 1)
    self:CallDelay(6, self.Kaitoupaimengkaiche)
    if self:IsInNavigation() == false then
        self:SetNavigationByMainId(41210, true)
    end
end

function Quest41210:OnSubFinish4121001(arg1)
    print("OnSubFinish4121001")
    self:LevelLoadFinishSafeCall(function(arg1_2)
        arg1_2:TransmitPlayerById(arg1, 1)
    end)
end

function Quest41210:OnSubFailed4121001(arg1)
    print("OnSubFailed4121001")
end

function Quest41210:OnSubStart4121002(arg1)
    print("OnSubStart4121002")
end

function Quest41210:OnSubFinish4121002(arg1)
    print("OnSubFinish4121002")
    self:ActionSafeCall(self.EliminatePaimon)
end

function Quest41210:OnSubFailed4121002(arg1)
    print("OnSubFailed4121002")
end

function Quest41210:OnSubStart4121003(arg1)
    print("OnSubStart4121003")
    self:CreateQuestNpc(arg1, npcs.Npc1018Data.id, 1)
end

function Quest41210:OnSubFinish4121003(arg1)
    print("OnSubFinish4121003")
    self:EliminateShatang()
end

function Quest41210:OnSubFailed4121003(arg1)
    print("OnSubFailed4121003")
end

function Quest41210:OnSubStart4121004(arg1)
    print("OnSubStart4121004")
end

function Quest41210:OnSubFinish4121004(arg1)
    print("OnSubFinish4121004")
    self:ActionSafeCall(self.Q04Finish)
end

function Quest41210:OnSubFailed4121004(arg1)
    print("OnSubFailed4121004")
end

function Quest41210:OnSubStart4121010(arg1)
    print("OnSubStart4121010")
end

function Quest41210:OnSubFinish4121010(arg1)
    print("OnSubFinish4121010")
end

function Quest41210:OnSubFailed4121010(arg1)
    print("OnSubFailed4121010")
end

function Quest41210:OnSubStart4121011(arg1)
    print("OnSubStart4121011")
end

function Quest41210:OnSubFinish4121011(arg1)
    print("OnSubFinish4121011")
end

function Quest41210:OnSubFailed4121011(arg1)
    print("OnSubFailed4121011")
end

function Quest41210:OnSubStart4121009(arg1)
    print("OnSubStart4121009")
end

function Quest41210:OnSubFinish4121009(arg1)
    print("OnSubFinish4121009")
    self:NarratorOnlyTaskByData(datas.Abeiduo, nil, 41210)
end

function Quest41210:OnSubFailed4121009(arg1)
    print("OnSubFailed4121009")
end

function Quest41210:OnSubStart4121005(arg1)
    print("OnSubStart4121005")
end

function Quest41210:OnSubFinish4121005(arg1)
    print("OnSubFinish4121005")
end

function Quest41210:OnSubFailed4121005(arg1)
    print("OnSubFailed4121005")
end

function Quest41210:OnSubStart4121015(arg1)
    print("OnSubStart4121015")
end

function Quest41210:OnSubFinish4121015(arg1)
    print("OnSubFinish4121015")
end

function Quest41210:OnSubFailed4121015(arg1)
    print("OnSubFailed4121015")
end

function Quest41210:OnSubStart4121006(arg1)
    print("OnSubStart4121006")
    self:CallDelay(2, function(arg1)
        local questNpcCreateTask = arg1:CreateQuestNpcCreateTask({npcs.Npc10354Data.alias})
        arg1:TransmitPlayerByQuestId(4121006, 1, nil, function(arg1)
            arg1:CreateQuestNpcById(4121006, npcs.Npc10354Data.id, 1)
        end, questNpcCreateTask)
    end)
end

function Quest41210:OnSubFinish4121006(arg1)
    print("OnSubFinish4121006")
    self:ActionSafeCall(self.Q06Finish)
end

function Quest41210:OnSubFailed4121006(arg1)
    print("OnSubFailed4121006")
end

function Quest41210:OnSubStart4121007(arg1)
    print("OnSubStart4121007")
end

function Quest41210:OnSubFinish4121007(arg1)
    print("OnSubFinish4121007")
end

function Quest41210:OnSubFailed4121007(arg1)
    print("OnSubFailed4121007")
end

function Quest41210:OnSubStart4121008(arg1)
    print("OnSubStart4121008")
    self:CallDelay(2, function(arg1)
        local questNpcCreateTask = arg1:CreateQuestNpcCreateTask({npcs.Npc1018Data.alias})
        arg1:TransmitPlayerByQuestId(4121008, 1, nil, function(arg1)
            arg1:CreateQuestNpcById(4121008, npcs.Npc1018Data.id, 1)
        end, questNpcCreateTask)
    end)
end

function Quest41210:OnSubFinish4121008(arg1)
    print("OnSubFinish4121008")
    self:ActionSafeCall(self.Q08Finish)
end

function Quest41210:OnSubFailed4121008(arg1)
    print("OnSubFailed4121008")
end

function Quest41210:OnSubStart4121012(arg1)
    print("OnSubStart4121012")
end

function Quest41210:OnSubFinish4121012(arg1)
    print("OnSubFinish4121012")
end

function Quest41210:OnSubFailed4121012(arg1)
    print("OnSubFailed4121012")
end

function Quest41210:OnSubStart4121013(arg1)
    print("OnSubStart4121013")
end

function Quest41210:OnSubFinish4121013(arg1)
    print("OnSubFinish4121013")
end

function Quest41210:OnSubFailed4121013(arg1)
    print("OnSubFailed4121013")
end

function Quest41210:OnSubStart4121014(arg1)
    print("OnSubStart4121014")
end

function Quest41210:OnSubFinish4121014(arg1)
    print("OnSubFinish4121014")
end

function Quest41210:OnSubFailed4121014(arg1)
    print("OnSubFailed4121014")
end

return Quest41210
