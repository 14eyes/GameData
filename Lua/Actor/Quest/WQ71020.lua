require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71020 = class("Quest71020", QuestActorProxy)
Quest71020.defaultAlias = "Quest71020"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71020:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71020:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7102001"] = self.OnSubStart7102001,
        ["7102002"] = self.OnSubStart7102002,
        ["7102003"] = self.OnSubStart7102003,
        ["7102004"] = self.OnSubStart7102004,
        ["7102005"] = self.OnSubStart7102005,
        ["7102006"] = self.OnSubStart7102006,
        ["7102007"] = self.OnSubStart7102007,
        ["7102008"] = self.OnSubStart7102008,
        ["7102009"] = self.OnSubStart7102009,
        ["7102010"] = self.OnSubStart7102010,
        ["7102011"] = self.OnSubStart7102011,
        ["7102012"] = self.OnSubStart7102012,
        ["7102013"] = self.OnSubStart7102013,
        ["7102014"] = self.OnSubStart7102014,
        ["7102015"] = self.OnSubStart7102015,
        ["7102016"] = self.OnSubStart7102016,
        ["7102017"] = self.OnSubStart7102017,
        ["7102018"] = self.OnSubStart7102018,
        ["7102019"] = self.OnSubStart7102019,
        ["7102020"] = self.OnSubStart7102020,
        ["7102021"] = self.OnSubStart7102021,
        ["7102022"] = self.OnSubStart7102022,
        ["7102023"] = self.OnSubStart7102023,
        ["7102024"] = self.OnSubStart7102024,
        ["7102025"] = self.OnSubStart7102025,
        ["7102026"] = self.OnSubStart7102026,
        ["7102027"] = self.OnSubStart7102027,
        ["7102028"] = self.OnSubStart7102028,
        ["7102029"] = self.OnSubStart7102029,
        ["7102032"] = self.OnSubStart7102032,
        ["7102031"] = self.OnSubStart7102031,
        ["7102030"] = self.OnSubStart7102030,
        ["7102033"] = self.OnSubStart7102033
    }
end

function Quest71020:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7102001"] = self.OnSubFinish7102001,
        ["7102002"] = self.OnSubFinish7102002,
        ["7102003"] = self.OnSubFinish7102003,
        ["7102004"] = self.OnSubFinish7102004,
        ["7102005"] = self.OnSubFinish7102005,
        ["7102006"] = self.OnSubFinish7102006,
        ["7102007"] = self.OnSubFinish7102007,
        ["7102008"] = self.OnSubFinish7102008,
        ["7102009"] = self.OnSubFinish7102009,
        ["7102010"] = self.OnSubFinish7102010,
        ["7102011"] = self.OnSubFinish7102011,
        ["7102012"] = self.OnSubFinish7102012,
        ["7102013"] = self.OnSubFinish7102013,
        ["7102014"] = self.OnSubFinish7102014,
        ["7102015"] = self.OnSubFinish7102015,
        ["7102016"] = self.OnSubFinish7102016,
        ["7102017"] = self.OnSubFinish7102017,
        ["7102018"] = self.OnSubFinish7102018,
        ["7102019"] = self.OnSubFinish7102019,
        ["7102020"] = self.OnSubFinish7102020,
        ["7102021"] = self.OnSubFinish7102021,
        ["7102022"] = self.OnSubFinish7102022,
        ["7102023"] = self.OnSubFinish7102023,
        ["7102024"] = self.OnSubFinish7102024,
        ["7102025"] = self.OnSubFinish7102025,
        ["7102026"] = self.OnSubFinish7102026,
        ["7102027"] = self.OnSubFinish7102027,
        ["7102028"] = self.OnSubFinish7102028,
        ["7102029"] = self.OnSubFinish7102029,
        ["7102032"] = self.OnSubFinish7102032,
        ["7102031"] = self.OnSubFinish7102031,
        ["7102030"] = self.OnSubFinish7102030,
        ["7102033"] = self.OnSubFinish7102033
    }
end

