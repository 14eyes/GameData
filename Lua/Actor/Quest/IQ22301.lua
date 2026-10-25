require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22301 = class("Quest22301", QuestActorProxy)
Quest22301.defaultAlias = "Quest22301"
local clientData
local taleType
local taleWant
local npcData01
local npcData02
local npcData03
local npcData04

function Quest22301:OnDataLoaded()
    clientData = self.clientData
    taleType = clientData.TaleType
    taleWant = clientData.TaleWant
    npcData01 = clientData.NPCData01
    npcData02 = clientData.NPCData02
    npcData03 = clientData.NPCData03
    npcData04 = clientData.NPCData04
end

function Quest22301:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2230101"] = self.OnSubStart2230101
    self.subStartHandlers["2230191"] = self.OnSubStart2230191
    self.subStartHandlers["2230192"] = self.OnSubStart2230192
    self.subStartHandlers["2230193"] = self.OnSubStart2230193
    self.subStartHandlers["2230102"] = self.OnSubStart2230102
    self.subStartHandlers["2230111"] = self.OnSubStart2230111
    self.subStartHandlers["2230112"] = self.OnSubStart2230112
    self.subStartHandlers["2230113"] = self.OnSubStart2230113
    self.subStartHandlers["2230121"] = self.OnSubStart2230121
    self.subStartHandlers["2230122"] = self.OnSubStart2230122
    self.subStartHandlers["2230123"] = self.OnSubStart2230123
    self.subStartHandlers["2230161"] = self.OnSubStart2230161
    self.subStartHandlers["2230162"] = self.OnSubStart2230162
    self.subStartHandlers["2230163"] = self.OnSubStart2230163
    self.subStartHandlers["2230151"] = self.OnSubStart2230151
    self.subStartHandlers["2230152"] = self.OnSubStart2230152
    self.subStartHandlers["2230154"] = self.OnSubStart2230154
    self.subStartHandlers["2230103"] = self.OnSubStart2230103
    self.subStartHandlers["2230104"] = self.OnSubStart2230104
    self.subStartHandlers["2230105"] = self.OnSubStart2230105
    self.subStartHandlers["2230106"] = self.OnSubStart2230106
    self.subStartHandlers["2230107"] = self.OnSubStart2230107
    self.subStartHandlers["2230108"] = self.OnSubStart2230108
    self.subStartHandlers["2230109"] = self.OnSubStart2230109
end

function Quest22301:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2230101"] = self.OnSubFinish2230101
    self.subFinishHandlers["2230191"] = self.OnSubFinish2230191
    self.subFinishHandlers["2230192"] = self.OnSubFinish2230192
    self.subFinishHandlers["2230193"] = self.OnSubFinish2230193
    self.subFinishHandlers["2230102"] = self.OnSubFinish2230102
    self.subFinishHandlers["2230111"] = self.OnSubFinish2230111
    self.subFinishHandlers["2230112"] = self.OnSubFinish2230112
    self.subFinishHandlers["2230113"] = self.OnSubFinish2230113
    self.subFinishHandlers["2230121"] = self.OnSubFinish2230121
    self.subFinishHandlers["2230122"] = self.OnSubFinish2230122
    self.subFinishHandlers["2230123"] = self.OnSubFinish2230123
    self.subFinishHandlers["2230151"] = self.OnSubFinish2230151
    self.subFinishHandlers["2230152"] = self.OnSubFinish2230152
    self.subFinishHandlers["2230154"] = self.OnSubFinish2230154
    self.subFinishHandlers["2230161"] = self.OnSubFinish2230161
    self.subFinishHandlers["2230162"] = self.OnSubFinish2230162
    self.subFinishHandlers["2230163"] = self.OnSubFinish2230163
    self.subFinishHandlers["2230103"] = self.OnSubFinish2230103
    self.subFinishHandlers["2230104"] = self.OnSubFinish2230104
    self.subFinishHandlers["2230105"] = self.OnSubFinish2230105
    self.subFinishHandlers["2230106"] = self.OnSubFinish2230106
    self.subFinishHandlers["2230107"] = self.OnSubFinish2230107
    self.subFinishHandlers["2230108"] = self.OnSubFinish2230108
    self.subFinishHandlers["2230109"] = self.OnSubFinish2230109
