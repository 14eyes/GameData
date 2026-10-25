require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72812 = class("Quest72812", QuestActorProxy)
Quest72812.defaultAlias = "Quest72812"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72812:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72812:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7281201"] = self.OnSubStart7281201,
        ["7281202"] = self.OnSubStart7281202,
        ["7281203"] = self.OnSubStart7281203,
        ["7281204"] = self.OnSubStart7281204
    }
end

function Quest72812:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7281201"] = self.OnSubFinish7281201,
        ["7281202"] = self.OnSubFinish7281202,
        ["7281203"] = self.OnSubFinish7281203,
        ["7281204"] = self.OnSubFinish7281204
    }
end

function Quest72812:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7281201"] = self.OnSubFailed7281201,
        ["7281202"] = self.OnSubFailed7281202,
        ["7281203"] = self.OnSubFailed7281203,
        ["7281204"] = self.OnSubFailed7281204
    }
end

function Quest72812:Start()
    print("Start")
end

function Quest72812:OnDestroy()
    print("OnDestroy")
end

function Quest72812:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72812:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72812:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc3032Data.alias, 3)
end

function Quest72812:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72812:NotifyToWitheBlackScreen()
    print("NotifyToWitheBlackScreen")
    self:NotifyTo(npcs.Npc3032Data.alias, 1, true)
    globalActor:PlayerEnterDungeon(389, 1124)
end

function Quest72812:OnSubStart7281201(arg1)
    print("OnSubStart7281201")
end

function Quest72812:OnSubFinish7281201(arg1)
    print("OnSubFinish7281201")
    self:ShowBlackScreen(0.3, 1, 1, self.NotifyToWitheBlackScreen, nil, nil, "", false, true)
end

function Quest72812:OnSubFailed7281201(arg1)
    print("OnSubFailed7281201")
end

function Quest72812:OnSubStart7281204(arg1)
    print("OnSubStart7281204")
end

function Quest72812:OnSubFinish7281204(arg1)
    print("OnSubFinish7281204")
    self:ShowBlackScreen(0.3, 1, 1, self.NotifyToWitheBlackScreen, nil, nil, "", false, true)
end

function Quest72812:OnSubFailed7281204(arg1)
    print("OnSubFailed7281204")
end

function Quest72812:OnSubStart7281202(arg1)
    print("OnSubStart7281202")
end

function Quest72812:OnSubFinish7281202(arg1)
    print("OnSubFinish7281202")
end

function Quest72812:OnSubFailed7281202(arg1)
    print("OnSubFailed7281202")
    self:LightNotifyTo(npcs.Npc3032Data.alias, 0, true)
    actorUtils.ForceRefreshDaily("Npc3032")
end

function Quest72812:OnSubStart7281203(arg1)
    print("OnSubStart7281203")
    self:CreateQuestNpc(arg1, npcs.Npc3032Data.id, 1)
end

function Quest72812:OnSubFinish7281203(arg1)
    print("OnSubFinish7281203")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3032Data.alias)
end

function Quest72812:OnSubFailed7281203(arg1)
    print("OnSubFailed7281203")
end

return Quest72812