function Quest71020:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7102001"] = self.OnSubFailed7102001,
        ["7102002"] = self.OnSubFailed7102002,
        ["7102003"] = self.OnSubFailed7102003,
        ["7102004"] = self.OnSubFailed7102004,
        ["7102005"] = self.OnSubFailed7102005,
        ["7102006"] = self.OnSubFailed7102006,
        ["7102007"] = self.OnSubFailed7102007,
        ["7102008"] = self.OnSubFailed7102008,
        ["7102009"] = self.OnSubFailed7102009,
        ["7102010"] = self.OnSubFailed7102010,
        ["7102011"] = self.OnSubFailed7102011,
        ["7102012"] = self.OnSubFailed7102012,
        ["7102013"] = self.OnSubFailed7102013,
        ["7102014"] = self.OnSubFailed7102014,
        ["7102015"] = self.OnSubFailed7102015,
        ["7102016"] = self.OnSubFailed7102016,
        ["7102017"] = self.OnSubFailed7102017,
        ["7102018"] = self.OnSubFailed7102018,
        ["7102019"] = self.OnSubFailed7102019,
        ["7102020"] = self.OnSubFailed7102020,
        ["7102021"] = self.OnSubFailed7102021,
        ["7102022"] = self.OnSubFailed7102022,
        ["7102023"] = self.OnSubFailed7102023,
        ["7102024"] = self.OnSubFailed7102024,
        ["7102025"] = self.OnSubFailed7102025,
        ["7102026"] = self.OnSubFailed7102026,
        ["7102027"] = self.OnSubFailed7102027,
        ["7102028"] = self.OnSubFailed7102028,
        ["7102029"] = self.OnSubFailed7102029,
        ["7102032"] = self.OnSubFailed7102032,
        ["7102031"] = self.OnSubFailed7102031,
        ["7102030"] = self.OnSubFailed7102030,
        ["7102033"] = self.OnSubFailed7102033
    }
end

function Quest71020:Start()
    print("Start")
end

function Quest71020:OnDestroy()
    print("OnDestroy")
end

function Quest71020:OnMainFinished(arg1)
    print("OnMainFinished")
    self:ShowBlackScreen(0.2, 1, 0.5, self.DestroyNPC, nil, nil, "")
end

function Quest71020:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71020:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyQuestNpcActor(npcs.Npc2085Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2026Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2012Data.alias, 3)
end

function Quest71020:Bandaily()
    print("Bandaily")
    self:NotifyTo(npcs.Npc2085Data.alias, 2, true)
    self:NotifyTo(npcs.Npc2026Data.alias, 2, true)
    self:NotifyTo(npcs.Npc2012Data.alias, 2, true)
end

function Quest71020:Startdaily()
    print("Startdaily")
    self:NotifyTo(npcs.Npc2085Data.alias, 0, true)
    self:NotifyTo(npcs.Npc2026Data.alias, 0, true)
    self:NotifyTo(npcs.Npc2012Data.alias, 0, true)
end

function Quest71020:NewFunction()
    print("NewFunction")
    self:GetQuestNpcActor(npcs.Npc2085Data.alias):DoFreeStyle(0, false)
end

function Quest71020:DestroyNPC()
    print("DestroyNPC")
    self:DestroyQuestNpcActor(npcs.Npc2085Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2026Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2012Data.alias, 3)
end

function Quest71020:xiaoanxianjie()
    print("finishiquest")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 7102030)
    end
end

function Quest71020:jiangzhouxianjie()
    print("finishiquest")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 7102031)
    end
end

function Quest71020:OnSubStart7102001(arg1)
    print("OnSubStart7102001")
    self:GetQuestVar(7102001, 1)
    self:GetQuestVar(7102001, 2)
    self:GetQuestVar(7102001, 3)
    self:GetQuestVar(7102001, 4)
    self:GetQuestVar(7102001, 0)
end

function Quest71020:OnSubFinish7102001(arg1)
    print("SubFinish7102001")
    self:ShowBlackScreen(0.5, 1, 0.5)
    self:CallDelay(0.5, function(arg1)
        arg1:CreateQuestNpcById(subIDs.q7102001, npcs.Npc2085Data.id, 1)
    end)

    self:CreateQuestNpcById(subIDs.q7102001, npcs.Npc2026Data.id, 2)
    self:CreateQuestNpcById(subIDs.q7102001, npcs.Npc2012Data.id, 3)
