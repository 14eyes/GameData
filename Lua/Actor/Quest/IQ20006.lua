require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20006 = class("Quest20006", QuestActorProxy)
Quest20006.defaultAlias = "Quest20006"
local n = 180
local v = 1
local clientData
local subIDs
local npcData

function Quest20006:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    npcData = clientData.NPCData
end

function Quest20006:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2000601"] = self.OnSubStart2000601
    self.subStartHandlers["2000602"] = self.OnSubStart2000602
    self.subStartHandlers["2000603"] = self.OnSubStart2000603
    self.subStartHandlers["2000604"] = self.OnSubStart2000604
    self.subStartHandlers["2000605"] = self.OnSubStart2000605
    self.subStartHandlers["2000606"] = self.OnSubStart2000606
    self.subStartHandlers["2000607"] = self.OnSubStart2000607
    self.subStartHandlers["2000608"] = self.OnSubStart2000608
    self.subStartHandlers["2000609"] = self.OnSubStart2000609
    self.subStartHandlers["2000610"] = self.OnSubStart2000610
end

function Quest20006:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2000601"] = self.OnSubFinish2000601
    self.subFinishHandlers["2000602"] = self.OnSubFinish2000602
    self.subFinishHandlers["2000603"] = self.OnSubFinish2000603
    self.subFinishHandlers["2000604"] = self.OnSubFinish2000604
    self.subFinishHandlers["2000605"] = self.OnSubFinish2000605
    self.subFinishHandlers["2000606"] = self.OnSubFinish2000606
    self.subFinishHandlers["2000607"] = self.OnSubFinish2000607
    self.subFinishHandlers["2000608"] = self.OnSubFinish2000608
    self.subFinishHandlers["2000609"] = self.OnSubFinish2000609
    self.subFinishHandlers["2000610"] = self.OnSubFinish2000610
end

function Quest20006:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2000601"] = self.OnSubFailed2000601
    self.subFailedHandlers["2000602"] = self.OnSubFailed2000602
    self.subFailedHandlers["2000603"] = self.OnSubFailed2000603
    self.subFailedHandlers["2000604"] = self.OnSubFailed2000604
    self.subFailedHandlers["2000605"] = self.OnSubFailed2000605
    self.subFailedHandlers["2000606"] = self.OnSubFailed2000606
    self.subFailedHandlers["2000607"] = self.OnSubFailed2000607
    self.subFailedHandlers["2000608"] = self.OnSubFailed2000608
    self.subFailedHandlers["2000609"] = self.OnSubFailed2000609
    self.subFailedHandlers["2000610"] = self.OnSubFailed2000610
end

function Quest20006:StartCount()
    print("StartCount")
    self:CountDownUIStart(n, 20, 3)
    self:CallDelay(n + 4, self.CountDown)
end

function Quest20006:CountDown()
    print("CountDown Finished")
    if v == 1 then
        self:ShowPaimonDoWay1()
        v = 0
    end

    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        print("deliver fail")
        actor:FinishQuestID(true, 2000603)
    end
end

function Quest20006:ShowPaimonDoWay1()
    local paimonData = self.clientData.PaimonData
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = 1.5
    print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
    avatarPos.x = avatarPos.x + avatarForward.x * n + 0.7
    avatarPos.z = avatarPos.z + avatarForward.z * n - 0.7
    local v = avatarForward
    v.x = v.x * -1
    v.z = v.z * -1
    self:CreateQuestNpcByIdWithPos(2000604, paimonData.PaimonID, 1, avatarPos, M.Dir2Euler(v))
    globalActor:EnablePlayerInput(false)
    local questNpcActor = self:GetQuestNpcActor(clientData.PaimonData.Paimon)
    questNpcActor:AirModeOn()
    questNpcActor:AddPriorityInter(InterTimingType.BTN, clientData.InterData.NoReplyInter1)
    self:CallDelay(1, function(arg1)
        arg1:RequestInteraction(clientData.PaimonData.Paimon)
    end)

    self:CallDelay(3, self.PaimonVanish)
end

function Quest20006:ShowPaimonDoWay2()
    local paimonData = self.clientData.PaimonData
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = 1.5
    print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
    avatarPos.x = avatarPos.x + avatarForward.x * n + 0.7
    avatarPos.z = avatarPos.z + avatarForward.z * n - 0.7
    local v = avatarForward
    v.x = v.x * -1
    v.z = v.z * -1
    self:CreateQuestNpcByIdWithPos(2000604, paimonData.PaimonID, 1, avatarPos, M.Dir2Euler(v))
    globalActor:EnablePlayerInput(false)
    local questNpcActor = self:GetQuestNpcActor(clientData.PaimonData.Paimon, 20006)
    questNpcActor:AirModeOn()
    questNpcActor:AddPriorityInter(InterTimingType.BTN, clientData.InterData.NoReplyInter2)
    self:CallDelay(1, function(arg1)
        arg1:RequestInteraction(clientData.PaimonData.Paimon)
    end)

    self:CallDelay(3, self.PaimonVanish)
