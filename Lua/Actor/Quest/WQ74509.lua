require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74509 = class("Quest74509", QuestActorProxy)
Quest74509.defaultAlias = "Quest74509"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74509:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74509:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7450901"] = self.OnSubStart7450901, ["7450902"] = self.OnSubStart7450902}
end

function Quest74509:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7450901"] = self.OnSubFinish7450901, ["7450902"] = self.OnSubFinish7450902}
end

function Quest74509:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74509:Start()
    print("Start")
end

function Quest74509:OnDestroy()
    print("OnDestroy")
end

function Quest74509:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74509:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74509:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30419Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30416Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30421Data.alias, 3)
    this:LightNotifyTo(npcs.Npc30416Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q74509Trigger", 3, false)
    this:ActorDestroy("Q74509Trigger")
end

function Quest74509:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest74509:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest74509:OnSubStart7450901(arg1)
    print("OnSubStart7450901")
    this:CreateQuestNpc(arg1, npcs.Npc30419Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc30416Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc30421Data.id, 0)
    actorMgr:CreateActorWithPos("Q74509Trigger", "Actor/Gadget/Q74509Trigger", 70900002, 0, {x = 3585.873, y = 446.167, z = 4443.343}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74509:OnSubFinish7450901(arg1)
    print("OnSubFinish7450901")
    this:ActionSafeCall(function(arg1)
        this:LightNotifyTo(npcs.Npc30416Data.alias, 0, true)
        actorUtils.ShowContext("FungusV3DungeonEntryPage", 6)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc30419Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30421Data.alias, 3)
end

function Quest74509:OnSubStart7450902(arg1)
    print("OnSubStart7450902")
end

function Quest74509:OnSubFinish7450902(arg1)
    print("OnSubFinish7450902")
end

return Quest74509
