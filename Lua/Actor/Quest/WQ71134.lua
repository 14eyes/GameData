require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71134 = class("Quest71134", QuestActorProxy)
Quest71134.defaultAlias = "Quest71134"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest71134:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71134:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7113404"] = self.OnSubStart7113404,
        ["7113401"] = self.OnSubStart7113401,
        ["7113402"] = self.OnSubStart7113402,
        ["7113403"] = self.OnSubStart7113403,
        ["7113405"] = self.OnSubStart7113405
    }
end

function Quest71134:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7113404"] = self.OnSubFinish7113404,
        ["7113401"] = self.OnSubFinish7113401,
        ["7113402"] = self.OnSubFinish7113402,
        ["7113403"] = self.OnSubFinish7113403,
        ["7113405"] = self.OnSubFinish7113405
    }
end

function Quest71134:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71134:Start()
    print("Start")
end

function Quest71134:OnDestroy()
    print("OnDestroy")
end

function Quest71134:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71134:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71134:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71134:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest71134:OnSubStart7113404(arg1)
    print("OnSubStart7113404")
end

function Quest71134:OnSubFinish7113404(arg1)
    print("OnSubFinish7113404")
end

function Quest71134:OnSubStart7113401(arg1)
    print("OnSubStart7113401")
    this:CreateQuestNpc(arg1, npcs.Npc2269Data.id, 0)
end

function Quest71134:OnSubFinish7113401(arg1)
    print("OnSubFinish7113401")
end

function Quest71134:OnSubStart7113402(arg1)
    print("OnSubStart7113402")
end

function Quest71134:OnSubFinish7113402(arg1)
    print("OnSubFinish7113402")
end

function Quest71134:OnSubStart7113403(arg1)
    print("OnSubStart7113403")
end

function Quest71134:OnSubFinish7113403(arg1)
    print("OnSubFinish7113403")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc2269Data.alias)
end

function Quest71134:OnSubStart7113405(arg1)
    print("OnSubStart7113405")
    actorUtils.FinishQuestID(false, 7113405)
end

function Quest71134:OnSubFinish7113405(arg1)
    print("OnSubFinish7113405")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc2269Data.alias)
end

return Quest71134