end

function Quest20006:PaimonVanish()
    local questNpcActor = self:GetQuestNpcActor(clientData.PaimonData.Paimon)
    questNpcActor:ClearPriorityInter(InterTimingType.BTN)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end

    globalActor:EnablePlayerInput(true)
end

function Quest20006:OnSubStart2000601(arg1)
    print("01 start")
end

function Quest20006:OnSubFinish2000601(arg1)
    print("01 finish")
end

function Quest20006:OnSubFailed2000601(arg1) end

function Quest20006:OnSubStart2000602(arg1)
    print("02 start")
    v = 1
end

function Quest20006:OnSubFinish2000602(arg1)
    self:CreateQuestNpc(arg1, npcData.NpcID, 1)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:Standby()
    questNpcActor:DoFreeStyle(4190, true)
    print("02 finish")
end

function Quest20006:DoFreeStyle(arg1)
    print("delay start dofreestyle")
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:Standby()
    questNpcActor:DoFreeStyle(4190, true)
end

function Quest20006:OnSubFailed2000602(arg1) end

function Quest20006:OnSubStart2000603(arg1)
    print("03 start")
    self:ActionSafeCall(self.StartCount)
end

function Quest20006:OnSubFinish2000603(arg1)
    print("03 finished")
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest20006:OnSubFailed2000603(arg1)
    print("03 fail \239\188\12903 fail \239\188\12903 fail \239\188\12903 fail \239\188\12903 fail \239\188\129")
    self:GetQuestNpcActor(npcData.Npc):DoFreeStateTrigger()
end

function Quest20006:OnSubStart2000604(arg1)
    print("04 start")
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:Standby()
    questNpcActor:DoFreeStyle(1300, true)
end

function Quest20006:OnSubFinish2000604(arg1)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor.Standby(questNpcActor, true)
    questNpcActor.Standby(questNpcActor)
    questNpcActor.WalkToRouteTask(questNpcActor, clientData.RoutePoints1, function(arg1, arg2)
        arg1:DestroyWithDither(false, 1)
    end, function(arg1, arg2)
        questNpcActor:Standby(true)
    end)

    print("04 finish")
end

function Quest20006:OnSubFailed2000604(arg1)
    print("04 failed")
end

function Quest20006:OnSubStart2000605(arg1)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(true, 2000604)
    end

    print("05 start")
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
    if v == 1 then
        self:ShowPaimonDoWay2()
    end

    local actor2 = actorMgr:GetActor(clientData.ActorAlias)
    if actor2 ~= nil then
        print("20005 fail")
        actor2:FinishQuestID(true, 2000605)
    end
end

function Quest20006:OnSubFinish2000605(arg1)
    print("05 finish")
end

function Quest20006:OnSubFailed2000605(arg1)
    print("05 failed")
end

function Quest20006:OnSubStart2000606(arg1)
    print("06 start")
end

function Quest20006:OnSubFinish2000606(arg1)
    print("06 finish")
end

function Quest20006:OnSubFailed2000606(arg1)
    print("06 failed")
end

function Quest20006:OnSubStart2000607(arg1)
    print("07 start")
    self:TriggerNpcSpeechBubble(npcData.NpcID, 200080501)
end

function Quest20006:OnSubFinish2000607(arg1)
    print("07 finish")
    self:GetQuestNpcActor(npcData.Npc):DoFreeStateTrigger()
    self:ClearNpcSpeechBubble(npcData.NpcID)
end

function Quest20006:OnSubFailed2000607(arg1)
    print("07 failed")
end

function Quest20006:OnSubStart2000608(arg1)
    print("08 start")
end

function Quest20006:OnSubFinish2000608(arg1)
    print("08 finish")
end

function Quest20006:OnSubFailed2000608(arg1)
    print("08 failed")
end

function Quest20006:OnSubStart2000609(arg1)
    print("09 start")
end

function Quest20006:OnSubFinish2000609(arg1)
    print("09 finish")
end

function Quest20006:OnSubFailed2000609(arg1)
    print("09 failed")
end

function Quest20006:OnSubStart2000610(arg1)
    print("10 start")
end

function Quest20006:OnSubFinish2000610(arg1)
    print("10 finish")
end

function Quest20006:OnSubFailed2000610(arg1)
    print("10 failed")
end

function Quest20006:OnMainFinished(arg1)
    print("main finished " .. tostring(arg1.QuestMainId))
end

function Quest20006:OnMainFailed(arg1)
    print("main failed " .. tostring(arg1.QuestMainId))
end

function Quest20006:OnMainCanceled(arg1)
    print("main canceled " .. tostring(arg1.QuestMainId))
    self:DestroyQuestNpcActor(npcData.Npc, 3)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest20006:Start() end
function Quest20006:OnDestroy() end
return Quest20006