end

function Quest22301:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2230101"] = self.OnSubFailed2230101
    self.subFailedHandlers["2230191"] = self.OnSubFailed2230191
    self.subFailedHandlers["2230192"] = self.OnSubFailed2230192
    self.subFailedHandlers["2230193"] = self.OnSubFailed2230193
    self.subFailedHandlers["2230102"] = self.OnSubFailed2230102
    self.subFailedHandlers["2230111"] = self.OnSubFailed2230111
    self.subFailedHandlers["2230112"] = self.OnSubFailed2230112
    self.subFailedHandlers["2230113"] = self.OnSubFailed2230113
    self.subFailedHandlers["2230121"] = self.OnSubFailed2230121
    self.subFailedHandlers["2230122"] = self.OnSubFailed2230122
    self.subFailedHandlers["2230123"] = self.OnSubFailed2230123
    self.subFailedHandlers["2230151"] = self.OnSubFailed2230151
    self.subFailedHandlers["2230152"] = self.OnSubFailed2230152
    self.subFailedHandlers["2230154"] = self.OnSubFailed2230154
    self.subFailedHandlers["2230161"] = self.OnSubFailed2230161
    self.subFailedHandlers["2230162"] = self.OnSubFailed2230162
    self.subFailedHandlers["2230163"] = self.OnSubFailed2230163
    self.subFailedHandlers["2230103"] = self.OnSubFailed2230103
    self.subFailedHandlers["2230104"] = self.OnSubFailed2230104
    self.subFailedHandlers["2230105"] = self.OnSubFailed2230105
    self.subFailedHandlers["2230106"] = self.OnSubFailed2230106
    self.subFailedHandlers["2230107"] = self.OnSubFailed2230107
    self.subFailedHandlers["2230108"] = self.OnSubFailed2230108
    self.subFailedHandlers["2230109"] = self.OnSubFailed2230109
end

