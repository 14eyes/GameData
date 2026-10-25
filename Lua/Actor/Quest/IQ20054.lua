require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20054 = class("Quest20054", QuestActorProxy)
Quest20054.defaultAlias = "Quest20054"
local clientData
local npcData
local npcData1
local n

function Quest20054:OnDataLoaded()
    clientData = self.clientData
    n = 22112
    npcData = clientData.NPCData
    npcData1 = clientData.NPCData1
end

function Quest20054:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2005401"] = self.OnSubStart2005401
    self.subStartHandlers["2005402"] = self.OnSubStart2005402
    self.subStartHandlers["2005403"] = self.OnSubStart2005403
    self.subStartHandlers["2005404"] = self.OnSubStart2005404
    self.subStartHandlers["2005405"] = self.OnSubStart2005405
    self.subStartHandlers["2005406"] = self.OnSubStart2005406
    self.subStartHandlers["2005407"] = self.OnSubStart2005407
    self.subStartHandlers["2005408"] = self.OnSubStart2005408
    self.subStartHandlers["2005409"] = self.OnSubStart2005409
    self.subStartHandlers["2005410"] = self.OnSubStart2005410
    self.subStartHandlers["2005411"] = self.OnSubStart2005411
    self.subStartHandlers["2005412"] = self.OnSubStart2005412
    self.subStartHandlers["2005413"] = self.OnSubStart2005413
    self.subStartHandlers["2005414"] = self.OnSubStart2005414
    self.subStartHandlers["2005415"] = self.OnSubStart2005415
    self.subStartHandlers["2005416"] = self.OnSubStart2005416
end

function Quest20054:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2005401"] = self.OnSubFinish2005401
    self.subFinishHandlers["2005402"] = self.OnSubFinish2005402
    self.subFinishHandlers["2005403"] = self.OnSubFinish2005403
    self.subFinishHandlers["2005404"] = self.OnSubFinish2005404
    self.subFinishHandlers["2005405"] = self.OnSubFinish2005405
    self.subFinishHandlers["2005406"] = self.OnSubFinish2005406
    self.subFinishHandlers["2005407"] = self.OnSubFinish2005407
    self.subFinishHandlers["2005408"] = self.OnSubFinish2005408
    self.subFinishHandlers["2005409"] = self.OnSubFinish2005409
    self.subFinishHandlers["2005410"] = self.OnSubFinish2005410
    self.subFinishHandlers["2005411"] = self.OnSubFinish2005411
    self.subFinishHandlers["2005412"] = self.OnSubFinish2005412
    self.subFinishHandlers["2005413"] = self.OnSubFinish2005413
    self.subFinishHandlers["2005414"] = self.OnSubFinish2005414
    self.subFinishHandlers["2005415"] = self.OnSubFinish2005415
    self.subFinishHandlers["2005416"] = self.OnSubFinish2005416
end

function Quest20054:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2005401"] = self.OnSubFailed2005401
    self.subFailedHandlers["2005402"] = self.OnSubFailed2005402
    self.subFailedHandlers["2005403"] = self.OnSubFailed2005403
    self.subFailedHandlers["2005404"] = self.OnSubFailed2005404
    self.subFailedHandlers["2005405"] = self.OnSubFailed2005405
    self.subFailedHandlers["2005406"] = self.OnSubFailed2005406
    self.subFailedHandlers["2005407"] = self.OnSubFailed2005407
    self.subFailedHandlers["2005408"] = self.OnSubFailed2005408
    self.subFailedHandlers["2005409"] = self.OnSubFailed2005409
    self.subFailedHandlers["2005410"] = self.OnSubFailed2005410
    self.subFailedHandlers["2005411"] = self.OnSubFailed2005411
    self.subFailedHandlers["2005412"] = self.OnSubFailed2005412
    self.subFailedHandlers["2005413"] = self.OnSubFailed2005413
    self.subFailedHandlers["2005414"] = self.OnSubFailed2005414
    self.subFailedHandlers["2005415"] = self.OnSubFailed2005415
    self.subFailedHandlers["2005416"] = self.OnSubFailed2005416
end

function Quest20054:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        self:ShowPaimonDoWay()
    end

    if arg1 == 2 then
        self:PaimonVanish()
    end
end

