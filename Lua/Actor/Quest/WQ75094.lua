require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75094 = class("Quest75094", QuestActorProxy)
Quest75094.defaultAlias = "Quest75094"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest75094:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75094:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7509401"] = self.OnSubStart7509401,
        ["7509402"] = self.OnSubStart7509402,
        ["7509405"] = self.OnSubStart7509405,
        ["7509404"] = self.OnSubStart7509404,
        ["7509406"] = self.OnSubStart7509406,
        ["7509403"] = self.OnSubStart7509403
    }
end

function Quest75094:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7509401"] = self.OnSubFinish7509401,
        ["7509402"] = self.OnSubFinish7509402,
        ["7509405"] = self.OnSubFinish7509405,
        ["7509404"] = self.OnSubFinish7509404,
        ["7509406"] = self.OnSubFinish7509406,
        ["7509403"] = self.OnSubFinish7509403
    }
end

function Quest75094:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75094:Start()
    print("Start")
end

function Quest75094:OnDestroy()
    print("OnDestroy")
end

function Quest75094:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75094:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75094:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75094:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest75094:OnSubStart7509401(arg1)
    print("OnSubStart7509401")
end

function Quest75094:OnSubFinish7509401(arg1)
    print("OnSubFinish7509401")
end

function Quest75094:OnSubStart7509402(arg1)
    print("OnSubStart7509402")
    actorMgr:CreateActorWithPos("T7509402", "Actor/Gadget/T7509402", 70900002, 0, points._T7509402Point_.pos, points._T7509402Point_.rot, true, false, 3)
end

function Quest75094:OnSubFinish7509402(arg1)
    print("OnSubFinish7509402")
end

function Quest75094:OnSubStart7509405(arg1)
    print("OnSubStart7509405")
    this:SafeDestroyQuestNpc(npcs.Npc21460.alias, 3)
end

function Quest75094:OnSubFinish7509405(arg1)
    print("OnSubFinish7509405")
end

function Quest75094:OnSubStart7509404(arg1)
    print("OnSubStart7509404")
end

function Quest75094:OnSubFinish7509404(arg1)
    print("OnSubFinish7509404")
end

function Quest75094:OnSubStart7509406(arg1)
    print("OnSubStart7509406")
    this:NpcCreateWithNpcTrigger(npcs.Paimon.id, 0, 30, 7509406)
    this:NpcCreateWithNpcTrigger(npcs.Npc21460.id, 0, 30, 7509406)
end

function Quest75094:OnSubFinish7509406(arg1)
    print("OnSubFinish7509406")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21460.alias, 3)
end

function Quest75094:OnSubStart7509403(arg1)
    print("OnSubStart7509403")
    this:NpcCreateWithNpcTrigger(npcs.Paimon.id, 0, 30, 7509403)
end

function Quest75094:OnSubFinish7509403(arg1)
    print("OnSubFinish7509403")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 3)
end

return Quest75094
