require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76094 = class("Quest76094", QuestActorProxy)
Quest76094.defaultAlias = "Quest76094"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76094:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76094:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7609401"] = self.OnSubStart7609401,
        ["7609402"] = self.OnSubStart7609402,
        ["7609404"] = self.OnSubStart7609404,
        ["7609403"] = self.OnSubStart7609403,
        ["7609405"] = self.OnSubStart7609405
    }
end

function Quest76094:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7609401"] = self.OnSubFinish7609401,
        ["7609402"] = self.OnSubFinish7609402,
        ["7609404"] = self.OnSubFinish7609404,
        ["7609403"] = self.OnSubFinish7609403,
        ["7609405"] = self.OnSubFinish7609405
    }
end

function Quest76094:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76094:Start()
    print("Start")
end

function Quest76094:OnDestroy()
    print("OnDestroy")
end

function Quest76094:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76094:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76094:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76094:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76094:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest76094:OnSubStart7609401(arg1)
    print("OnSubStart7609401")
    this:CreateQuestNpc(arg1, npcs.Npc7673.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7673.alias, 76094):DoFreeStyle(1050, true, nil, true, true, false, false)
    actorUtils.FinishQuestID(false, 7609401)
end

function Quest76094:OnSubFinish7609401(arg1)
    print("OnSubFinish7609401")
end

function Quest76094:OnSubStart7609402(arg1)
    print("OnSubStart7609402")
    this:GetQuestNpcActor(npcs.Npc7673.alias, 76094):DoFreeStyle(1050, true, nil, true, true, false, true)
end

function Quest76094:OnSubFinish7609402(arg1)
    print("OnSubFinish7609402")
end

function Quest76094:OnSubStart7609404(arg1)
    print("OnSubStart7609404")
    this:GetQuestNpcActor(npcs.Npc7673.alias, 76094):DoFreeStyle(1050, true, nil, true, true, false, true)
end

function Quest76094:OnSubFinish7609404(arg1)
    print("OnSubFinish7609404")
end

function Quest76094:OnSubStart7609403(arg1)
    print("OnSubStart7609403")
end

function Quest76094:OnSubFinish7609403(arg1)
    print("OnSubFinish7609403")
end

function Quest76094:OnSubStart7609405(arg1)
    print("OnSubStart7609405")
end

function Quest76094:OnSubFinish7609405(arg1)
    print("OnSubFinish7609405")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc7673.alias)
end

return Quest76094
