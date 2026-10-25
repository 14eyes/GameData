require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22112 = class("Quest22112", QuestActorProxy)
Quest22112.defaultAlias = "Quest22112"
local clientData
local n
local subIDs
local actors

function Quest22112:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    n = 22112
    actors = clientData.Actors
end

function Quest22112:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2211201"] = self.OnSubStart2211201,
        ["2211202"] = self.OnSubStart2211202,
        ["2211203"] = self.OnSubStart2211203,
        ["2211204"] = self.OnSubStart2211204,
        ["2211205"] = self.OnSubStart2211205
    }
end

function Quest22112:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2211201"] = self.OnSubFinish2211201,
        ["2211202"] = self.OnSubFinish2211202,
        ["2211203"] = self.OnSubFinish2211203,
        ["2211204"] = self.OnSubFinish2211204,
        ["2211205"] = self.OnSubFinish2211205
    }
end

function Quest22112:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2211201"] = self.OnSubFailed2211201,
        ["2211202"] = self.OnSubFailed2211202,
        ["2211203"] = self.OnSubFailed2211203,
        ["2211204"] = self.OnSubFailed2211204,
        ["2211205"] = self.OnSubFailed2211205
    }
end

function Quest22112:ShowBridge()
    print("ShowBridge")
    globalActor:EnterSceneLookCamera(actors.NpcData.NewTransfrom.pos, 0, 2, true, true)
    actorMgr:GetActor("22112"):FinishQuestID(false, 2211204)
end

function Quest22112:PlayAudio()
    print("playaudio")
    actorMgr:GetActor("22112"):GetQuestNpcActor(actors.NpcData.alias):PlayAudio("Play_sfx_quest_LYAQ_underConstruction")
end

function Quest22112:Start()
    print("Start")
end

function Quest22112:OnDestroy()
    print("OnDestroy")
end

function Quest22112:OnSubStart2211201(arg1)
    print("OnSubStart2211201")
    self:CreateQuestNpc(arg1, actors.NpcData.id)
    self:NotifyTo("Npc2202", 1, true)
end

function Quest22112:OnSubFinish2211201(arg1)
    print("OnSubFinish2211201")
end

function Quest22112:OnSubFailed2211201(arg1)
    print("OnSubFailed2211201")
    self:NotifyTo("Npc2202", 0, true)
end

function Quest22112:OnSubStart2211202(arg1)
    print("OnSubStart2211202")
end

function Quest22112:OnSubFinish2211202(arg1)
    print("OnSubFinish2211202")
    self:NotifyTo("Npc2202", 1, true)
end

function Quest22112:OnSubFailed2211202(arg1)
    print("OnSubFailed2211202")
    self:NotifyTo("Npc2202", 0, true)
end

function Quest22112:OnSubStart2211203(arg1)
    print("OnSubStart2211203")
    self:NotifyTo("Npc2202", 1, true)
end

function Quest22112:OnSubFinish2211203(arg1)
    print("OnSubFinish2211203")
end

function Quest22112:OnSubFailed2211203(arg1)
    print("OnSubFailed2211203")
    self:NotifyTo("Npc2202", 0, true)
end

function Quest22112:OnSubStart2211204(arg1)
    print("OnSubStart2211204")
    self:NotifyTo("Npc2202", 1, true)
    globalActor:ShowBlackScreen(0.5, 2, 1, self.PlayAudio, self.ShowBridge, nil, actors.NpcData.BlackScreenText)
end

function Quest22112:OnSubFinish2211204(arg1)
    print("OnSubFinish2211204")
end

function Quest22112:OnSubFailed2211204(arg1)
    print("OnSubFailed2211204")
    self:NotifyTo("Npc2202", 0, true)
end

function Quest22112:OnSubStart2211205(arg1)
    print("OnSubStart2211205")
    self:NotifyTo("Npc2202", 1, true)
end

function Quest22112:OnSubFinish2211205(arg1)
    print("OnSubFinish2211205")
    local questNpcActor = actorMgr:GetActor("22112"):GetQuestNpcActor(actors.NpcData.alias)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:CallDelay(0.2, function(arg1)
            questNpcActor:DestroyWithDither(false, 1)
        end)
    end)

    self:NotifyTo("Npc2202", 0, true)
end

function Quest22112:OnSubFailed2211205(arg1)
    print("OnSubFailed2211205")
    self:NotifyTo("Npc2202", 0, false)
end

function Quest22112:OnMainFinished(arg1) end
function Quest22112:OnMainFailed(arg1) end

function Quest22112:OnMainCanceled(arg1)
    print("MainQuest22112 Canceled")
    self:NotifyTo("Npc2202", 0, false)
    local questNpcActor = actorMgr:GetActor("22112"):GetQuestNpcActor(actors.NpcData.alias)
    self:SafeDestroyQuestNpc(actors.NpcData.alias, 3)
end

return Quest22112
