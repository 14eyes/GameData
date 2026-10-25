require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74650 = class("Quest74650", QuestActorProxy)
Quest74650.defaultAlias = "Quest74650"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74650:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74650:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7465001"] = self.OnSubStart7465001, ["7465002"] = self.OnSubStart7465002}
end

function Quest74650:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7465001"] = self.OnSubFinish7465001, ["7465002"] = self.OnSubFinish7465002}
end

function Quest74650:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74650:Start()
    print("Start")
end

function Quest74650:OnDestroy()
    print("OnDestroy")
end

function Quest74650:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74650:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74650:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc5042Data.alias, 3)
    actorMgr:DestroyEntityActor("Q74650Trigger", 0, false)
end

function Quest74650:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest74650:OnSubStart7465001(arg1)
    print("OnSubStart7465001")
end

function Quest74650:OnSubFinish7465001(arg1)
    print("OnSubFinish7465001")
end

function Quest74650:OnSubStart7465002(arg1)
    print("OnSubStart7465002")
    actorMgr:CreateActorWithPos("Q74650Trigger", "Actor/Gadget/Q74650Trigger", 70900002, 0, {x = 3519.052, y = 451.289, z = 4652.496}, {x = 0.0, y = 265.426, z = 0.0}, true, false, 3)
end

function Quest74650:OnSubFinish7465002(arg1)
    print("OnSubFinish7465002")
    this:ActorDestroy("Q74650Trigger")
end

return Quest74650
