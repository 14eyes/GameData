require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest462 = class("Quest462", QuestActorProxy)
Quest462.defaultAlias = "Quest462"
local Q462ClientConfig = require("Quest/Client/Q462ClientConfig")

local paimonData = Q462ClientConfig.PaimonData
local kaeyaData = Q462ClientConfig.KaeyaData
local treasureData = Q462ClientConfig.TreasureData
local npcData = Q462ClientConfig.NPCData

function Quest462:PaimonVanish()
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    questNpcActor:AirModeOff()
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest462:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["46201"] = self.OnSubStart46201
    self.subStartHandlers["46202"] = self.OnSubStart46202
    self.subStartHandlers["46203"] = self.OnSubStart46203
    self.subStartHandlers["46204"] = self.OnSubStart46204
    self.subStartHandlers["46205"] = self.OnSubStart46205
    self.subStartHandlers["46206"] = self.OnSubStart46206
    self.subStartHandlers["46207"] = self.OnSubStart46207
    self.subStartHandlers["46208"] = self.OnSubStart46208
    self.subStartHandlers["46209"] = self.OnSubStart46209
    self.subStartHandlers["46210"] = self.OnSubStart46210
end

function Quest462:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["46201"] = self.OnSubFinish46201
    self.subFinishHandlers["46202"] = self.OnSubFinish46202
    self.subFinishHandlers["46203"] = self.OnSubFinish46203
    self.subFinishHandlers["46204"] = self.OnSubFinish46204
    self.subFinishHandlers["46205"] = self.OnSubFinish46205
    self.subFinishHandlers["46206"] = self.OnSubFinish46206
    self.subFinishHandlers["46207"] = self.OnSubFinish46207
    self.subFinishHandlers["46208"] = self.OnSubFinish46208
    self.subFinishHandlers["46209"] = self.OnSubFinish46209
    self.subFinishHandlers["46210"] = self.OnSubFinish46210
end

function Quest462:OnSubStart46201(arg1)
    print("46201 Start : Creat Kaeya")
    self:CreateQuestNpc(arg1, npcData.NpcID)
    self:NotifyTo("Npc1525", DailyNpcManager.NpcEventType.HIDESELF, true)
end

function Quest462:OnSubStart46202(arg1)
    print("46202 Start : ")
    self:CreateQuestNpc(arg1, npcData.NpcID)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor.EnableInteraction(questNpcActor, false)
    questNpcActor.RunToRouteTask(questNpcActor, Q462ClientConfig.RoutePoints, function(arg1, arg2)
        arg1:ClearFollowTask()
        arg1:EnableInteraction(true)
        arg1:Standby()
        questNpcActor:ClearNpcSpeechBubble(npcData.Npc)
        arg1:DoFreeStyle(1070)
    end)

    self:CallDelay(0, self.SceneLookCamera)
    self:CallDelay(2, self.PaimonNarrator)
    self:CallDelay(4, self.PlayerInputOn)
end

function Quest462:SceneLookCamera(arg1)
    print("PaimonNarrator Start : ")
    self:EnablePlayerInput(false)
    self:EnterSceneLookCamera(npcData.cameraPos, 1, 3, true)
end

function Quest462:PaimonNarrator(arg1)
    print("PaimonNarrator Start : ")
    self:NarratorOnlyTaskLegacy(Q462ClientConfig.NarratorData.Story4)
end

function Quest462:PlayerInputOn()
    print("PaimonNarrator Start : ")
    self:EnablePlayerInput(true)
end

function Quest462:OnSubStart46203(arg1)
    print("46203 Start : ")
    self:NotifyTo("Npc1525", DailyNpcManager.NpcEventType.HIDESELF, true)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:Standby(true)
    questNpcActor:Standby()
    questNpcActor:EnableInteraction(true)
    questNpcActor:TurnTo(M.Euler2DirXZ(npcData.NPCToDir))
end

function Quest462:OnSubFinish46203(arg1)
    print("46203 Finish : ")
    self:PaimonVanish()
    self:NotifyTo("Npc1525", DailyNpcManager.NpcEventType.STARTDAILY, true)
    globalActor:StartGuide("GuideKaeyaClueiOS")
end

function Quest462:OnSubStart46204(arg1)
    print("46204 Start : ")
    self:CreateQuestNpc(arg1, kaeyaData.KaeyaID)
end

function Quest462:StartTalk46204()
    print("46302 Start : ")
    self:CreateQuestNpcById(46204, paimonData.ID)
    self:CallDelay(0.2, function(arg1)
        arg1:RequestInteraction(paimonData.Alias)
    end)
end

function Quest462:OnSubFinish46204(arg1)
    print("46204 Finish : ")
end

function Quest462:InvokeOnInteraction(arg1)
    print("462 Invoke : ")
    if arg1 == 0 then
        print("Invoke 0")
        self:ShowQuestPictureDialog(180)
    elseif arg1 == 1 then
        self:ShowQuestPictureDialog(181)
    elseif arg1 == 2 then
        self:ShowQuestPictureDialog(182)
    end
end

function Quest462:OnSubStart46206(arg1)
    print("46206 Start : ")
    self:CreateQuestNpc(arg1, kaeyaData.KaeyaID)
end

function Quest462:OnSubFinish46206(arg1)
    print("46206 Finish : ")
    self:DestroyQuestNpcActor(kaeyaData.Kaeya, 1004)
    self:DestroyQuestNpcActor(npcData.Npc, 3)
end

function Quest462:OnSubFinish46205(arg1)
    print("46205 Finish : ")
    self:PaimonVanish()
end

function Quest462:OnSubFinish46207(arg1)
    print("46207 Finish : ")
    self:PaimonVanish()
end

function Quest462:OnSubStart46210(arg1)
    print("46210 Start : ")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.StartTalk46204)
end

function Quest462:OnSubFinish46210(arg1)
    print("46210 Finish : ")
    self:ActionSafeCall(function(arg1)
        arg1:PaimonVanish()
    end)
end

function Quest462:Start() end
function Quest462:OnDestroy() end
return Quest462
