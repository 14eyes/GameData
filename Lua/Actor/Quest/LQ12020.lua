require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12020 = class("Quest12020", QuestActorProxy)
Quest12020.defaultAlias = "Quest12020"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest12020:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest12020:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1202001"] = self.OnSubStart1202001,
        ["1202009"] = self.OnSubStart1202009,
        ["1202002"] = self.OnSubStart1202002,
        ["1202003"] = self.OnSubStart1202003,
        ["1202004"] = self.OnSubStart1202004,
        ["1202005"] = self.OnSubStart1202005,
        ["1202006"] = self.OnSubStart1202006,
        ["1202007"] = self.OnSubStart1202007,
        ["1202008"] = self.OnSubStart1202008
    }
end

function Quest12020:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1202001"] = self.OnSubFinish1202001,
        ["1202009"] = self.OnSubFinish1202009,
        ["1202002"] = self.OnSubFinish1202002,
        ["1202003"] = self.OnSubFinish1202003,
        ["1202004"] = self.OnSubFinish1202004,
        ["1202005"] = self.OnSubFinish1202005,
        ["1202006"] = self.OnSubFinish1202006,
        ["1202007"] = self.OnSubFinish1202007,
        ["1202008"] = self.OnSubFinish1202008
    }
end

function Quest12020:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1202001"] = self.OnSubFailed1202001,
        ["1202009"] = self.OnSubFailed1202009,
        ["1202002"] = self.OnSubFailed1202002,
        ["1202003"] = self.OnSubFailed1202003,
        ["1202004"] = self.OnSubFailed1202004,
        ["1202005"] = self.OnSubFailed1202005,
        ["1202006"] = self.OnSubFailed1202006,
        ["1202007"] = self.OnSubFailed1202007,
        ["1202008"] = self.OnSubFailed1202008
    }
end

function Quest12020:Start()
    print("Start")
end

function Quest12020:OnDestroy()
    print("OnDestroy")
end

function Quest12020:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest12020:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest12020:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest12020:OnSubStart1202001(arg1)
    print("OnSubStart1202001")
    actorMgr:CreateActorWithPos("Q12020Trigger1", "Actor/Gadget/Q12020Trigger1", 70900002, 0, {x = -3952.29, y = 199.9094, z = -1087.458}, {x = 0, y = 0, z = 0}, true, false, 3)
end

function Quest12020:OnSubFinish1202001(arg1)
    print("OnSubFinish1202001")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1039Data.id, 0)
        arg1_2:RequestInteraction(npcs.Npc1039Data.alias)
    end, nil, nil, "")
end

function Quest12020:OnSubFailed1202001(arg1)
    print("OnSubFailed1202001")
end

function Quest12020:OnSubStart1202009(arg1)
    print("OnSubStart1202009")
end

function Quest12020:OnSubFinish1202009(arg1)
    print("OnSubFinish1202009")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
        arg1:DestroyQuestNpcActor(npcs.Npc1039Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12097Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12098Data.alias, 3)
    end)
end

function Quest12020:OnSubFailed1202009(arg1)
    print("OnSubFailed1202009")
end

function Quest12020:OnSubStart1202002(arg1)
    print("OnSubStart1202002")
end

function Quest12020:OnSubFinish1202002(arg1)
    print("OnSubFinish1202002")
end

function Quest12020:OnSubFailed1202002(arg1)
    print("OnSubFailed1202002")
end

function Quest12020:OnSubStart1202003(arg1)
    print("OnSubStart1202003")
    self:CallDelay(2, function(arg1_2)
        arg1_2:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc1039Data.id, 0)
            arg1_2:RequestInteraction(npcs.Npc1039Data.alias)
        end, nil, nil, "")
    end)
end

function Quest12020:OnSubFinish1202003(arg1)
    print("OnSubFinish1202003")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
        arg1:DestroyQuestNpcActor(npcs.Npc1039Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12097Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12098Data.alias, 3)
    end)
end

function Quest12020:OnSubFailed1202003(arg1)
    print("OnSubFailed1202003")
end

function Quest12020:OnSubStart1202004(arg1)
    print("OnSubStart1202004")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12059Data.id, 0)
        arg1_2:NotifyTo(npcs.Npc3135Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc3140Data.alias, 1, true)
    end)
end

function Quest12020:OnSubFinish1202004(arg1)
    print("OnSubFinish1202004")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    end)
end

function Quest12020:OnSubFailed1202004(arg1)
    print("OnSubFailed1202004")
end

function Quest12020:OnSubStart1202005(arg1)
    print("OnSubStart1202005")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12060Data.id, 0)
        arg1_2:NotifyTo(npcs.Npc3135Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc3140Data.alias, 1, true)
    end)
end

function Quest12020:OnSubFinish1202005(arg1)
    print("OnSubFinish1202005")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    end)
end

function Quest12020:OnSubFailed1202005(arg1)
    print("OnSubFailed1202005")
end

function Quest12020:OnSubStart1202006(arg1)
    print("OnSubStart1202006")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12061Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12095Data.id, 0)
        actorMgr:CreateActorWithPos("Q12020Trigger2", "Actor/Gadget/Q12020Trigger2", 70900002, 0, {x = -3990.574, y = 175.6918, z = -942.5131}, {x = 0, y = 0, z = 0}, true, false, 3)
        arg1_2:NotifyTo(npcs.Npc3135Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc3140Data.alias, 1, true)
    end)
end

function Quest12020:OnSubFinish1202006(arg1)
    print("OnSubFinish1202006")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    end)
end

function Quest12020:OnSubFailed1202006(arg1)
    print("OnSubFailed1202006")
end

function Quest12020:OnSubStart1202007(arg1)
    print("OnSubStart1202007")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12062Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3140Data.id, 0)
        actorMgr:CreateActorWithPos("Q12020Trigger", "Actor/Gadget/Q12020Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q12020_xinhai").pos, sceneData:GetDummyPoint(3, "Q12020_xinhai").rot, true, false, 3)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12096Data.id, 0)
        arg1_2:NotifyTo(npcs.Npc3135Data.alias, 1, true)
    end)
end

function Quest12020:OnSubFinish1202007(arg1)
    print("OnSubFinish1202007")
end

function Quest12020:OnSubFailed1202007(arg1)
    print("OnSubFailed1202007")
end

function Quest12020:OnSubStart1202008(arg1)
    print("OnSubStart1202008")
    self:RequestInteraction(npcs.Npc12062Data.alias)
end

function Quest12020:OnSubFinish1202008(arg1)
    print("OnSubFinish1202008")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc12059Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12060Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12061Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12095Data.alias, 3)
        arg1:LightNotifyTo(npcs.Npc3135Data.alias, 0, true)
        arg1:DestroyQuestNpcActor(npcs.Npc3140Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12062Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12096Data.alias, 3)
    end)
end

function Quest12020:OnSubFailed1202008(arg1)
    print("OnSubFailed1202008")
end

return Quest12020