end

function Quest71020:OnSubFailed7102001(arg1)
    print("OnSubFailed7102001")
end

function Quest71020:OnSubStart7102002(arg1)
    self:HideQuestLikingBar()
    self:SetQuestVar(7102001, 2, 2)
end

function Quest71020:OnSubFinish7102002(arg1)
    print("SubFinish7102002")
    self:HideQuestLikingBar()
end

function Quest71020:OnSubFailed7102002(arg1)
    self:HideQuestLikingBar()
end

function Quest71020:OnSubStart7102003(arg1)
    self:HideQuestLikingBar()
    self:SetQuestVar(7102001, 1, 2)
end

function Quest71020:OnSubFinish7102003(arg1)
    print("SubFinish7102003")
    self:HideQuestLikingBar()
end

function Quest71020:OnSubFailed7102003(arg1)
    self:HideQuestLikingBar()
end

function Quest71020:OnSubStart7102004(arg1)
    print("OnSubStart7102004")
end

function Quest71020:OnSubFinish7102004(arg1)
    print("OnSubFinish7102004")
    self:SetQuestVar(7102001, 0, 1)
end

function Quest71020:OnSubFailed7102004(arg1)
    print("OnSubFailed7102004")
end

function Quest71020:OnSubStart7102005(arg1)
    print("OnSubStart7102005")
end

function Quest71020:OnSubFinish7102005(arg1)
    print("SubFinish7102005")
    self:GetQuestVar(7102001, 3)
    self:SetQuestVar(7102001, 3, 50)
    local questVar = self:GetQuestVar(7102001, 3)
    self:ShowQuestLikingBar(71020, 2012, questVar, false, "FETTER_EXP_NAME")
    print("showlikingbar")
end

function Quest71020:OnSubFailed7102005(arg1)
    print("OnSubFailed7102005")
end

function Quest71020:OnSubStart7102006(arg1)
    print("OnSubStart7102006")
end

function Quest71020:OnSubFinish7102006(arg1)
    print("OnSubFinish7102006")
    self:GetQuestNpcActor(npcs.Npc2012Data.alias):DoFreeStyle(1110, true)
end

function Quest71020:OnSubFailed7102006(arg1)
    print("OnSubFailed7102006")
end

function Quest71020:OnSubStart7102007(arg1)
    print("OnSubStart7102007")
end

function Quest71020:OnSubFinish7102007(arg1)
    self:GetQuestVar(7102001, 3)
    local n = self:GetQuestVar(7102001, 3) - 20
    self:GetQuestNpcActor(npcs.Npc2012Data.alias):DoFreeStyle(1120, false)
    self:UpdateQuestLikingBar(n, true, "FETTER_LEVEL_DOWN")
    self:SetQuestVar(7102001, 3, n)
end

function Quest71020:OnSubFailed7102007(arg1)
    print("OnSubFailed7102007")
end

function Quest71020:OnSubStart7102008(arg1)
    print("OnSubStart7102008")
end

function Quest71020:OnSubFinish7102008(arg1)
    self:GetQuestVar(7102001, 3)
    local n = self:GetQuestVar(7102001, 3) + 20
    self:GetQuestNpcActor(npcs.Npc2012Data.alias):DoFreeStyle(1190, true)
    self:UpdateQuestLikingBar(n, false, "FETTER_LEVEL_UP")
    self:SetQuestVar(7102001, 3, n)
end

function Quest71020:OnSubFailed7102008(arg1)
    print("OnSubFailed7102008")
end

function Quest71020:OnSubStart7102009(arg1)
    print("OnSubStart7102009")
end

function Quest71020:OnSubFinish7102009(arg1)
    self:GetQuestVar(7102001, 3)
    local n = self:GetQuestVar(7102001, 3) - 20
    self:GetQuestNpcActor(npcs.Npc2012Data.alias):DoFreeStyle(1120, true)
    self:UpdateQuestLikingBar(n, true, "FETTER_LEVEL_DOWN")
    self:SetQuestVar(7102001, 3, n)
