require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73224 = class("Quest73224", QuestActorProxy)
Quest73224.defaultAlias = "Quest73224"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73224:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73224:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7322401"] = self.OnSubStart7322401, ["7322402"] = self.OnSubStart7322402}
end

function Quest73224:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7322401"] = self.OnSubFinish7322401, ["7322402"] = self.OnSubFinish7322402}
end

function Quest73224:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73224:Start()
    print("Start")
end

function Quest73224:OnDestroy()
    print("OnDestroy")
end

function Quest73224:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73224:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73224:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73224:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73224:OnSubStart7322401(arg1)
    print("OnSubStart7322401")
end

function Quest73224:OnSubFinish7322401(arg1)
    print("OnSubFinish7322401")
end

function Quest73224:OnSubStart7322402(arg1)
    print("OnSubStart7322402")
end

function Quest73224:OnSubFinish7322402(arg1)
    print("OnSubFinish7322402")
    self:CreateQuestNpc(arg1, npcs.Npc20643Data.id, 1)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20643Data.alias)
end

return Quest73224
