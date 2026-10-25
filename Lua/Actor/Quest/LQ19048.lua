require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19048 = class("Quest19048", QuestActorProxy)
Quest19048.defaultAlias = "Quest19048"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest19048:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest19048:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1904801"] = self.OnSubStart1904801}
end

function Quest19048:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1904801"] = self.OnSubFinish1904801}
end

function Quest19048:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19048:Start()
    print("Start")
end

function Quest19048:OnDestroy()
    print("OnDestroy")
end

function Quest19048:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19048:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19048:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc2085Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2443Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2062Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2011Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2010Data.alias, 3)
    self:LightNotifyTo(npcs.Npc2010Data.alias, 0, true)
    self:ClearSpeechBubbleTask()
    if self:IsPlayerSitOnChair(3, M.Pos(-572, 239, 321), 3) then
        self.uActor:PlayerStandFromChair(0)
    end
end

function Quest19048:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest19048:OnSubStart1904801(arg1)
    print("OnSubStart1904801")
    self:CreateQuestNpc(arg1, npcs.Npc2085Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc2085Data.alias):DoFreeStyle(1230, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc2443Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc2062Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc2011Data.id, 4)
    self:DailyNpcSafeHideSelf(npcs.Npc2010Data.alias, 1, true)
    self:CreateSpeechBubbleTask(npcs.Npc2085Data.id, 190375201, 6, true, 8, 15, true)
    self:CreateSpeechBubbleTask(npcs.Npc2443Data.id, 190375301, 6, true, 7, 17, true)
    self:CreateSpeechBubbleTask(npcs.Npc2062Data.id, 190375401, 6, true, 9, 20, true)
    self:CreateSpeechBubbleTask(npcs.Npc2011Data.id, 190375501, 6, true, 10, 19, true)
end

function Quest19048:OnSubFinish1904801(arg1)
    print("OnSubFinish1904801")
    self:SafeDestroyQuestNpc(npcs.Npc2085Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2443Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2062Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2011Data.alias, 3)
    self:LightNotifyTo(npcs.Npc2010Data.alias, 0, true)
end

return Quest19048
