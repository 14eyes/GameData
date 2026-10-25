require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72183 = class("Quest72183", QuestActorProxy)
Quest72183.defaultAlias = "Quest72183"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72183:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72183:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7218301"] = self.OnSubStart7218301, ["7218302"] = self.OnSubStart7218302}
end

function Quest72183:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7218301"] = self.OnSubFinish7218301, ["7218302"] = self.OnSubFinish7218302}
end

function Quest72183:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7218301"] = self.OnSubFailed7218301, ["7218302"] = self.OnSubFailed7218302}
end

function Quest72183:Start()
    print("Start")
end

function Quest72183:OnDestroy()
    print("OnDestroy")
end

function Quest72183:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72183:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72183:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc3098Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2093Data.alias, 3)
end

function Quest72183:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest72183:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest72183:OnSubStart7218301(arg1)
    print("OnSubStart7218301")
end

function Quest72183:OnSubFinish7218301(arg1)
    print("OnSubFinish7218301")
end

function Quest72183:OnSubFailed7218301(arg1)
    print("OnSubFailed7218301")
end

function Quest72183:OnSubStart7218302(arg1)
    print("OnSubStart7218302")
    self:NpcCreate(arg1, npcs.Npc2093Data.id, 1)
end

function Quest72183:OnSubFinish7218302(arg1)
    print("OnSubFinish7218302")
    self:ShowBlackScreen(0.4, 2, 0.4, function(arg1)
        arg1:NpcDestroy(npcs.Npc2093Data.alias, 3)
    end, nil, nil, "", false, true)
end

function Quest72183:OnSubFailed7218302(arg1)
    print("OnSubFailed7218302")
end

return Quest72183
