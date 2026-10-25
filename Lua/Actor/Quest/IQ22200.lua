require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22200 = class("Quest22200", QuestActorProxy)
Quest22200.defaultAlias = "Quest22200"
local clientData
local mainID
local actorAlias
local subIDs

function Quest22200:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest22200:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2220001"] = self.OnSubStart2220001,
        ["2220002"] = self.OnSubStart2220002,
        ["2220003"] = self.OnSubStart2220003,
        ["2220004"] = self.OnSubStart2220004,
        ["2220005"] = self.OnSubStart2220005,
        ["2220006"] = self.OnSubStart2220006,
        ["2220007"] = self.OnSubStart2220007,
        ["2220008"] = self.OnSubStart2220008,
        ["2220009"] = self.OnSubStart2220009,
        ["2220010"] = self.OnSubStart2220010,
        ["2220011"] = self.OnSubStart2220011,
        ["2220012"] = self.OnSubStart2220012,
        ["2220013"] = self.OnSubStart2220013
    }
end

function Quest22200:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2220001"] = self.OnSubFinish2220001,
        ["2220002"] = self.OnSubFinish2220002,
        ["2220003"] = self.OnSubFinish2220003,
        ["2220004"] = self.OnSubFinish2220004,
        ["2220005"] = self.OnSubFinish2220005,
        ["2220006"] = self.OnSubFinish2220006,
        ["2220007"] = self.OnSubFinish2220007,
        ["2220008"] = self.OnSubFinish2220008,
        ["2220009"] = self.OnSubFinish2220009,
        ["2220010"] = self.OnSubFinish2220010,
        ["2220011"] = self.OnSubFinish2220011,
        ["2220012"] = self.OnSubFinish2220012,
        ["2220013"] = self.OnSubFinish2220013
    }
end

function Quest22200:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2220001"] = self.OnSubFailed2220001,
        ["2220002"] = self.OnSubFailed2220002,
        ["2220003"] = self.OnSubFailed2220003,
        ["2220004"] = self.OnSubFailed2220004,
        ["2220005"] = self.OnSubFailed2220005,
        ["2220006"] = self.OnSubFailed2220006,
        ["2220007"] = self.OnSubFailed2220007,
        ["2220008"] = self.OnSubFailed2220008,
        ["2220009"] = self.OnSubFailed2220009,
        ["2220010"] = self.OnSubFailed2220010,
        ["2220011"] = self.OnSubFailed2220011,
        ["2220012"] = self.OnSubFailed2220012,
        ["2220013"] = self.OnSubFailed2220013
    }
end

function Quest22200:Start()
    print("Start")
end

function Quest22200:OnDestroy()
    print("OnDestroy")
end

function Quest22200:OnMainFinished(arg1)
    print("OnMainFinished")
    self:SetQuestVar(arg1.QuestConfigId, 2, 0)
    self:SetQuestVar(arg1.QuestConfigId, 1, 0)
    self:SetQuestVar(arg1.QuestConfigId, 3, 0)
end

function Quest22200:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest22200:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest22200:isFull_isDelicious(arg1, arg2)
    print("GivingRecord:", arg1)
    if arg1 == 222000101 or arg1 == 222000201 or arg1 == 222000301 then
        self:SetQuestVar(arg2.QuestConfigId, 3, 1)
    elseif arg1 == 222000102 or arg1 == 222000202 or arg1 == 222000302 then
        self:SetQuestVar(arg2.QuestConfigId, 3, 2)
    elseif arg1 == 222000103 or arg1 == 222000203 or arg1 == 222000303 then
        self:SetQuestVar(arg2.QuestConfigId, 3, 3)
    elseif arg1 == 222000104 or arg1 == 222000204 or arg1 == 222000304 then
        self:SetQuestVar(arg2.QuestConfigId, 3, 4)
    end
end

function Quest22200:OnSubStart2220001(arg1)
    print("OnSubStart2220001")
    self:SetQuestVarWithInterval(arg1.QuestConfigId, 0, 1, 15)
    local questVar = self:GetQuestVar(arg1.QuestConfigId, 0)
    local n = 0
    for i = 1, 5 do
        local v = questVar - 3 * (i - 1)
        if v <= 3 and 1 <= v then
            n = v
            break
        end
    end

    print("!!!!!!!!!!!!!!m=", n)
    if n ~= 0 then
        self:SetQuestVar(arg1.QuestConfigId, 1, n)
    else
        print("m\228\184\186\228\187\128\228\185\136\231\173\137\228\186\1420\239\188\159\239\188\159\239\188\159\239\188\159")
    end
end

function Quest22200:OnSubFinish2220001(arg1)
    print("OnSubFinish2220001")
