require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20037 = class("Quest20037", QuestActorProxy)
Quest20037.defaultAlias = "Quest20037"

function Quest20037:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2003701"] = self.OnSubStart2003701
    self.subStartHandlers["2003702"] = self.OnSubStart2003702
    self.subStartHandlers["2003703"] = self.OnSubStart2003703
    self.subStartHandlers["2003704"] = self.OnSubStart2003704
    self.subStartHandlers["2003705"] = self.OnSubStart2003705
    self.subStartHandlers["2003706"] = self.OnSubStart2003706
    self.subStartHandlers["2003707"] = self.OnSubStart2003707
end

function Quest20037:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2003701"] = self.OnSubFinish2003701
    self.subFinishHandlers["2003702"] = self.OnSubFinish2003702
    self.subFinishHandlers["2003703"] = self.OnSubFinish2003703
    self.subFinishHandlers["2003704"] = self.OnSubFinish2003704
    self.subFinishHandlers["2003705"] = self.OnSubFinish2003705
    self.subFinishHandlers["2003706"] = self.OnSubFinish2003706
    self.subFinishHandlers["2003707"] = self.OnSubFinish2003707
end

function Quest20037:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2003701"] = self.OnSubFailed2003701
    self.subFailedHandlers["2003702"] = self.OnSubFailed2003702
    self.subFailedHandlers["2003703"] = self.OnSubFailed2003703
    self.subFailedHandlers["2003704"] = self.OnSubFailed2003704
    self.subFailedHandlers["2003705"] = self.OnSubFailed2003705
    self.subFailedHandlers["2003706"] = self.OnSubFailed2003706
    self.subFailedHandlers["2003707"] = self.OnSubFailed2003707
end

function Quest20037:NPCDestroy(arg1)
    local avatarPos = actorUtils.GetAvatarPos()
    local npcBornPos = self.clientData.NPCData01.NPCBornPos
    local n = avatarPos.x - npcBornPos.x
    local v = avatarPos.y - npcBornPos.y
    if 400 < n * n + v * v then
        local questNpcActor = self:GetQuestNpcActor(self.clientData.NPCData01.Npc)
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDither(false, 5)
            self:NotifyTo("Npc1553", NpcUtil.NpcEventType.STARTDAILY, true)
        end
    else
        self:CallDelay(10, self.NPCDestroy)
    end
end

function Quest20037:StartDaily()
    print("StartDaily")
    local questNpcActor = self:GetQuestNpcActor(self.clientData.NPCData01.Npc)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
        self:NotifyTo("Npc1553", NpcUtil.NpcEventType.STARTDAILY, true)
    end
end

function Quest20037:OnSubStart2003701(arg1)
    self:NotifyTo("Npc1553", NpcUtil.NpcEventType.HIDESELF, true)
    self:CreateQuestNpc(arg1, self.clientData.NPCData01.NpcID)
end

function Quest20037:OnSubFinish2003701(arg1) end
function Quest20037:OnSubFailed2003701(arg1) end

function Quest20037:OnSubStart2003702(arg1)
    self:NotifyTo("Npc1553", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20037:OnSubFinish2003702(arg1)
    self:GetQuestNpcActor(self.clientData.NPCData02.Npc):DestroyWithDisappear(false)
end

function Quest20037:OnSubFailed2003702(arg1) end
function Quest20037:OnSubStart2003703(arg1) end
function Quest20037:OnSubFinish2003703(arg1) end
function Quest20037:OnSubFailed2003703(arg1) end

function Quest20037:OnSubStart2003704(arg1)
    print("\229\191\181\228\191\161")
    local actor = actorMgr:GetActor(self.clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 2003704)
        print("finish 2003704")
    end
end

function Quest20037:OnSubFinish2003704(arg1) end
function Quest20037:OnSubFailed2003704(arg1) end
function Quest20037:OnSubStart2003705(arg1) end
function Quest20037:OnSubFinish2003705(arg1) end
function Quest20037:OnSubFailed2003705(arg1) end

function Quest20037:OnSubStart2003706(arg1)
    self:NotifyTo("Npc1553", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20037:OnSubFinish2003706(arg1)
    self:GetQuestNpcActor(self.clientData.NPCData02.Npc):DestroyWithDisappear(false)
    self:ShowBlackScreen(0.3, 1.5, 0.3, self.StartDaily, nil, nil, "")
end

function Quest20037:OnSubFailed2003706(arg1) end
function Quest20037:OnSubStart2003707(arg1) end
function Quest20037:OnSubFinish2003707(arg1) end
function Quest20037:OnSubFailed2003707(arg1) end

function Quest20037:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("paimon creat")
        local avatarPos = actorUtils.GetAvatarPos()
        local avatarForward = actorUtils.GetAvatarForward()
        avatarForward.x = self.clientData.NPCData01.NPCBornPos.x - avatarPos.x
        avatarForward.z = self.clientData.NPCData01.NPCBornPos.z - avatarPos.z
        local n = (avatarForward.x ^ 2 + avatarForward.y ^ 2 + avatarForward.z ^ 2) ^ 0.5
        avatarForward.x = avatarForward.x / n
        avatarForward.z = avatarForward.z / n
        local x = avatarForward.x
        avatarForward.x = avatarForward.z * -1
        avatarForward.z = x
        avatarPos.x = 0.5 * (avatarPos.x + self.clientData.NPCData01.NPCBornPos.x) + avatarForward.x * 1
        avatarPos.z = 0.5 * (avatarPos.z + self.clientData.NPCData01.NPCBornPos.z) + avatarForward.z * 1
        avatarForward.x = self.clientData.NPCData01.NPCBornPos.x - avatarPos.x
        avatarForward.z = self.clientData.NPCData01.NPCBornPos.z - avatarPos.z
        self:CreateQuestNpcByIdWithPos(2003701, self.clientData.NPCData02.NpcID, 0, avatarPos, M.Dir2Euler(avatarForward))
        print("paimon created")
    elseif arg1 == 2 then
        print("\229\188\128\229\167\139\232\175\187\228\185\166100348")
        self:ShowReadingDialog(100348)
    end
end

function Quest20037:OnMainCanceled(arg1)
    self:GetQuestNpcActor(self.clientData.NPCData01.Npc):Destroy(false)
    self:GetQuestNpcActor(self.clientData.NPCData02.Npc):Destroy(false)
    self:NotifyTo("Npc1553", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20037:Start() end
function Quest20037:OnDestroy() end
return Quest20037
