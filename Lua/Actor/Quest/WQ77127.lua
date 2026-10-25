require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77127 = class("Quest77127", QuestActorProxy)
Quest77127.defaultAlias = "Quest77127"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest77127:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77127:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7712701"] = self.OnSubStart7712701,
        ["7712705"] = self.OnSubStart7712705,
        ["7712702"] = self.OnSubStart7712702,
        ["7712703"] = self.OnSubStart7712703,
        ["7712704"] = self.OnSubStart7712704,
        ["7712706"] = self.OnSubStart7712706
    }
end

function Quest77127:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7712701"] = self.OnSubFinish7712701,
        ["7712705"] = self.OnSubFinish7712705,
        ["7712702"] = self.OnSubFinish7712702,
        ["7712703"] = self.OnSubFinish7712703,
        ["7712704"] = self.OnSubFinish7712704,
        ["7712706"] = self.OnSubFinish7712706
    }
end

function Quest77127:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7712701"] = self.OnSubFailed7712701, ["7712705"] = self.OnSubFailed7712705}
end

function Quest77127:Start()
    print("Start")
end

function Quest77127:OnDestroy()
    print("OnDestroy")
end

function Quest77127:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77127:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77127:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77127:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7712704Trigger", 77127)
end

function Quest77127:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest77127:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77127:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg2, 0):DestroyWithDitherEx(1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest77127:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest77127:OnSubStart7712701(arg1)
    print("OnSubStart7712701")
    actorUtils.FinishQuestID(false, 7712701)
end

function Quest77127:OnSubFinish7712701(arg1)
    print("OnSubFinish7712701")
end

function Quest77127:OnSubFailed7712701(arg1)
    print("OnSubFailed7712701")
    this:RecycleAllRes()
end

function Quest77127:OnSubStart7712705(arg1)
    print("OnSubStart7712705")
    this:NpcCreateWithNpcTrigger(npcs.Npc22439.id, 0, 6, 7712705)
end

function Quest77127:OnSubFinish7712705(arg1)
    print("OnSubFinish7712705")
    this:NpcDestroyImmediately(3, npcs.Npc22439.alias)
end

function Quest77127:OnSubFailed7712705(arg1)
    print("OnSubFailed7712705")
    this:RecycleAllRes()
end

function Quest77127:OnSubStart7712702(arg1)
    print("OnSubStart7712702")
    this:CreateQuestNpc(arg1, npcs.Npc20985.id, 0, false, 0)
end

function Quest77127:OnSubFinish7712702(arg1)
    print("OnSubFinish7712702")
    this:NpcDestroyImmediately(3, npcs.Npc20985.alias)
end

function Quest77127:OnSubStart7712703(arg1)
    print("OnSubStart7712703")
    this:CreateQuestNpc(arg1, npcs.Npc22553.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22553.alias, 77127):DisableInteeHeadCtrl(true)
end

function Quest77127:OnSubFinish7712703(arg1)
    print("OnSubFinish7712703")
end

function Quest77127:OnSubStart7712704(arg1)
    print("OnSubStart7712704")
    this:CreateQuestNpc(arg1, npcs.Npc22553.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7712704Trigger", "Actor/Gadget/Q7712704Trigger", 70900002, 0, points._Q7712704TriggerPoint_.pos, points._Q7712704TriggerPoint_.rot, true, false, 3, nil, 0, 77127)
end

function Quest77127:OnSubFinish7712704(arg1)
    print("OnSubFinish7712704")
    this:NpcDestroyWithDither(3, npcs.Npc22553.alias)
end

function Quest77127:OnSubStart7712706(arg1)
    print("OnSubStart7712706")
end

function Quest77127:OnSubFinish7712706(arg1)
    print("OnSubFinish7712706")
end

return Quest77127
