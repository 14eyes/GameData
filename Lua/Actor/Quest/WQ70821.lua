require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70821 = class("Quest70821", QuestActorProxy)
Quest70821.defaultAlias = "Quest70821"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest70821:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest70821:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7082101"] = self.OnSubStart7082101,
        ["7082102"] = self.OnSubStart7082102,
        ["7082103"] = self.OnSubStart7082103,
        ["7082104"] = self.OnSubStart7082104,
        ["7082107"] = self.OnSubStart7082107,
        ["7082108"] = self.OnSubStart7082108,
        ["7082105"] = self.OnSubStart7082105,
        ["7082106"] = self.OnSubStart7082106
    }
end

function Quest70821:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7082101"] = self.OnSubFinish7082101,
        ["7082102"] = self.OnSubFinish7082102,
        ["7082103"] = self.OnSubFinish7082103,
        ["7082104"] = self.OnSubFinish7082104,
        ["7082107"] = self.OnSubFinish7082107,
        ["7082108"] = self.OnSubFinish7082108,
        ["7082105"] = self.OnSubFinish7082105,
        ["7082106"] = self.OnSubFinish7082106
    }
end

function Quest70821:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7082101"] = self.OnSubFailed7082101,
        ["7082102"] = self.OnSubFailed7082102,
        ["7082103"] = self.OnSubFailed7082103,
        ["7082104"] = self.OnSubFailed7082104,
        ["7082107"] = self.OnSubFailed7082107,
        ["7082108"] = self.OnSubFailed7082108,
        ["7082105"] = self.OnSubFailed7082105,
        ["7082106"] = self.OnSubFailed7082106
    }
end

function Quest70821:Start()
    print("Start")
end

function Quest70821:OnDestroy()
    print("OnDestroy")
end

function Quest70821:OnMainFinished(arg1)
    print("OnMainFinished")
    self:NotifyTo(npcs.Npc1417Data.alias, 0, true)
end

function Quest70821:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70821:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo(npcs.Npc1417Data.alias, 0, true)
end

function Quest70821:OnSubStart7082101(arg1)
    print("OnSubStart7082101")
    self:NotifyTo(npcs.Npc1417Data.alias, 2, true)
    self:SetQuestVar(subIDs.q7082101, 0, 0)
end

function Quest70821:OnSubFinish7082101(arg1)
    print("OnSubFinish7082101")
end

function Quest70821:OnSubFailed7082101(arg1)
    print("OnSubFailed7082101")
end

function Quest70821:OnSubStart7082102(arg1)
    print("OnSubStart7082102")
end

function Quest70821:OnSubFinish7082102(arg1)
    print("OnSubFinish7082302")
    QuestProgress = self:GetQuestVar(arg1.QuestConfigId, 0)
    QuestProgress = QuestProgress + 1
    self:SetQuestVar(arg1.QuestConfigId, 0, QuestProgress)
    QuestProgress = self:GetQuestVar(arg1.QuestConfigId, 0)
    print("QuestProgress:" .. QuestProgress)
    if QuestProgress == 1 then
        self:NarratorOnlyTaskByData(datas.PaimonReminder02)
    else
        if QuestProgress == 2 then
            self:NarratorOnlyTaskByData(datas.PaimonReminder03)
        else
            if QuestProgress == 3 then
                self:NarratorOnlyTaskByData(datas.PaimonReminder04)
            end
        end
    end
end

function Quest70821:OnSubFailed7082102(arg1)
    print("OnSubFailed7082102")
end

function Quest70821:OnSubStart7082103(arg1)
    print("OnSubStart7082103")
end

function Quest70821:OnSubFinish7082103(arg1)
    print("OnSubFinish7082303")
    QuestProgress = self:GetQuestVar(arg1.QuestConfigId, 0)
    QuestProgress = QuestProgress + 1
    self:SetQuestVar(arg1.QuestConfigId, 0, QuestProgress)
    QuestProgress = self:GetQuestVar(arg1.QuestConfigId, 0)
    print("QuestProgress:" .. QuestProgress)
    if QuestProgress == 1 then
        self:NarratorOnlyTaskByData(datas.PaimonReminder02)
    else
        if QuestProgress == 2 then
            self:NarratorOnlyTaskByData(datas.PaimonReminder03)
        else
            if QuestProgress == 3 then
                self:NarratorOnlyTaskByData(datas.PaimonReminder04)
            end
        end
    end
end

function Quest70821:OnSubFailed7082103(arg1)
    print("OnSubFailed7082103")
end

function Quest70821:OnSubStart7082104(arg1)
    print("OnSubStart7082104")
end

function Quest70821:OnSubFinish7082104(arg1)
    print("OnSubFinish7082304")
    QuestProgress = self:GetQuestVar(arg1.QuestConfigId, 0)
    QuestProgress = QuestProgress + 1
    self:SetQuestVar(arg1.QuestConfigId, 0, QuestProgress)
    QuestProgress = self:GetQuestVar(arg1.QuestConfigId, 0)
    print("QuestProgress:" .. QuestProgress)
    if QuestProgress == 1 then
        self:NarratorOnlyTaskByData(datas.PaimonReminder02)
    else
        if QuestProgress == 2 then
            self:NarratorOnlyTaskByData(datas.PaimonReminder03)
        else
            if QuestProgress == 3 then
                self:NarratorOnlyTaskByData(datas.PaimonReminder04)
            end
        end
    end
end

function Quest70821:OnSubFailed7082104(arg1)
    print("OnSubFailed7082104")
end

function Quest70821:OnSubStart7082107(arg1)
    print("OnSubStart7082107")
end

function Quest70821:OnSubFinish7082107(arg1)
    print("OnSubFinish7082107")
end

function Quest70821:OnSubFailed7082107(arg1)
    print("OnSubFailed7082107")
end

function Quest70821:OnSubStart7082108(arg1)
    print("OnSubStart7082108")
end

function Quest70821:OnSubFinish7082108(arg1)
    print("OnSubFinish7082108")
end

function Quest70821:OnSubFailed7082108(arg1)
    print("OnSubFailed7082108")
end

function Quest70821:OnSubStart7082105(arg1)
    print("OnSubStart7082105")
end

function Quest70821:OnSubFinish7082105(arg1)
    print("OnSubFinish7082105")
end

function Quest70821:OnSubFailed7082105(arg1)
    print("OnSubFailed7082105")
end

function Quest70821:OnSubStart7082106(arg1)
    print("OnSubStart7082106")
    self:NotifyTo(npcs.Npc1417Data.alias, 2, true)
end

function Quest70821:OnSubFinish7082106(arg1)
    print("OnSubFinish7082106")
end

function Quest70821:OnSubFailed7082106(arg1)
    print("OnSubFailed7082106")
end

return Quest70821
