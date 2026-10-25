require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70676 = class("Quest70676", QuestActorProxy)
Quest70676.defaultAlias = "Quest70676"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest70676:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest70676:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7067601"] = self.OnSubStart7067601, ["7067602"] = self.OnSubStart7067602}
end

function Quest70676:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7067601"] = self.OnSubFinish7067601, ["7067602"] = self.OnSubFinish7067602}
end

function Quest70676:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7067602"] = self.OnSubFailed7067602}
end

function Quest70676:Start()
    print("Start")
end

function Quest70676:OnDestroy()
    print("OnDestroy")
end

function Quest70676:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70676:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70676:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70676:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, n, arg5, 0.5, 2)
end

function Quest70676:OnSubStart7067601(arg1)
    print("OnSubStart7067601")
    actorMgr:CreateActorWithPos("Q70676Trigger", "Actor/Gadget/Q70676Trigger", 70900002, 0, points.TPos_Q70676Trigger.pos, points.TPos_Q70676Trigger.rot, true, false, 48000)
end

function Quest70676:OnSubFinish7067601(arg1)
    print("OnSubFinish7067601")
end

function Quest70676:OnSubStart7067602(arg1)
    print("OnSubStart7067602")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc9500Data.id, 7067602, 0, 40, 1, true)
end

function Quest70676:OnSubFinish7067602(arg1)
    print("OnSubFinish7067602")
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(1785)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc9500Data.alias, 48000)
end

function Quest70676:OnSubFailed7067602(arg1)
    print("OnSubFailed7067602")
    this:DestroyNpcTrigger("Q7067602N9500Trigger")
end

return Quest70676