function Quest20054:ShowPaimonDoWay()
    local actor = actorMgr:GetActor("20054")
    local questNpcActor = actor:GetQuestNpcActor(npcData1.Npc)
    local paimonData = self.clientData.PaimonData
    local avatarPos = actorUtils.GetAvatarPos()
    local forward = questNpcActor:GetForward()
    local avatarForward = actorUtils.GetAvatarForward()
    avatarPos.x = avatarPos.x + 1
    actor:CreateQuestNpcByIdWithPos(2005401, paimonData.PaimonID, 1, avatarPos, M.Dir2Euler(avatarForward))
    actor:GetQuestNpcActor(clientData.PaimonData.Paimon):AirModeOn()
end

function Quest20054:PaimonVanish()
    local questNpcActor = self:GetQuestNpcActor(clientData.PaimonData.Paimon)
    questNpcActor:ClearPriorityInter(InterTimingType.BTN)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest20054:OnSubStart2005401(arg1)
    print("01 start")
end

function Quest20054:OnSubFinish2005401(arg1)
    print("01 finish")
end

function Quest20054:OnSubFailed2005401(arg1)
    self:NotifyTo("Npc1441", DailyNpcManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1533", DailyNpcManager.NpcEventType.STARTDAILY, true)
end

function Quest20054:OnSubStart2005402(arg1)
    self:NotifyTo("Npc1441", DailyNpcManager.NpcEventType.BANDAILY, true)
    self:NotifyTo("Npc1533", DailyNpcManager.NpcEventType.BANDAILY, true)
    print("02 start")
end

function Quest20054:OnSubFinish2005402(arg1)
    print("02 finish")
end

function Quest20054:OnSubFailed2005402(arg1)
    print("2005402 failed")
end

function Quest20054:OnSubStart2005403(arg1)
    print("03 start")
end

function Quest20054:OnSubFinish2005403(arg1)
    print("03 finish")
end

function Quest20054:OnSubFailed2005403(arg1)
    print("03 fail")
end

function Quest20054:OnSubStart2005404(arg1)
    print("04 start")
end

function Quest20054:OnSubFinish2005404(arg1)
    print("04 finish")
end

function Quest20054:OnSubFailed2005404(arg1)
    print("04 fail")
end

function Quest20054:OnSubStart2005405(arg1)
    print("05 start")
end

function Quest20054:OnSubFinish2005405(arg1)
    print("05 finish")
end

function Quest20054:OnSubFailed2005405(arg1)
    print("05 fail")
end

function Quest20054:OnSubStart2005406(arg1)
    self:SetQuestVarWithInterval(arg1.QuestConfigId, 0, 1, 5)
    local questVar = self:GetQuestVar(arg1.QuestConfigId, 0)
    if questVar == 1 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 2005402)
            actor:FinishQuestID(true, 2005403)
            actor:FinishQuestID(true, 2005404)
            actor:FinishQuestID(true, 2005405)
            actor:FinishQuestID(true, 2005406)
            print("finish 2005402")
        end
    end

    if questVar == 2 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 2005403)
            actor:FinishQuestID(true, 2005402)
            actor:FinishQuestID(true, 2005404)
            actor:FinishQuestID(true, 2005405)
            actor:FinishQuestID(true, 2005406)
            print("finish 2005403")
        end
    end

    if questVar == 3 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 2005404)
            actor:FinishQuestID(true, 2005403)
            actor:FinishQuestID(true, 2005402)
            actor:FinishQuestID(true, 2005405)
            actor:FinishQuestID(true, 2005406)
            print("finish 2005404")
        end
    end

    if questVar == 4 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 2005405)
            actor:FinishQuestID(true, 2005403)
            actor:FinishQuestID(true, 2005404)
            actor:FinishQuestID(true, 2005402)
            actor:FinishQuestID(true, 2005406)
            print("finish 2005405")
        end
    end

    if questVar == 5 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 2005406)
            actor:FinishQuestID(true, 2005403)
            actor:FinishQuestID(true, 2005404)
            actor:FinishQuestID(true, 2005405)
            actor:FinishQuestID(true, 2005402)
            print("finish 2005406")
        end
    end

    print("06 start")
end

function Quest20054:OnSubFinish2005406(arg1)
    print("06 finish")
end

function Quest20054:OnSubFailed2005406(arg1)
    print("06 fail")
end

