require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71074 = class("Quest71074", QuestActorProxy)
Quest71074.defaultAlias = "Quest71074"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71074:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71074:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7107401"] = self.OnSubStart7107401,
        ["7107402"] = self.OnSubStart7107402,
        ["7107403"] = self.OnSubStart7107403,
        ["7107404"] = self.OnSubStart7107404,
        ["7107405"] = self.OnSubStart7107405,
        ["7107406"] = self.OnSubStart7107406,
        ["7107407"] = self.OnSubStart7107407,
        ["7107408"] = self.OnSubStart7107408
    }
end

function Quest71074:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7107401"] = self.OnSubFinish7107401,
        ["7107402"] = self.OnSubFinish7107402,
        ["7107403"] = self.OnSubFinish7107403,
        ["7107404"] = self.OnSubFinish7107404,
        ["7107405"] = self.OnSubFinish7107405,
        ["7107406"] = self.OnSubFinish7107406,
        ["7107407"] = self.OnSubFinish7107407,
        ["7107408"] = self.OnSubFinish7107408
    }
end

function Quest71074:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71074:Start()
    print("Start")
end

function Quest71074:OnDestroy()
    print("OnDestroy")
end

function Quest71074:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71074:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71074:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71074:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest71074:OnSubStart7107401(arg1)
    print("OnSubStart7107401")
end

function Quest71074:OnSubFinish7107401(arg1)
    print("OnSubFinish7107401")
end

function Quest71074:OnSubStart7107402(arg1)
    print("OnSubStart7107402")
end

function Quest71074:OnSubFinish7107402(arg1)
    print("OnSubFinish7107402")
end

function Quest71074:OnSubStart7107403(arg1)
    print("OnSubStart7107403")
end

function Quest71074:OnSubFinish7107403(arg1)
    print("OnSubFinish7107403")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc2061Data.alias)
end

function Quest71074:OnSubStart7107404(arg1)
    print("OnSubStart7107404")
end

function Quest71074:OnSubFinish7107404(arg1)
    print("OnSubFinish7107404")
end

function Quest71074:OnSubStart7107405(arg1)
    print("OnSubStart7107405")
end

function Quest71074:OnSubFinish7107405(arg1)
    print("OnSubFinish7107405")
end

function Quest71074:OnSubStart7107406(arg1)
    print("OnSubStart7107406")
end

function Quest71074:OnSubFinish7107406(arg1)
    print("OnSubFinish7107406")
end

function Quest71074:OnSubStart7107407(arg1)
    print("OnSubStart7107407")
end

function Quest71074:OnSubFinish7107407(arg1)
    print("OnSubFinish7107407")
end

function Quest71074:OnSubStart7107408(arg1)
    print("OnSubStart7107408")
end

function Quest71074:OnSubFinish7107408(arg1)
    print("OnSubFinish7107408")
end

return Quest71074