end

function Quest71020:OnSubFailed7102009(arg1)
    print("OnSubFailed7102009")
end

function Quest71020:OnSubStart7102010(arg1)
    print("OnSubStart7102010")
end

function Quest71020:OnSubFinish7102010(arg1)
    print("OnSubFinish7102010")
    self:GetQuestNpcActor(npcs.Npc2012Data.alias):DoFreeStyle(1110, false)
end

function Quest71020:OnSubFailed7102010(arg1)
    print("OnSubFailed7102010")
end

function Quest71020:OnSubStart7102011(arg1)
    print("OnSubStart7102011")
end

function Quest71020:OnSubFinish7102011(arg1)
    self:GetQuestVar(7102001, 3)
    local n = self:GetQuestVar(7102001, 3) + 20
    self:GetQuestNpcActor(npcs.Npc2012Data.alias):DoFreeStyle(1171, true)
    self:UpdateQuestLikingBar(n, false, "FETTER_LEVEL_UP")
    self:SetQuestVar(7102001, 3, n)
end

function Quest71020:OnSubFailed7102011(arg1)
    print("OnSubFailed7102011")
end

function Quest71020:OnSubStart7102012(arg1)
    print("OnSubStart7102012")
end

function Quest71020:OnSubFinish7102012(arg1)
    print("OnSubFinish7102012")
    self:GetQuestNpcActor(npcs.Npc2012Data.alias):DoFreeStyle(1110, true)
end

function Quest71020:OnSubFailed7102012(arg1)
    print("OnSubFailed7102012")
end

function Quest71020:OnSubStart7102013(arg1)
    print("OnSubStart7102013")
end

function Quest71020:OnSubFinish7102013(arg1)
    self:GetQuestVar(7102001, 3)
    local n = self:GetQuestVar(7102001, 3) - 20
    if n < 0 then
        n = 0
    elseif 0 < n then
    end

    self:GetQuestNpcActor(npcs.Npc2012Data.alias):DoFreeStyle(1150, true)
    self:UpdateQuestLikingBar(n, true, "FETTER_LEVEL_DOWN")
    self:SetQuestVar(7102001, 3, n)
    print(tostring(n))
end

function Quest71020:OnSubFailed7102013(arg1)
    print("OnSubFailed7102013")
end

function Quest71020:OnSubStart7102014(arg1)
    print("OnSubStart7102014")
end

function Quest71020:OnSubFinish7102014(arg1)
    self:GetQuestVar(7102001, 3)
    local n = self:GetQuestVar(7102001, 3) + 20
    if 100 < n then
        n = 100
    elseif n < 100 then
    end

    self:GetQuestNpcActor(npcs.Npc2012Data.alias):DoFreeStyle(1173, true)
    self:UpdateQuestLikingBar(n, false, "FETTER_LEVEL_UP")
    self:SetQuestVar(7102001, 3, n)
    print(tostring(n))
end

function Quest71020:OnSubFailed7102014(arg1)
    print("OnSubFailed7102014")
end

function Quest71020:OnSubStart7102015(arg1)
    self:GetQuestVar(7102001, 3)
    self:GetQuestVar(7102001, 1)
    local questVar = self:GetQuestVar(7102001, 3)
    if 60 < questVar then
        self:SetQuestVar(7102001, 1, 1)
    elseif questVar < 60 then
        self:SetQuestVar(7102001, 1, 0)
    end
end

function Quest71020:OnSubFinish7102015(arg1)
    print("OnSubFinish7102015")
end

function Quest71020:OnSubFailed7102015(arg1)
    print("OnSubFailed7102015")
end

function Quest71020:OnSubStart7102016(arg1)
    print("OnSubStart7102016")
end

function Quest71020:OnSubFinish7102016(arg1)
    self:SetQuestVar(7102001, 4, 50)
    local questVar = self:GetQuestVar(7102001, 4)
    self:ShowQuestLikingBar(71020, 2026, questVar, false, "FETTER_EXP_NAME")
