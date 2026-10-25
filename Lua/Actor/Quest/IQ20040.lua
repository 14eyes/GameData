require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20040 = class("Quest20040", QuestActorProxy)
Quest20040.defaultAlias = "Quest20040"
local clientData
local npcData
local n

function Quest20040:OnDataLoaded()
    clientData = self.clientData
    n = 20040
    npcData = clientData.NPCData
end

function Quest20040:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2004001"] = self.OnSubStart2004001
    self.subStartHandlers["2004002"] = self.OnSubStart2004002
    self.subStartHandlers["2004003"] = self.OnSubStart2004003
    self.subStartHandlers["2004004"] = self.OnSubStart2004004
    self.subStartHandlers["2004007"] = self.OnSubStart2004007
end

function Quest20040:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2004001"] = self.OnSubFinish2004001
    self.subFinishHandlers["2004002"] = self.OnSubFinish2004002
    self.subFinishHandlers["2004003"] = self.OnSubFinish2004003
    self.subFinishHandlers["2004004"] = self.OnSubFinish2004004
    self.subFinishHandlers["2004007"] = self.OnSubFinish2004007
end

function Quest20040:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2004001"] = self.OnSubFailed2004001
    self.subFailedHandlers["2004002"] = self.OnSubFailed2004002
    self.subFailedHandlers["2004003"] = self.OnSubFailed2004003
    self.subFailedHandlers["2004004"] = self.OnSubFailed2004004
    self.subFailedHandlers["2004007"] = self.OnSubFailed2004007
end

function Quest20040:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        actorMgr:GetActor("20040"):GetQuestNpcActor(npcData.Npc):DoFreeStateTrigger()
        self.NpcWalkToRouteTaskEasy(self, self.GetQuestNpcActor(self, npcData.Npc), clientData.RoutePoints3, function(arg1, arg2)
            print("npc get end")
        end, function(arg1, arg2)
            self:GetQuestNpcActor(npcData.Npc):Standby(true)
        end)

        self.ShowPaimonDoWay(self)
    end

    if arg1 == 2 then
    end

    if arg1 == 3 then
        actorMgr:GetActor("20040"):PaimonVanish()
    end
end

function Quest20040:ShowPaimonDoWay()
    local actor = actorMgr:GetActor("20040")
    local paimonData = actor.clientData.PaimonData
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = 1.5
    print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
    avatarPos.x = avatarPos.x + avatarForward.x * n + 0.7
    avatarPos.z = avatarPos.z + avatarForward.z * n - 0.7
    local v = avatarForward
    v.x = v.x * -1
    v.z = v.z * -1
    actor:CreateQuestNpcByIdWithPos(2004001, paimonData.PaimonID, 2, avatarPos, M.Dir2Euler(v))
    actor:GetQuestNpcActor(paimonData.Paimon):AirModeOn()
end

function Quest20040:PaimonVanish()
    local paimonData = self.clientData.PaimonData
    local questNpcActor = self:GetQuestNpcActor(paimonData.Paimon)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest20040:OnSubStart2004001(arg1)
    self:CreateQuestNpc(arg1, npcData.NpcID)
    self:GetQuestNpcActor(npcData.Npc):Standby()
    self:NotifyTo("Npc1581", NpcUtil.NpcEventType.HIDESELF, true)
    print("01 start")
end

function Quest20040:DoFreeStyle(arg1)
    print("delay start dofreestyle")
end

function Quest20040:OnSubFinish2004001(arg1)
    print("01 finish")
end

function Quest20040:OnSubFailed2004001(arg1)
    self:NotifyTo("Npc1581", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20040:OnSubStart2004002(arg1)
    print("02 start")
    self:NotifyTo("Npc1581", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20040:OnSubFinish2004002(arg1)
    print("02 finish")
end

function Quest20040:OnSubFailed2004002(arg1)
    self:NotifyTo("Npc1581", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20040:OnSubStart2004003(arg1)
    print("03 start")
    self:NotifyTo("Npc1581", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20040:OnSubFinish2004003(arg1)
    print("03 finish")
end

function Quest20040:OnSubFailed2004003(arg1)
    print("03 fail")
    self:NotifyTo("Npc1581", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20040:OnSubStart2004004(arg1)
    self.NotifyTo(self, "Npc1581", NpcUtil.NpcEventType.HIDESELF, true)
    self.GetQuestNpcActor(self, npcData.Npc):DoFreeStateTrigger()
    self.NpcWalkToRouteTaskEasy(self, self.GetQuestNpcActor(self, npcData.Npc), clientData.RoutePoints1, function(arg1, arg2)
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 2004004)
            print("finish 2004004")
        end

        self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
            arg1:CallDelay(0.5, function(arg1)
                local questNpcActor = arg1:GetQuestNpcActor(npcData.Npc)
                questNpcActor:SetPos(sceneData:GetDummyPoint(3, "Event_20600_07").pos)
                questNpcActor:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Event_20600_07").rot))
            end)
        end, function(arg1)
            arg1:GetQuestNpcActor(npcData.Npc):Standby()
        end)
    end)

    print("04 start")
end

function Quest20040:OnSubFinish2004004(arg1)
    print("04 finish")
end

function Quest20040:OnSubFailed2004004(arg1)
    print("04 fail")
    self:NotifyTo("Npc1581", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20040:OnSubStart2004007(arg1)
    print("07 start")
    self:NotifyTo("Npc1581", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20040:OnSubFinish2004007(arg1)
    local questNpcActor = self:GetQuestNpcActor(npcData.Npc)
    questNpcActor.DoFreeStateTrigger(questNpcActor)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:CallDelay(0.2, function(arg1)
            questNpcActor:DestroyWithDither(false, 1)
            arg1:NotifyTo("Npc1581", NpcUtil.NpcEventType.STARTDAILY, true)
        end)
    end)

    print("07 finish")
end

function Quest20040:OnSubFailed2004007(arg1)
    print("07 fail")
    self:NotifyTo("Npc1581", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20040:Start() end
function Quest20040:OnDestroy() end
function Quest20040:OnMainFinished(arg1) end
function Quest20040:OnMainFailed(arg1) end

function Quest20040:OnMainCanceled(arg1)
    print("MainQuest20040 Canceled")
    self:NotifyTo("Npc1581", NpcUtil.NpcEventType.STARTDAILY, true)
    self:GetQuestNpcActor(npcData.Npc):DoFreeStateTrigger()
    self:SafeDestroyQuestNpc(npcData.Npc, 3)
end

return Quest20040
