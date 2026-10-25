require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41410 = class("Quest41410", QuestActorProxy)
Quest41410.defaultAlias = "Quest41410"
local DailyNPCManager = require("Actor/DailyNPCManager")

local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest41410:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest41410:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4141001"] = self.OnSubStart4141001,
        ["4141003"] = self.OnSubStart4141003,
        ["4141004"] = self.OnSubStart4141004,
        ["4141005"] = self.OnSubStart4141005,
        ["4141007"] = self.OnSubStart4141007,
        ["4141009"] = self.OnSubStart4141009,
        ["4141010"] = self.OnSubStart4141010,
        ["4141011"] = self.OnSubStart4141011,
        ["4141012"] = self.OnSubStart4141012,
        ["4141013"] = self.OnSubStart4141013,
        ["4141014"] = self.OnSubStart4141014,
        ["4141015"] = self.OnSubStart4141015,
        ["4141017"] = self.OnSubStart4141017,
        ["4141016"] = self.OnSubStart4141016
    }
end

function Quest41410:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4141001"] = self.OnSubFinish4141001,
        ["4141003"] = self.OnSubFinish4141003,
        ["4141004"] = self.OnSubFinish4141004,
        ["4141005"] = self.OnSubFinish4141005,
        ["4141007"] = self.OnSubFinish4141007,
        ["4141009"] = self.OnSubFinish4141009,
        ["4141010"] = self.OnSubFinish4141010,
        ["4141011"] = self.OnSubFinish4141011,
        ["4141012"] = self.OnSubFinish4141012,
        ["4141013"] = self.OnSubFinish4141013,
        ["4141014"] = self.OnSubFinish4141014,
        ["4141015"] = self.OnSubFinish4141015,
        ["4141017"] = self.OnSubFinish4141017,
        ["4141016"] = self.OnSubFinish4141016
    }
end

function Quest41410:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4141001"] = self.OnSubFailed4141001,
        ["4141003"] = self.OnSubFailed4141003,
        ["4141004"] = self.OnSubFailed4141004,
        ["4141005"] = self.OnSubFailed4141005,
        ["4141007"] = self.OnSubFailed4141007,
        ["4141009"] = self.OnSubFailed4141009,
        ["4141010"] = self.OnSubFailed4141010,
        ["4141011"] = self.OnSubFailed4141011,
        ["4141012"] = self.OnSubFailed4141012,
        ["4141013"] = self.OnSubFailed4141013,
        ["4141014"] = self.OnSubFailed4141014,
        ["4141015"] = self.OnSubFailed4141015,
        ["4141017"] = self.OnSubFailed4141017,
        ["4141016"] = self.OnSubFailed4141016
    }
end

function Quest41410:Start()
    print("Start")
end

function Quest41410:OnDestroy()
    print("OnDestroy")
end

function Quest41410:OnMainFinished(arg1)
    print("OnMainFinished")
    self:ActionSafeCall(function()
        actorUtils:ShowActivityPage(2003)
    end)
end

function Quest41410:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41410:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo("Npc1425", 0, true)
    self:NotifyTo("Npc1403", 0, true)
    self:NotifyTo("Npc1401", 0, true)
    self:SafeDestroyQuestNpc(npcs.Npc140301Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc140101Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc160701Data.alias, 3)
    self:NotifyTo("Npc1607", 0, true)
    self:SafeDestroyQuestNpc(npcs.Npc160501Data.alias, 3)
    self:NotifyTo("Npc1605", 0, true)
    self:SafeDestroyQuestNpc(npcs.Npc160201Data.alias, 3)
    self:NotifyTo("Npc1602", 0, true)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.GaiaData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1028Data.alias, 3)
    self:PaimonDis()
    self:NotifyTo("Npc1429", 0, true)
    self:NotifyTo("Npc1453", 0, true)
    self:NotifyTo("Npc1451", 0, true)
    self:NotifyTo("Npc1642", 0, true)
    actorMgr:DestroyEntityActor(datas.Q4141001Trigger_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q4141009Trigger_.alias, 3, false)
end

function Quest41410:PaimonDis()
    local questNpcActor = self:GetQuestNpcActor(npcs.paimonData.alias)
    if questNpcActor ~= nil then
        self:ActionSafeCall(function(arg1)
            questNpcActor:DestroyWithDisappear(false)
        end)
    end
end