function Quest20054:OnSubStart2005407(arg1)
    print("07 start")
end

function Quest20054:OnSubFinish2005407(arg1)
    print("07 finish")
end

function Quest20054:OnSubFailed2005407(arg1)
    self:NotifyTo("Npc1441", DailyNpcManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1533", DailyNpcManager.NpcEventType.STARTDAILY, true)
    print("07 fail")
end

function Quest20054:OnSubStart2005408(arg1)
    print("08 start")
end

function Quest20054:OnSubFinish2005408(arg1)
    print("08 finish")
end

function Quest20054:OnSubFailed2005408(arg1)
    print("08 fail")
    self:NotifyTo("Npc1441", DailyNpcManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1533", DailyNpcManager.NpcEventType.STARTDAILY, true)
end

function Quest20054:OnSubStart2005409(arg1)
    print("09 start")
end

function Quest20054:OnSubFinish2005409(arg1)
    print("09 finish")
end

function Quest20054:OnSubFailed2005409(arg1)
    self:NotifyTo("Npc1441", DailyNpcManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1533", DailyNpcManager.NpcEventType.STARTDAILY, true)
    print("09 fail")
end

function Quest20054:OnSubStart2005410(arg1) end

function Quest20054:OnSubFinish2005410(arg1)
    print("10 finish")
end

function Quest20054:OnSubFailed2005410(arg1)
    self:NotifyTo("Npc1441", DailyNpcManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1533", DailyNpcManager.NpcEventType.STARTDAILY, true)
    print("10 fail")
end

function Quest20054:OnSubStart2005411(arg1)
    print("11 start")
end

function Quest20054:OnSubFinish2005411(arg1)
    print("11 finish")
end

function Quest20054:OnSubFailed2005411(arg1)
    self:NotifyTo("Npc1441", DailyNpcManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1533", DailyNpcManager.NpcEventType.STARTDAILY, true)
    print("11 fail")
end

function Quest20054:OnSubStart2005412(arg1)
    print("12 start")
end

function Quest20054:OnSubFinish2005412(arg1)
    self:SetQuestVar(arg1.QuestConfigId, 0, 0)
    print("12 finish")
end

function Quest20054:OnSubFailed2005412(arg1)
    self:NotifyTo("Npc1441", DailyNpcManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1533", DailyNpcManager.NpcEventType.STARTDAILY, true)
    print("12 fail")
end

function Quest20054:OnSubStart2005413(arg1)
    print("13 start")
end

function Quest20054:OnSubFinish2005413(arg1)
    self:SetQuestVar(arg1.QuestConfigId, 0, 0)
    print("13 finish")
end

function Quest20054:OnSubFailed2005413(arg1)
    self:NotifyTo("Npc1441", DailyNpcManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1533", DailyNpcManager.NpcEventType.STARTDAILY, true)
    print("13 fail")
end

function Quest20054:OnSubStart2005414(arg1)
    print("14 start")
end

function Quest20054:OnSubFinish2005414(arg1)
    self:SetQuestVar(arg1.QuestConfigId, 0, 0)
    print("14 finish")
end

function Quest20054:OnSubFailed2005414(arg1)
    self:NotifyTo("Npc1441", DailyNpcManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1533", DailyNpcManager.NpcEventType.STARTDAILY, true)
    print("14 fail")
end

function Quest20054:OnSubStart2005415(arg1)
    print("15 start")
end

function Quest20054:OnSubFinish2005415(arg1)
    self:SetQuestVar(arg1.QuestConfigId, 0, 0)
    print("15 finish")
end

function Quest20054:OnSubFailed2005415(arg1)
    self:NotifyTo("Npc1441", DailyNpcManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1533", DailyNpcManager.NpcEventType.STARTDAILY, true)
    print("15 fail")
end

function Quest20054:OnSubStart2005416(arg1)
    print("16 start")
end

function Quest20054:OnSubFinish2005416(arg1)
    self:SetQuestVar(arg1.QuestConfigId, 0, 0)
    print("16 finish")
end

function Quest20054:OnSubFailed2005416(arg1)
    self:NotifyTo("Npc1441", DailyNpcManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1533", DailyNpcManager.NpcEventType.STARTDAILY, true)
    print("16 fail")
end

function Quest20054:Start() end
function Quest20054:OnDestroy() end
return Quest20054
