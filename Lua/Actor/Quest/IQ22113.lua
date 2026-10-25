require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22113 = class("Quest22113", QuestActorProxy)
Quest22113.defaultAlias = "Quest22113"
local clientData
local n
local subIDs
local actors

function Quest22113:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    n = 22113
    actors = clientData.Actors
end

function Quest22113:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2211301"] = self.OnSubStart2211301,
        ["2211302"] = self.OnSubStart2211302,
        ["2211303"] = self.OnSubStart2211303,
        ["2211304"] = self.OnSubStart2211304,
        ["2211305"] = self.OnSubStart2211305
    }
end

function Quest22113:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2211301"] = self.OnSubFinish2211301,
        ["2211302"] = self.OnSubFinish2211302,
        ["2211303"] = self.OnSubFinish2211303,
        ["2211304"] = self.OnSubFinish2211304,
        ["2211305"] = self.OnSubFinish2211305
    }
end

function Quest22113:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2211301"] = self.OnSubFailed2211301,
        ["2211302"] = self.OnSubFailed2211302,
        ["2211303"] = self.OnSubFailed2211303,
        ["2211304"] = self.OnSubFailed2211304,
        ["2211305"] = self.OnSubFailed2211305
    }
end

function Quest22113:ShowBridge()
    print("ShowBridge")
    globalActor:EnterSceneLookCamera(actors.NpcData.NewTransfrom.pos, 0, 2, true, true)
    actorMgr:GetActor("22113"):FinishQuestID(false, 2211304)
end

function Quest22113:PlayAudio()
    print("playaudio")
    actorMgr:GetActor("22113"):GetQuestNpcActor(actors.NpcData.alias):PlayAudio("Play_sfx_quest_LYAQ_underConstruction")
end

function Quest22113:Start()
    print("Start")
end

function Quest22113:OnDestroy()
    print("OnDestroy")
end

function Quest22113:OnSubStart2211301(arg1)
    print("OnSubStart2211301")
    self:CreateQuestNpc(arg1, actors.NpcData.id)
    self:NotifyTo("Npc2202", 1, true)
end

function Quest22113:OnSubFinish2211301(arg1)
    print("OnSubFinish2211301")
end

function Quest22113:OnSubFailed2211301(arg1)
    print("OnSubFailed2211301")
    self:NotifyTo("Npc2202", 0, true)
end

function Quest22113:OnSubStart2211302(arg1)
    print("OnSubStart2211302")
end

function Quest22113:OnSubFinish2211302(arg1)
    print("OnSubFinish2211302")
    self:NotifyTo("Npc2202", 1, true)
end

function Quest22113:OnSubFailed2211302(arg1)
    print("OnSubFailed2211302")
    self:NotifyTo("Npc2202", 0, true)
end

function Quest22113:OnSubStart2211303(arg1)
    print("OnSubStart2211303")
    self:NotifyTo("Npc2202", 1, true)
end

function Quest22113:OnSubFinish2211303(arg1)
    print("OnSubFinish2211303")
end

function Quest22113:OnSubFailed2211303(arg1)
    print("OnSubFailed2211303")
    self:NotifyTo("Npc2202", 0, true)
end

function Quest22113:OnSubStart2211304(arg1)
    print("OnSubStart2211304")
    self:NotifyTo("Npc2202", 1, true)
    globalActor:ShowBlackScreen(0.5, 2, 1, self.playAudio, self.ShowBridge, nil, actors.NpcData.BlackScreenText)
end

function Quest22113:OnSubFinish2211304(arg1)
    print("OnSubFinish2211304")
end

function Quest22113:OnSubFailed2211304(arg1)
    print("OnSubFailed2211304")
    self:NotifyTo("Npc2202", 0, true)
end

function Quest22113:OnSubStart2211305(arg1)
    print("OnSubStart2211305")
    self:NotifyTo("Npc2202", 1, true)
end

function Quest22113:OnSubFinish2211305(arg1)
    print("OnSubFinish2211305")
    local questNpcActor = actorMgr:GetActor("22113"):GetQuestNpcActor(actors.NpcData.alias)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:CallDelay(0.2, function(arg1)
            questNpcActor:DestroyWithDither(false, 1)
        end)
    end)

    self:NotifyTo("Npc2202", 0, true)
end

function Quest22113:OnSubFailed2211305(arg1)
    print("OnSubFailed2211305")
    self:NotifyTo("Npc2202", 0, false)
end

function Quest22113:OnMainFinished(arg1) end
function Quest22113:OnMainFailed(arg1) end

function Quest22113:OnMainCanceled(arg1)
    print("MainQuest22113 Canceled")
    self:NotifyTo("Npc2202", 0, false)
    local questNpcActor = actorMgr:GetActor("22113"):GetQuestNpcActor(actors.NpcData.alias)
    self:SafeDestroyQuestNpc(actors.NpcData.alias, 3)
end

return Quest22113
