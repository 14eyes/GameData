require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest24022 = class("Quest24022", QuestActorProxy)
Quest24022.defaultAlias = "Quest24022"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest24022:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest24022:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2402201"] = self.OnSubStart2402201,
        ["2402202"] = self.OnSubStart2402202,
        ["2402203"] = self.OnSubStart2402203,
        ["2402204"] = self.OnSubStart2402204,
        ["2402205"] = self.OnSubStart2402205,
        ["2402206"] = self.OnSubStart2402206,
        ["2402207"] = self.OnSubStart2402207,
        ["2402208"] = self.OnSubStart2402208,
        ["2402209"] = self.OnSubStart2402209,
        ["2402210"] = self.OnSubStart2402210,
        ["2402211"] = self.OnSubStart2402211,
        ["2402212"] = self.OnSubStart2402212,
        ["2402213"] = self.OnSubStart2402213
    }
end

function Quest24022:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2402201"] = self.OnSubFinish2402201,
        ["2402202"] = self.OnSubFinish2402202,
        ["2402203"] = self.OnSubFinish2402203,
        ["2402204"] = self.OnSubFinish2402204,
        ["2402205"] = self.OnSubFinish2402205,
        ["2402206"] = self.OnSubFinish2402206,
        ["2402207"] = self.OnSubFinish2402207,
        ["2402208"] = self.OnSubFinish2402208,
        ["2402209"] = self.OnSubFinish2402209,
        ["2402210"] = self.OnSubFinish2402210,
        ["2402211"] = self.OnSubFinish2402211,
        ["2402212"] = self.OnSubFinish2402212,
        ["2402213"] = self.OnSubFinish2402213
    }
end

function Quest24022:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest24022:Start()
    print("Start")
end

function Quest24022:OnDestroy()
    print("OnDestroy")
end

function Quest24022:OnMainFinished(arg1)
    print("OnMainFinished")
    this:LightNotifyTo(npcs.Npc5211Data.alias, 0, true)
end

function Quest24022:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest24022:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:NpcDestroy(npcs.Npc5209Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5211Data.alias, 0, true)
end

function Quest24022:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest24022:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest24022:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest24022:OnSubStart2402201(arg1)
    print("OnSubStart2402201")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc5209Data.id, 0)
    this:NotifyTo(npcs.Npc5211Data.alias, 1, true)
end

function Quest24022:OnSubFinish2402201(arg1)
    print("OnSubFinish2402201")
end

function Quest24022:OnSubStart2402202(arg1)
    print("OnSubStart2402202")
end

function Quest24022:OnSubFinish2402202(arg1)
    print("OnSubFinish2402202")
end

function Quest24022:OnSubStart2402203(arg1)
    print("OnSubStart2402203")
end

function Quest24022:OnSubFinish2402203(arg1)
    print("OnSubFinish2402203")
end

function Quest24022:OnSubStart2402204(arg1)
    print("OnSubStart2402204")
end

function Quest24022:OnSubFinish2402204(arg1)
    print("OnSubFinish2402204")
end

function Quest24022:OnSubStart2402205(arg1)
    print("OnSubStart2402205")
    this:NotifyTo(npcs.Npc5211Data.alias, 1, true)
end

function Quest24022:OnSubFinish2402205(arg1)
    print("OnSubFinish2402205")
end

function Quest24022:OnSubStart2402206(arg1)
    print("OnSubStart2402206")
    this:NotifyTo(npcs.Npc5211Data.alias, 1, true)
end

function Quest24022:OnSubFinish2402206(arg1)
    print("OnSubFinish2402206")
end

function Quest24022:OnSubStart2402207(arg1)
    print("OnSubStart2402207")
    this:NotifyTo(npcs.Npc5211Data.alias, 1, true)
end

function Quest24022:OnSubFinish2402207(arg1)
    print("OnSubFinish2402207")
end

function Quest24022:OnSubStart2402208(arg1)
    print("OnSubStart2402208")
    this:NotifyTo(npcs.Npc5211Data.alias, 1, true)
end

function Quest24022:OnSubFinish2402208(arg1)
    print("OnSubFinish2402208")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5209Data.alias)
end

function Quest24022:OnSubStart2402209(arg1)
    print("OnSubStart2402209")
    this:NotifyTo(npcs.Npc5211Data.alias, 1, true)
end

function Quest24022:OnSubFinish2402209(arg1)
    print("OnSubFinish2402209")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5209Data.alias)
end

function Quest24022:OnSubStart2402210(arg1)
    print("OnSubStart2402210")
    this:NotifyTo(npcs.Npc5211Data.alias, 1, true)
end

function Quest24022:OnSubFinish2402210(arg1)
    print("OnSubFinish2402210")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5209Data.alias)
end

function Quest24022:OnSubStart2402211(arg1)
    print("OnSubStart2402211")
    this:NotifyTo(npcs.Npc5211Data.alias, 1, true)
end

function Quest24022:OnSubFinish2402211(arg1)
    print("OnSubFinish2402211")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5209Data.alias)
end

function Quest24022:OnSubStart2402212(arg1)
    print("OnSubStart2402212")
    this:NotifyTo(npcs.Npc5211Data.alias, 1, true)
end

function Quest24022:OnSubFinish2402212(arg1)
    print("OnSubFinish2402212")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5209Data.alias)
end

function Quest24022:OnSubStart2402213(arg1)
    print("OnSubStart2402213")
    this:NotifyTo(npcs.Npc5211Data.alias, 1, true)
end

function Quest24022:OnSubFinish2402213(arg1)
    print("OnSubFinish2402213")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5209Data.alias)
end

return Quest24022
