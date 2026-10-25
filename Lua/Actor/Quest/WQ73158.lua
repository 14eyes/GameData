require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73158 = class("Quest73158", QuestActorProxy)
Quest73158.defaultAlias = "Quest73158"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73158:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73158:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7315801"] = self.OnSubStart7315801, ["7315802"] = self.OnSubStart7315802}
end

function Quest73158:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7315801"] = self.OnSubFinish7315801, ["7315802"] = self.OnSubFinish7315802}
end

function Quest73158:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73158:Start()
    print("Start")
end

function Quest73158:OnDestroy()
    print("OnDestroy")
end

function Quest73158:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73158:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73158:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73158:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73158:OnSubStart7315801(arg1)
    print("OnSubStart7315801")
    self:CreateQuestNpc(arg1, npcs.Npc20831Data.id, 1)
end

function Quest73158:OnSubFinish7315801(arg1)
    print("OnSubFinish7315801")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20831Data.alias)
end

function Quest73158:OnSubStart7315802(arg1)
    print("OnSubStart7315802")
end

function Quest73158:OnSubFinish7315802(arg1)
    print("OnSubFinish7315802")
end

return Quest73158
