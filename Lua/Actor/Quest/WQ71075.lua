require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71075 = class("Quest71075", QuestActorProxy)
Quest71075.defaultAlias = "Quest71075"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71075:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71075:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7107501"] = self.OnSubStart7107501, ["7107502"] = self.OnSubStart7107502}
end

function Quest71075:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7107501"] = self.OnSubFinish7107501, ["7107502"] = self.OnSubFinish7107502}
end

function Quest71075:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71075:Start()
    print("Start")
end

function Quest71075:OnDestroy()
    print("OnDestroy")
end

function Quest71075:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71075:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71075:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71075:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest71075:OnSubStart7107501(arg1)
    print("OnSubStart7107501")
    self:CreateQuestNpc(arg1, npcs.Npc20556Data.id, 1)
    self:FinishQuestID(false, 7107501)
end

function Quest71075:OnSubFinish7107501(arg1)
    print("OnSubFinish7107501")
end

function Quest71075:OnSubStart7107502(arg1)
    print("OnSubStart7107502")
end

function Quest71075:OnSubFinish7107502(arg1)
    print("OnSubFinish7107502")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20556Data.alias)
end

return Quest71075
