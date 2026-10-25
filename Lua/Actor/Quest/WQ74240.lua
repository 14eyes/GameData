require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74240 = class("Quest74240", QuestActorProxy)
Quest74240.defaultAlias = "Quest74240"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74240:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74240:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7424001"] = self.OnSubStart7424001, ["7424002"] = self.OnSubStart7424002}
end

function Quest74240:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7424001"] = self.OnSubFinish7424001, ["7424002"] = self.OnSubFinish7424002}
end

function Quest74240:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74240:Start()
    print("Start")
end

function Quest74240:OnDestroy()
    print("OnDestroy")
end

function Quest74240:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74240:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74240:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74240:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, n, arg5, 0.5, 2)
end

function Quest74240:OnSubStart7424001(arg1)
    print("OnSubStart7424001")
end

function Quest74240:OnSubFinish7424001(arg1)
    print("OnSubFinish7424001")
end

function Quest74240:OnSubStart7424002(arg1)
    print("OnSubStart7424002")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc21415Data.id, 7424002, 0, 10, 1, false)
end

function Quest74240:OnSubFinish7424002(arg1)
    print("OnSubFinish7424002")
    this:SafeDestroyQuestNpc(npcs.Npc21415Data.alias, 11)
end

return Quest74240
