require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40911 = class("Quest40911", QuestActorProxy)
local NPCUtil = require("Actor/Npc/NPCUtil")

Quest40911.defaultAlias = "Quest40911"
local clientData
local shareData
local npc

function Quest40911:OnDataLoaded()
    clientData = self.clientData
    shareData = self.shareData
    npc = shareData.QuestData["4091102"].npcs[1]
end

function Quest40911:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["4091101"] = self.OnSubStart4091101
    self.subStartHandlers["4091102"] = self.OnSubStart4091102
    self.subStartHandlers["4091103"] = self.OnSubStart4091103
end

function Quest40911:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["4091101"] = self.OnSubFinish4091101
    self.subFinishHandlers["4091102"] = self.OnSubFinish4091102
    self.subFinishHandlers["4091103"] = self.OnSubFinish4091103
end

function Quest40911:OnSubFinish4091101(arg1)
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc1587", NPCUtil.NpcEventType.HIDESELF, true)
    end)
end

function Quest40911:OnSubStart4091102(arg1)
    self:CreateQuestNpc(arg1, npc.ID)
    actorMgr:CreateActorWithPos("Q40911Trigger", "Actor/Gadget/Q40911Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4091103Timaeus").pos, sceneData:GetDummyPoint(3, "Q4091103Timaeus").rot, true)
end

function Quest40911:OnSubFinish4091103(arg1)
    self.ActionSafeCall(self, function()
        self:NotifyTo("Npc1587", NPCUtil.NpcEventType.STARTDAILY, true)
        local questNpcActor = self:GetQuestNpcActor(npc.alias)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end

        self:ShowTutorialDialog(257)
    end)
end

function Quest40911:OnMainCanceled(arg1)
    print("40911 main canceled")
    self:DestroyQuestNpcActor(npc.alias, 3)
    self:NotifyTo("Npc1587", NPCUtil.NpcEventType.STARTDAILY, true)
end

function Quest40911:Start() end
function Quest40911:OnDestroy() end
return Quest40911
