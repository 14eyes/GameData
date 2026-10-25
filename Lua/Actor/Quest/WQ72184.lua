require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72184 = class("Quest72184", QuestActorProxy)
Quest72184.defaultAlias = "Quest72184"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72184:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72184:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7218401"] = self.OnSubStart7218401,
        ["7218402"] = self.OnSubStart7218402,
        ["7218403"] = self.OnSubStart7218403,
        ["7218404"] = self.OnSubStart7218404,
        ["7218405"] = self.OnSubStart7218405
    }
end

function Quest72184:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7218401"] = self.OnSubFinish7218401,
        ["7218402"] = self.OnSubFinish7218402,
        ["7218403"] = self.OnSubFinish7218403,
        ["7218404"] = self.OnSubFinish7218404,
        ["7218405"] = self.OnSubFinish7218405
    }
end

function Quest72184:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7218401"] = self.OnSubFailed7218401,
        ["7218402"] = self.OnSubFailed7218402,
        ["7218403"] = self.OnSubFailed7218403,
        ["7218404"] = self.OnSubFailed7218404,
        ["7218405"] = self.OnSubFailed7218405
    }
end

function Quest72184:Start()
    print("Start")
end

function Quest72184:OnDestroy()
    print("OnDestroy")
end

function Quest72184:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72184:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72184:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72184:OnSubStart7218401(arg1)
    print("OnSubStart7218401")
end

function Quest72184:OnSubFinish7218401(arg1)
    print("OnSubFinish7218401")
end

function Quest72184:OnSubFailed7218401(arg1)
    print("OnSubFailed7218401")
end

function Quest72184:OnSubStart7218402(arg1)
    print("OnSubStart7218402")
    self:CreateQuestNpc(arg1, npcs.Npc3024Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc3044Data.id, 1)
end

function Quest72184:OnSubFinish7218402(arg1)
    print("OnSubFinish7218402")
end

function Quest72184:OnSubFailed7218402(arg1)
    print("OnSubFailed7218402")
end

function Quest72184:OnSubStart7218403(arg1)
    print("OnSubStart7218403")
end

function Quest72184:OnSubFinish7218403(arg1)
    print("OnSubFinish7218403")
end

function Quest72184:OnSubFailed7218403(arg1)
    print("OnSubFailed7218403")
end

function Quest72184:OnSubStart7218404(arg1)
    print("OnSubStart7218404")
end

function Quest72184:OnSubFinish7218404(arg1)
    print("OnSubFinish7218404")
end

function Quest72184:OnSubFailed7218404(arg1)
    print("OnSubFailed7218404")
end

function Quest72184:OnSubStart7218405(arg1)
    print("OnSubStart7218405")
end

function Quest72184:OnSubFinish7218405(arg1)
    print("OnSubFinish7218405")
    self:ActionSafeCall(function(arg1)
        arg1:SafeDestroyQuestNpc(npcs.Npc3044Data.alias, 3)
        arg1:SafeDestroyQuestNpc(npcs.Npc3024Data.alias, 3)
    end)
end

function Quest72184:OnSubFailed7218405(arg1)
    print("OnSubFailed7218405")
end

return Quest72184
