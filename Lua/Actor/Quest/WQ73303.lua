require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73303 = class("Quest73303", QuestActorProxy)
Quest73303.defaultAlias = "Quest73303"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73303:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73303:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7330301"] = self.OnSubStart7330301, ["7330302"] = self.OnSubStart7330302}
end

function Quest73303:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7330301"] = self.OnSubFinish7330301, ["7330302"] = self.OnSubFinish7330302}
end

function Quest73303:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73303:Start()
    print("Start")
end

function Quest73303:OnDestroy()
    print("OnDestroy")
end

function Quest73303:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73303:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73303:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73303:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73303:OnSubStart7330301(arg1)
    print("OnSubStart7330301")
end

function Quest73303:OnSubFinish7330301(arg1)
    print("OnSubFinish7330301")
end

function Quest73303:OnSubStart7330302(arg1)
    print("OnSubStart7330302")
end

function Quest73303:OnSubFinish7330302(arg1)
    print("OnSubFinish7330302")
    self:CreateQuestNpc(arg1, npcs.Npc20643Data.id, 1)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20643Data.alias)
end

return Quest73303
