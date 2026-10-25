require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73302 = class("Quest73302", QuestActorProxy)
Quest73302.defaultAlias = "Quest73302"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73302:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73302:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7330201"] = self.OnSubStart7330201, ["7330202"] = self.OnSubStart7330202}
end

function Quest73302:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7330201"] = self.OnSubFinish7330201, ["7330202"] = self.OnSubFinish7330202}
end

function Quest73302:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73302:Start()
    print("Start")
end

function Quest73302:OnDestroy()
    print("OnDestroy")
end

function Quest73302:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73302:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73302:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73302:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73302:OnSubStart7330201(arg1)
    print("OnSubStart7330201")
end

function Quest73302:OnSubFinish7330201(arg1)
    print("OnSubFinish7330201")
end

function Quest73302:OnSubStart7330202(arg1)
    print("OnSubStart7330202")
end

function Quest73302:OnSubFinish7330202(arg1)
    print("OnSubFinish7330202")
    self:CreateQuestNpc(arg1, npcs.Npc20643Data.id, 1)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20643Data.alias)
end

return Quest73302