function Quest22301:OnSubStart2230101(arg1)
    self:CreateQuestNpc(arg1, npcData04.NpcID)
    self:NotifyTo("Npc2010", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2062", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2011", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1626", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest22301:OnSubFinish2230101(arg1) end

function Quest22301:OnSubStart2230102(arg1)
    self:NotifyTo("Npc2010", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2062", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2011", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1626", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2026", NpcUtil.NpcEventType.HIDESELF, true)
    self:CreateQuestNpc(arg1, npcData01.NpcID)
    self:CreateQuestNpc(arg1, npcData02.NpcID)
    self:CreateQuestNpc(arg1, npcData03.NpcID)
end

function Quest22301:OnSubFinish2230102(arg1) end

function Quest22301:OnSubStart2230103(arg1)
    self:NotifyTo("Npc2010", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2062", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2011", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1626", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2026", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest22301:OnSubFinish2230103(arg1) end

function Quest22301:OnSubStart2230104(arg1)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    local givingRecord = 0
    if actor ~= nil then
        givingRecord = actor:GetGivingRecord(2230103)
    end

    self:SetQuestVar(arg1.QuestConfigId, 0, givingRecord)
    local n = 1
    local str = tostring(self:GetQuestVar(arg1.QuestConfigId, 2))
    if taleWant[str] == givingRecord then
        n = n + 1
    end

    local v = tostring(self:GetQuestVar(arg1.QuestConfigId, 3))
    if taleWant[v] == givingRecord then
        n = n + 1
    end

    self:SetQuestVar(arg1.QuestConfigId, 1, n)
    self:NotifyTo("Npc2010", NpcUtil.NpcEventType.HIDESELF, true)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:NotifyTo("Npc2026", NpcUtil.NpcEventType.HIDESELF, true)
        arg1_2:NotifyTo("Npc1626", NpcUtil.NpcEventType.HIDESELF, true)
        arg1_2:NotifyTo("Npc2011", NpcUtil.NpcEventType.HIDESELF, true)
        arg1_2:CreateQuestNpc(arg1, npcData01.NpcID)
        arg1_2:CreateQuestNpc(arg1, npcData02.NpcID)
        arg1_2:CreateQuestNpc(arg1, npcData03.NpcID)
        arg1_2:CreateQuestNpcWithTrigger("Q2230104N201001Trigger", 2230104, 201001, 4, 8)
    end)

    print("OnSubStart2230104 create speech bubble")
    self:CreateSpeechBubbleTask(2026, 223019901, 5, true, 5, 10)
    self:CreateSpeechBubbleTask(162601, 223019902, 5, true, 5, 10)
    self:CreateSpeechBubbleTask(201101, 223019903, 5, true, 5, 10)
end

function Quest22301:OnSubFinish2230104(arg1)
    print("OnSubFinish2230104 create speech bubble")
    self:ClearSpeechBubbleTask()
    self:CreateSpeechBubbleTask(2026, 223019904, 5, true, 5, 10)
    self:CreateSpeechBubbleTask(162601, 223019905, 5, true, 5, 10)
    self:CreateSpeechBubbleTask(201101, 223019906, 5, true, 5, 10)
end

function Quest22301:OnSubFailed2230104(arg1) end
function Quest22301:OnSubStart2230105(arg1) end
function Quest22301:OnSubFinish2230105(arg1) end
function Quest22301:OnSubFailed2230105(arg1) end
function Quest22301:OnSubStart2230106(arg1) end
function Quest22301:OnSubFinish2230106(arg1) end
function Quest22301:OnSubFailed2230106(arg1) end
function Quest22301:OnSubStart2230107(arg1) end
function Quest22301:OnSubFinish2230107(arg1) end
function Quest22301:OnSubFailed2230107(arg1) end

function Quest22301:OnSubStart2230108(arg1)
    self:NotifyTo("Npc2010", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2026", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1626", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2011", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest22301:OnSubFinish2230108(arg1)
    self:ClearSpeechBubbleTask()
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        print("startdaily")
        arg1:GetQuestNpcActor(npcData01.Npc, 22301):Destroy(false)
        arg1:GetQuestNpcActor(npcData02.Npc, 22301):Destroy(false)
        arg1:GetQuestNpcActor(npcData03.Npc, 22301):Destroy(false)
        arg1:GetQuestNpcActor(npcData04.Npc, 22301):Destroy(false)
        arg1:LightNotifyTo("Npc2026", NpcUtil.NpcEventType.STARTDAILY, true)
        arg1:LightNotifyTo("Npc1626", NpcUtil.NpcEventType.STARTDAILY, true)
        arg1:LightNotifyTo("Npc2011", NpcUtil.NpcEventType.STARTDAILY, true)
        arg1:LightNotifyTo("Npc2010", NpcUtil.NpcEventType.STARTDAILY, true)
        arg1:LightNotifyTo("Npc2062", NpcUtil.NpcEventType.STARTDAILY, true)
    end)
end

function Quest22301:OnSubFailed2230108(arg1) end
function Quest22301:OnSubStart2230111(arg1) end
function Quest22301:OnSubFinish2230111(arg1) end
function Quest22301:OnSubFailed2230111(arg1) end
function Quest22301:OnSubStart2230112(arg1) end
function Quest22301:OnSubFinish2230112(arg1) end
function Quest22301:OnSubFailed2230112(arg1) end
function Quest22301:OnSubStart2230113(arg1) end
function Quest22301:OnSubFinish2230113(arg1) end
function Quest22301:OnSubFailed2230113(arg1) end
function Quest22301:OnSubStart2230121(arg1) end
function Quest22301:OnSubFinish2230121(arg1) end
function Quest22301:OnSubFailed2230121(arg1) end
function Quest22301:OnSubStart2230122(arg1) end
function Quest22301:OnSubFinish2230122(arg1) end
function Quest22301:OnSubFailed2230122(arg1) end
function Quest22301:OnSubStart2230123(arg1) end
function Quest22301:OnSubFinish2230123(arg1) end
function Quest22301:OnSubFailed2230123(arg1) end
function Quest22301:OnSubStart2230161(arg1) end
function Quest22301:OnSubFinish2230161(arg1) end
function Quest22301:OnSubFailed2230161(arg1) end
function Quest22301:OnSubStart2230162(arg1) end
function Quest22301:OnSubFinish2230162(arg1) end
function Quest22301:OnSubFailed2230162(arg1) end
function Quest22301:OnSubStart2230163(arg1) end
function Quest22301:OnSubFinish2230163(arg1) end
function Quest22301:OnSubFailed2230163(arg1) end

function Quest22301:OnSubStart2230151(arg1)
    if self:GetQuestGlobalVar(40001) & 1 ~= 1 then
        local actor = actorMgr:GetActor(self.clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuest(false, nil)
        end
    end
end

function Quest22301:OnSubFinish2230151(arg1) end
function Quest22301:OnSubFailed2230151(arg1) end

function Quest22301:OnSubStart2230152(arg1)
    if self:GetQuestGlobalVar(40001) & 2 ~= 2 then
        local actor = actorMgr:GetActor(self.clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuest(false, nil)
        end
    end
end

function Quest22301:OnSubFinish2230152(arg1) end
function Quest22301:OnSubFailed2230152(arg1) end

function Quest22301:OnSubStart2230154(arg1)
    if self:GetQuestGlobalVar(40001) & 4 ~= 4 then
        local actor = actorMgr:GetActor(self.clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuest(false, nil)
        end
    end
end

function Quest22301:OnSubFinish2230154(arg1) end
function Quest22301:OnSubFailed2230154(arg1) end
function Quest22301:OnSubStart2230191(arg1) end

function Quest22301:OnSubFinish2230191(arg1)
    self:CreateQuestNpc(arg1, npcData02.NpcID)
end

function Quest22301:OnSubFailed2230191(arg1) end

function Quest22301:OnSubStart2230192(arg1)
    self:CreateQuestNpc(arg1, npcData03.NpcID)
end

function Quest22301:OnSubFinish2230192(arg1) end
function Quest22301:OnSubFailed2230192(arg1) end
function Quest22301:OnSubStart2230193(arg1) end
function Quest22301:OnSubFinish2230193(arg1) end
function Quest22301:OnSubFailed2230193(arg1) end

function Quest22301:InvokeOnInteraction(arg1)
    if arg1 == 1 then
    end
end

function Quest22301:OnMainFinished(arg1)
    print("main finished " .. tostring(arg1.QuestMainId))
end

function Quest22301:OnMainFailed(arg1) end

function Quest22301:OnMainCanceled(arg1)
    print("main canceled " .. tostring(arg1.QuestMainId))
    self:GetQuestNpcActor(npcData01.Npc, 22301):Destroy(false)
    self:GetQuestNpcActor(npcData02.Npc, 22301):Destroy(false)
    self:GetQuestNpcActor(npcData03.Npc, 22301):Destroy(false)
    self:GetQuestNpcActor(npcData04.Npc, 22301):Destroy(false)
    self:LightNotifyTo("Npc2026", NpcUtil.NpcEventType.STARTDAILY, true)
    self:LightNotifyTo("Npc1626", NpcUtil.NpcEventType.STARTDAILY, true)
    self:LightNotifyTo("Npc2011", NpcUtil.NpcEventType.STARTDAILY, true)
    self:LightNotifyTo("Npc2010", NpcUtil.NpcEventType.STARTDAILY, true)
    self:LightNotifyTo("Npc2062", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest22301:Start() end
function Quest22301:OnDestroy() end
return Quest22301