function Quest41410:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("param == 1")
        self:SetQuestVarByMainId(0, 1)
    end

    if arg1 == 2 then
        print("param == 2")
        self:SetQuestVarByMainId(0, 0)
    end

    if arg1 == 3 then
        print("param == 3")
        self:SetQuestVarByMainId(1, 1)
    end

    if arg1 == 4 then
        print("param == 4")
        self:SetQuestVarByMainId(1, 0)
    end

    if arg1 == 5 then
        print("param == 5")
        self:SetQuestVarByMainId(2, 1)
    end

    if arg1 == 6 then
        print("param == 6")
        self:SetQuestVarByMainId(2, 0)
    end
end

function Quest41410:OnSubStart4141001(arg1)
    print("OnSubStart4141001")
    actorMgr:CreateActorWithPos(datas.Q4141001Trigger_.alias, datas.Q4141001Trigger_.script, datas.Q4141001Trigger_.id, 0, datas.Q4141001Trigger_.point.pos, datas.Q4141001Trigger_.point.rot, true, false, 3)
end

function Quest41410:OnSubFinish4141001(arg1)
    print("OnSubFinish4141001")
    self:NarratorOnlyTaskByData(clientData.NarratorWithId01, nil)
end

function Quest41410:OnSubFailed4141001(arg1)
    print("OnSubFailed4141001")
end

function Quest41410:OnSubStart4141003(arg1)
    print("OnSubStart4141003")
end

function Quest41410:OnSubFinish4141003(arg1)
    print("OnSubFinish4141003")
    self:PaimonDis()
end

function Quest41410:OnSubFailed4141003(arg1)
    print("OnSubFailed4141003")
end

function Quest41410:OnSubStart4141004(arg1)
    print("OnSubStart4141004")
end

function Quest41410:OnSubFinish4141004(arg1)
    print("OnSubFinish4141004")
    self:PaimonDis()
end

function Quest41410:OnSubFailed4141004(arg1)
    print("OnSubFailed4141004")
end

function Quest41410:OnSubStart4141005(arg1)
    print("OnSubStart4141005")
end

function Quest41410:OnSubFinish4141005(arg1)
    print("OnSubFinish4141005")
    self:PaimonDis()
end

function Quest41410:OnSubFailed4141005(arg1)
    print("OnSubFailed4141005")
end

function Quest41410:OnSubStart4141007(arg1)
    print("OnSubStart4141007")
    self:NotifyTo("Npc1425", 2, true)
    self:NotifyTo("Npc1403", 1, true)
    self:NotifyTo("Npc1401", 1, true)
end

function Quest41410:OnSubFinish4141007(arg1)
    print("OnSubFinish4141007")
    self:PaimonDis()
    self:NotifyTo("Npc1425", 0, true)
    self:NotifyTo("Npc1403", 0, true)
    self:NotifyTo("Npc1401", 0, true)
    self:SafeDestroyQuestNpc(npcs.Npc140301Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc140101Data.alias, 3)
end

function Quest41410:OnSubFailed4141007(arg1)
    print("OnSubFailed4141007")
end

function Quest41410:OnSubStart4141009(arg1)
    print("OnSubStart4141009")
    actorMgr:CreateActorWithPos(datas.Q4141009Trigger_.alias, datas.Q4141009Trigger_.script, datas.Q4141009Trigger_.id, 0, datas.Q4141009Trigger_.point.pos, datas.Q4141009Trigger_.point.rot, true, false, 3)
    self:CreateQuestNpc(arg1, npcs.WendyData.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1028Data.id, 2)
    self:NotifyTo("Npc1429", 1, true)
    self:NotifyTo("Npc1453", 1, true)
    self:NotifyTo("Npc1451", 1, true)
    self:NotifyTo("Npc1642", 1, true)
    self:NotifyTo("Npc1607", 1, true)
    self:NotifyTo("Npc1605", 1, true)
    self:NotifyTo("Npc1602", 1, true)
end

function Quest41410:OnSubFinish4141009(arg1)
    print("OnSubFinish4141009")
    self:NarratorOnlyTaskByData(clientData.NarratorWithId02, nil)
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q4141010Venti").pos, 0, 3, true)
end

function Quest41410:OnSubFailed4141009(arg1)
    print("OnSubFailed4141009")
end

function Quest41410:OnSubStart4141010(arg1)
    print("OnSubStart4141010")
    self:NotifyTo("Npc1429", 1, true)
    self:NotifyTo("Npc1453", 1, true)
    self:NotifyTo("Npc1451", 1, true)
    self:NotifyTo("Npc1642", 1, true)
    self:NotifyTo("Npc1607", 1, true)
    self:NotifyTo("Npc1605", 1, true)
    self:NotifyTo("Npc1602", 1, true)
end

function Quest41410:OnSubFinish4141010(arg1)
    print("OnSubFinish4141010")
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    self:PaimonDis()
end