end

function Quest71020:OnSubFailed7102016(arg1)
    print("OnSubFailed7102016")
end

function Quest71020:OnSubStart7102017(arg1)
    print("OnSubStart7102017")
end

function Quest71020:OnSubFinish7102017(arg1)
    print("OnSubFinish7102017")
    self:GetQuestNpcActor(npcs.Npc2026Data.alias):DoFreeStyle(1110, true)
end

function Quest71020:OnSubFailed7102017(arg1)
    print("OnSubFailed7102017")
end

function Quest71020:OnSubStart7102018(arg1)
    print("OnSubStart7102018")
end

function Quest71020:OnSubFinish7102018(arg1)
    self:GetQuestVar(7102001, 4)
    local n = self:GetQuestVar(7102001, 4) - 20
    self:GetQuestNpcActor(npcs.Npc2026Data.alias):DoFreeStyle(1120, true)
    self:UpdateQuestLikingBar(n, true, "FETTER_LEVEL_DOWN")
    self:SetQuestVar(7102001, 4, n)
end

function Quest71020:OnSubFailed7102018(arg1)
    print("OnSubFailed7102018")
end

function Quest71020:OnSubStart7102019(arg1)
    print("OnSubStart7102019")
end

function Quest71020:OnSubFinish7102019(arg1)
    self:GetQuestVar(7102001, 4)
    local n = self:GetQuestVar(7102001, 4) + 20
    self:GetQuestNpcActor(npcs.Npc2026Data.alias):DoFreeStyle(1190, true)
    self:UpdateQuestLikingBar(n, false, "FETTER_EXP_NAME")
    self:SetQuestVar(7102001, 4, n)
end

function Quest71020:OnSubFailed7102019(arg1)
    print("OnSubFailed7102019")
end

function Quest71020:OnSubStart7102020(arg1)
    print("OnSubStart7102020")
end

function Quest71020:OnSubFinish7102020(arg1)
    print("OnSubFinish7102020")
    self:GetQuestNpcActor(npcs.Npc2026Data.alias):DoFreeStyle(1110, false)
end

function Quest71020:OnSubFailed7102020(arg1)
    print("OnSubFailed7102020")
end

function Quest71020:OnSubStart7102021(arg1)
    print("OnSubStart7102021")
end

function Quest71020:OnSubFinish7102021(arg1)
    self:GetQuestVar(7102001, 4)
    local n = self:GetQuestVar(7102001, 4) + 20
    self:GetQuestNpcActor(npcs.Npc2026Data.alias):DoFreeStyle(1160, true)
    self:UpdateQuestLikingBar(n, false, "FETTER_LEVEL_UP")
    self:SetQuestVar(7102001, 4, n)
end

function Quest71020:OnSubFailed7102021(arg1)
    print("OnSubFailed7102021")
end

function Quest71020:OnSubStart7102022(arg1)
    print("OnSubStart7102022")
end

function Quest71020:OnSubFinish7102022(arg1)
    self:GetQuestVar(7102001, 4)
    local n = self:GetQuestVar(7102001, 4) - 20
    self:GetQuestNpcActor(npcs.Npc2026Data.alias):DoFreeStyle(1150, true)
    self:UpdateQuestLikingBar(n, true, "FETTER_LEVEL_DOWN")
    self:SetQuestVar(7102001, 4, n)
end

function Quest71020:OnSubFailed7102022(arg1)
    print("OnSubFailed7102022")
end

function Quest71020:OnSubStart7102023(arg1)
    print("OnSubStart7102023")
end

function Quest71020:OnSubFinish7102023(arg1)
    self:GetQuestVar(7102001, 4)
    local n = self:GetQuestVar(7102001, 4) + 20
    if 100 < n then
        n = 100
    elseif n < 100 then
    end

    self:GetQuestNpcActor(npcs.Npc2026Data.alias):DoFreeStyle(1190, true)
    self:UpdateQuestLikingBar(n, false, "FETTER_LEVEL_UP")
    self:SetQuestVar(7102001, 4, n)