end

function Quest22200:OnSubFailed2220001(arg1)
    print("OnSubFailed2220001")
end

function Quest22200:OnSubStart2220002(arg1)
    print("OnSubStart2220002")
end

function Quest22200:OnSubFinish2220002(arg1)
    print("OnSubFinish2220002")
end

function Quest22200:OnSubFailed2220002(arg1)
    print("OnSubFailed2220002")
end

function Quest22200:OnSubStart2220003(arg1)
    print("OnSubStart2220003")
end

function Quest22200:OnSubFinish2220003(arg1)
    print("OnSubFinish2220003")
    self:SetQuestVar(arg1.QuestConfigId, 2, 5)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        local givingRecord = actor:GetGivingRecord(2220001)
        self:isFull_isDelicious(givingRecord, arg1)
    end
end

function Quest22200:OnSubFailed2220003(arg1)
    print("OnSubFailed2220003")
end

function Quest22200:OnSubStart2220004(arg1)
    print("OnSubStart2220004")
end

function Quest22200:OnSubFinish2220004(arg1)
    print("OnSubFinish2220004")
end

function Quest22200:OnSubFailed2220004(arg1)
    print("OnSubFailed2220004")
end

function Quest22200:OnSubStart2220005(arg1)
    print("OnSubStart2220005")
end

function Quest22200:OnSubFinish2220005(arg1)
    print("OnSubFinish2220005")
    self:SetQuestVar(arg1.QuestConfigId, 2, 5)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        local givingRecord = actor:GetGivingRecord(2220002)
        self:isFull_isDelicious(givingRecord, arg1)
    end
end

function Quest22200:OnSubFailed2220005(arg1)
    print("OnSubFailed2220005")
end

function Quest22200:OnSubStart2220006(arg1)
    print("OnSubStart2220006")
end

function Quest22200:OnSubFinish2220006(arg1)
    print("OnSubFinish2220006")
end

function Quest22200:OnSubFailed2220006(arg1)
    print("OnSubFailed2220006")
end

function Quest22200:OnSubStart2220007(arg1)
    print("OnSubStart2220007")
end

function Quest22200:OnSubFinish2220007(arg1)
    print("OnSubFinish2220007")
    self:SetQuestVar(arg1.QuestConfigId, 2, 5)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        local givingRecord = actor:GetGivingRecord(2220003)
        self:isFull_isDelicious(givingRecord, arg1)
    end
end

function Quest22200:OnSubFailed2220007(arg1)
    print("OnSubFailed2220007")
end

function Quest22200:OnSubStart2220008(arg1)
    print("OnSubStart2220008")
end

function Quest22200:OnSubFinish2220008(arg1)
    print("OnSubFinish2220008")
end

function Quest22200:OnSubFailed2220008(arg1)
    print("OnSubFailed2220008")
end

function Quest22200:OnSubStart2220009(arg1)
    print("OnSubStart2220009")
end

function Quest22200:OnSubFinish2220009(arg1)
    print("OnSubFinish2220009")
    self:SetQuestVar(arg1.QuestConfigId, 2, 5)
end

function Quest22200:OnSubFailed2220009(arg1)
    print("OnSubFailed2220009")
end

function Quest22200:OnSubStart2220010(arg1)
    print("OnSubStart2220010")
end

function Quest22200:OnSubFinish2220010(arg1)
    print("OnSubFinish2220010")
    self:SetQuestVar(arg1.QuestConfigId, 2, 0)
end

function Quest22200:OnSubFailed2220010(arg1)
    print("OnSubFailed2220010")
end

function Quest22200:OnSubStart2220011(arg1)
    print("OnSubStart2220011")
end

function Quest22200:OnSubFinish2220011(arg1)
    print("OnSubFinish2220011")
    self:SetQuestVar(arg1.QuestConfigId, 2, 0)
end

function Quest22200:OnSubFailed2220011(arg1)
    print("OnSubFailed2220011")
end

function Quest22200:OnSubStart2220012(arg1)
    print("OnSubStart2220012")
end

function Quest22200:OnSubFinish2220012(arg1)
    print("OnSubFinish2220012")
    self:SetQuestVar(arg1.QuestConfigId, 2, 0)
end

function Quest22200:OnSubFailed2220012(arg1)
    print("OnSubFailed2220012")
end

function Quest22200:OnSubStart2220013(arg1)
    print("OnSubStart2220013")
end

function Quest22200:OnSubFinish2220013(arg1)
    print("OnSubFinish2220013")
    self:SetQuestVar(arg1.QuestConfigId, 2, 0)
end

function Quest22200:OnSubFailed2220013(arg1)
    print("OnSubFailed2220013")
end

return Quest22200