function Quest41410:OnSubFailed4141010(arg1)
    print("OnSubFailed4141010")
end

function Quest41410:OnSubStart4141011(arg1)
    print("OnSubStart4141011")
    self:CreateQuestNpc(arg1, npcs.Npc160701Data.id, 1)
end

function Quest41410:OnSubFinish4141011(arg1)
    print("OnSubFinish4141011")
    self:SafeDestroyQuestNpc(npcs.Npc160701Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    self:PaimonDis()
end

function Quest41410:OnSubFailed4141011(arg1)
    print("OnSubFailed4141011")
    self:SafeDestroyQuestNpc(npcs.Npc160701Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    self:PaimonDis()
end

function Quest41410:OnSubStart4141012(arg1)
    print("OnSubStart4141012")
    self:CreateQuestNpc(arg1, npcs.Npc160501Data.id, 1)
end

function Quest41410:OnSubFinish4141012(arg1)
    print("OnSubFinish4141012")
    self:SafeDestroyQuestNpc(npcs.Npc160501Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    self:PaimonDis()
end

function Quest41410:OnSubFailed4141012(arg1)
    print("OnSubFailed4141012")
    self:SafeDestroyQuestNpc(npcs.Npc160501Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    self:PaimonDis()
end

function Quest41410:OnSubStart4141013(arg1)
    print("OnSubStart4141013")
    self:CreateQuestNpc(arg1, npcs.Npc160201Data.id, 1)
end

function Quest41410:OnSubFinish4141013(arg1)
    print("OnSubFinish4141013")
    self:SafeDestroyQuestNpc(npcs.Npc160201Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    self:PaimonDis()
end

function Quest41410:OnSubFailed4141013(arg1)
    print("OnSubFailed4141013")
    self:SafeDestroyQuestNpc(npcs.Npc160201Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    self:PaimonDis()
end

function Quest41410:OnSubStart4141014(arg1)
    print("OnSubStart4141014")
end

function Quest41410:OnSubFinish4141014(arg1)
    print("OnSubFinish4141014")
end

function Quest41410:OnSubFailed4141014(arg1)
    print("OnSubFailed4141014")
end

function Quest41410:OnSubStart4141015(arg1)
    print("OnSubStart4141015")
    self:NotifyTo("Npc1429", 1, true)
    self:NotifyTo("Npc1453", 1, true)
    self:NotifyTo("Npc1451", 1, true)
    self:NotifyTo("Npc1642", 1, true)
    self:NotifyTo("Npc1607", 1, true)
    self:NotifyTo("Npc1605", 1, true)
    self:NotifyTo("Npc1602", 1, true)
end

function Quest41410:OnSubFinish4141015(arg1)
    print("OnSubFinish4141015")
    self:NotifyTo("Npc1607", 0, true)
    self:NotifyTo("Npc1605", 0, true)
    self:NotifyTo("Npc1602", 0, true)
end

function Quest41410:OnSubFailed4141015(arg1)
    print("OnSubFailed4141015")
end

function Quest41410:OnSubStart4141017(arg1)
    print("OnSubStart4141017")
    local questVar = self:GetQuestVar(4141017, 0)
    local v = self:GetQuestVar(4141017, 1)
    local questVar2 = self:GetQuestVar(4141017, 2)
    local n = questVar + v + questVar2
    self:SetQuestVarByMainId(3, n)
    print("val03 " .. tostring(n))
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        print("finish4141017")
        actor:FinishQuestID(false, 4141017)
    end
end

function Quest41410:OnSubFinish4141017(arg1)
    print("OnSubFinish4141017")
end

function Quest41410:OnSubFailed4141017(arg1)
    print("OnSubFailed4141017")
end

function Quest41410:OnSubStart4141016(arg1)
    print("OnSubStart4141016")
    self:CallDelay(1, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.WendyData.id, 1)
    end)

    self:NotifyTo("Npc1429", 1, true)
    self:NotifyTo("Npc1453", 1, true)
    self:NotifyTo("Npc1451", 1, true)
    self:NotifyTo("Npc1642", 1, true)
end

function Quest41410:OnSubFinish4141016(arg1)
    print("OnSubFinish4141016")
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.GaiaData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1028Data.alias, 3)
    self:PaimonDis()
    self:NotifyTo("Npc1429", 0, true)
    self:NotifyTo("Npc1453", 0, true)
    self:NotifyTo("Npc1451", 0, true)
    self:NotifyTo("Npc1642", 0, true)
end

function Quest41410:OnSubFailed4141016(arg1)
    print("OnSubFailed4141016")
end

return Quest41410
