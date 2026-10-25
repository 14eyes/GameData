require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74024 = class("Quest74024", QuestActorProxy)
Quest74024.defaultAlias = "Quest74024"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74024:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74024:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7402408"] = self.OnSubStart7402408,
        ["7402401"] = self.OnSubStart7402401,
        ["7402402"] = self.OnSubStart7402402,
        ["7402403"] = self.OnSubStart7402403,
        ["7402404"] = self.OnSubStart7402404,
        ["7402405"] = self.OnSubStart7402405,
        ["7402406"] = self.OnSubStart7402406,
        ["7402407"] = self.OnSubStart7402407,
        ["7402409"] = self.OnSubStart7402409,
        ["7402410"] = self.OnSubStart7402410
    }
end

function Quest74024:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7402408"] = self.OnSubFinish7402408,
        ["7402401"] = self.OnSubFinish7402401,
        ["7402402"] = self.OnSubFinish7402402,
        ["7402403"] = self.OnSubFinish7402403,
        ["7402404"] = self.OnSubFinish7402404,
        ["7402405"] = self.OnSubFinish7402405,
        ["7402406"] = self.OnSubFinish7402406,
        ["7402407"] = self.OnSubFinish7402407,
        ["7402409"] = self.OnSubFinish7402409,
        ["7402410"] = self.OnSubFinish7402410
    }
end

function Quest74024:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74024:Start()
    print("Start")
end

function Quest74024:OnDestroy()
    print("OnDestroy")
end

function Quest74024:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74024:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74024:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74024:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74024:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7402409)
    elseif arg1 == 2 then
        actorUtils.FinishQuestID(false, 7402410)
    end
end

function Quest74024:OnSubStart7402408(arg1)
    print("OnSubStart7402408")
end

function Quest74024:OnSubFinish7402408(arg1)
    print("OnSubFinish7402408")
end

function Quest74024:OnSubStart7402401(arg1)
    print("OnSubStart7402401")
    this:CreateQuestNpc(arg1, npcs.Npc5316Data.id, 1)
end

function Quest74024:OnSubFinish7402401(arg1)
    print("OnSubFinish7402401")
end

function Quest74024:OnSubStart7402402(arg1)
    print("OnSubStart7402402")
    this:CreateQuestNpc(arg1, npcs.Npc5316Data.id, 1)
end

function Quest74024:OnSubFinish7402402(arg1)
    print("OnSubFinish7402402")
end

function Quest74024:OnSubStart7402403(arg1)
    print("OnSubStart7402403")
    this:CreateQuestNpc(arg1, npcs.Npc5316Data.id, 1)
    this:ActionSafeCall(function(arg1)
        this:RequestInteraction(npcs.Npc5316Data.alias)
    end)
end

function Quest74024:OnSubFinish7402403(arg1)
    print("OnSubFinish7402403")
end

function Quest74024:OnSubStart7402404(arg1)
    print("OnSubStart7402404")
    this:CreateQuestNpc(arg1, npcs.Npc5316Data.id, 1)
end

function Quest74024:OnSubFinish7402404(arg1)
    print("OnSubFinish7402404")
end

function Quest74024:OnSubStart7402405(arg1)
    print("OnSubStart7402405")
    this:CreateQuestNpc(arg1, npcs.Npc5316Data.id, 1)
    this:ActionSafeCall(function(arg1)
        this:RequestInteraction(npcs.Npc5316Data.alias)
    end)
end

function Quest74024:OnSubFinish7402405(arg1)
    print("OnSubFinish7402405")
end

function Quest74024:OnSubStart7402406(arg1)
    print("OnSubStart7402406")
    this:CreateQuestNpc(arg1, npcs.Npc5316Data.id, 1)
end

function Quest74024:OnSubFinish7402406(arg1)
    print("OnSubFinish7402406")
end

function Quest74024:OnSubStart7402407(arg1)
    print("OnSubStart7402407")
    this:CreateQuestNpc(arg1, npcs.Npc5316Data.id, 1)
    this:ActionSafeCall(function(arg1)
        this:RequestInteraction(npcs.Npc5316Data.alias)
    end)
end

function Quest74024:OnSubFinish7402407(arg1)
    print("OnSubFinish7402407")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5316Data.alias)
end

function Quest74024:OnSubStart7402409(arg1)
    print("OnSubStart7402409")
end

function Quest74024:OnSubFinish7402409(arg1)
    print("OnSubFinish7402409")
end

function Quest74024:OnSubStart7402410(arg1)
    print("OnSubStart7402410")
end

function Quest74024:OnSubFinish7402410(arg1)
    print("OnSubFinish7402410")
end

return Quest74024
