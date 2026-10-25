require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74210 = class("Quest74210", QuestActorProxy)
Quest74210.defaultAlias = "Quest74210"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74210:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74210:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7421001"] = self.OnSubStart7421001}
end

function Quest74210:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7421001"] = self.OnSubFinish7421001}
end

function Quest74210:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74210:Start()
    print("Start")
end

function Quest74210:OnDestroy()
    print("OnDestroy")
end

function Quest74210:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74210:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74210:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74210:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest74210:OnSubStart7421001(arg1)
    print("OnSubStart7421001")
    this:CreateQuestNpc(arg1, npcs.Npc5257Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5257Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc5258Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5258Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc5273Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5273Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc5275Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5275Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc5274Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5274Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q74210Trigger", "Actor/Gadget/Q74210Trigger", 70900002, 0, {x = 4752.7, y = 530.418, z = 4281.276}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74210:OnSubFinish7421001(arg1)
    print("OnSubFinish7421001")
    this:SafeDestroyQuestNpc(npcs.Npc5257Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5258Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5273Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5275Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5274Data.alias, 3)
end

return Quest74210
