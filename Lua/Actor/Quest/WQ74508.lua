require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74508 = class("Quest74508", QuestActorProxy)
Quest74508.defaultAlias = "Quest74508"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74508:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74508:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7450801"] = self.OnSubStart7450801, ["7450802"] = self.OnSubStart7450802}
end

function Quest74508:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7450801"] = self.OnSubFinish7450801, ["7450802"] = self.OnSubFinish7450802}
end

function Quest74508:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74508:Start()
    print("Start")
end

function Quest74508:OnDestroy()
    print("OnDestroy")
end

function Quest74508:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74508:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74508:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30419Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30421Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30422Data.alias, 3)
    this:LightNotifyTo(npcs.Npc30421Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q74508Trigger", 3, false)
    this:ActorDestroy("Q74508Trigger")
end

function Quest74508:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest74508:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest74508:OnSubStart7450801(arg1)
    print("OnSubStart7450801")
    this:CreateQuestNpc(arg1, npcs.Npc30419Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc30421Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc30422Data.id, 0)
    actorMgr:CreateActorWithPos("Q74508Trigger", "Actor/Gadget/Q74508Trigger", 70900002, 0, {x = 3585.806, y = 446.167, z = 4443.843}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74508:OnSubFinish7450801(arg1)
    print("OnSubFinish7450801")
    this:ActionSafeCall(function(arg1)
        this:LightNotifyTo(npcs.Npc30421Data.alias, 0, true)
        actorUtils.ShowContext("FungusV3DungeonEntryPage", 4)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc30419Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30422Data.alias, 3)
end

function Quest74508:OnSubStart7450802(arg1)
    print("OnSubStart7450802")
end

function Quest74508:OnSubFinish7450802(arg1)
    print("OnSubFinish7450802")
end

return Quest74508