end

function Quest71020:OnSubFailed7102023(arg1)
    print("OnSubFailed7102023")
end

function Quest71020:OnSubStart7102024(arg1)
    print("OnSubStart7102024")
end

function Quest71020:OnSubFinish7102024(arg1)
    print("OnSubFinish7102024")
    self:GetQuestNpcActor(npcs.Npc2026Data.alias):DoFreeStyle(1110, true)
end

function Quest71020:OnSubFailed7102024(arg1)
    print("OnSubFailed7102024")
end

function Quest71020:OnSubStart7102025(arg1)
    print("OnSubStart7102025")
end

function Quest71020:OnSubFinish7102025(arg1)
    self:GetQuestVar(7102001, 4)
    local n = self:GetQuestVar(7102001, 4) - 20
    if n < 0 then
        n = 0
    elseif 0 < n then
    end

    self:GetQuestNpcActor(npcs.Npc2026Data.alias):DoFreeStyle(1120, true)
    self:UpdateQuestLikingBar(n, true, "FETTER_EXP_NAME")
    self:SetQuestVar(7102001, 4, n)
end

function Quest71020:OnSubFailed7102025(arg1)
    print("OnSubFailed7102025")
end

function Quest71020:OnSubStart7102026(arg1)
    self:GetQuestVar(7102001, 4)
    self:GetQuestVar(7102001, 2)
    local questVar = self:GetQuestVar(7102001, 4)
    if 60 < questVar then
        self:SetQuestVar(7102001, 2, 1)
    elseif questVar < 60 then
        self:SetQuestVar(7102001, 2, 0)
    end
end

function Quest71020:OnSubFinish7102026(arg1)
    print("OnSubFinish7102026")
end

function Quest71020:OnSubFailed7102026(arg1)
    print("OnSubFailed7102026")
end

function Quest71020:OnSubStart7102027(arg1)
    print("OnSubStart7102027")
end

function Quest71020:OnSubFinish7102027(arg1)
    print("OnSubFinish7102027")
end

function Quest71020:OnSubFailed7102027(arg1)
    print("OnSubFailed7102027")
end

function Quest71020:OnSubStart7102028(arg1)
    print("OnSubStart7102028")
end

function Quest71020:OnSubFinish7102028(arg1)
    print("OnSubFinish7102028")
end

function Quest71020:OnSubFailed7102028(arg1)
    print("OnSubFailed7102028")
end

function Quest71020:OnSubStart7102029(arg1)
    print("OnSubStart7102029")
end

function Quest71020:OnSubFinish7102029(arg1)
    print("OnSubFinish7102029")
end

function Quest71020:OnSubFailed7102029(arg1)
    print("OnSubFailed7102029")
end

function Quest71020:OnSubStart7102032(arg1)
    print("OnSubStart7102032")
end

function Quest71020:OnSubFinish7102032(arg1)
    print("OnSubFinish7102032")
end

function Quest71020:OnSubFailed7102032(arg1)
    print("OnSubFailed7102032")
end

function Quest71020:OnSubStart7102031(arg1)
    print("OnSubStart7102031")
    self:CallDelay(0.3, self.jiangzhouxianjie)
end

function Quest71020:OnSubFinish7102031(arg1)
    print("OnSubFinish7102031")
end

function Quest71020:OnSubFailed7102031(arg1)
    print("OnSubFailed7102031")
end

function Quest71020:OnSubStart7102030(arg1)
    print("OnSubStart7102030")
    self:CallDelay(0.3, self.xiaoanxianjie)
end

function Quest71020:OnSubFinish7102030(arg1)
    print("OnSubFinish7102030")
end

function Quest71020:OnSubFailed7102030(arg1)
    print("OnSubFailed7102030")
end

function Quest71020:OnSubStart7102033(arg1)
    print("OnSubStart7102033")
end

function Quest71020:OnSubFinish7102033(arg1)
    print("OnSubFinish7102033")
end

function Quest71020:OnSubFailed7102033(arg1)
    print("OnSubFailed7102033")
end

return Quest71020
