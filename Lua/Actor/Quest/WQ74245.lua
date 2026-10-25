require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74245 = class("Quest74245", QuestActorProxy)
Quest74245.defaultAlias = "Quest74245"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74245:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74245:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7424501"] = self.OnSubStart7424501}
end

function Quest74245:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7424501"] = self.OnSubFinish7424501}
end

function Quest74245:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74245:Start()
    print("Start")
end

function Quest74245:OnDestroy()
    print("OnDestroy")
end

function Quest74245:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74245:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74245:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74245:OnSubStart7424501(arg1)
    print("OnSubStart7424501")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc5337Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc5338Data.id, 0)
        actorMgr:CreateActorWithPos("Q74245Trigger", "Actor/Gadget/Q74245Trigger", 70900002, 0, {x = 1221.621, y = 284.325, z = 4398.377}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    end)
end

function Quest74245:OnSubFinish7424501(arg1)
    print("OnSubFinish7424501")
    this:SafeDestroyQuestNpc(npcs.Npc5337Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5338Data.alias, 3)
end

return Quest74245
