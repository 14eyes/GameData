require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70150 = class("Quest70150", QuestActorProxy)
Quest70150.defaultAlias = "Quest70150"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest70150:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest70150:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7015001"] = self.OnSubStart7015001, ["7015002"] = self.OnSubStart7015002}
end

function Quest70150:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7015001"] = self.OnSubFinish7015001, ["7015002"] = self.OnSubFinish7015002}
end

function Quest70150:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7015002"] = self.OnSubFailed7015002}
end

function Quest70150:Start()
    print("Start")
end

function Quest70150:OnDestroy()
    print("OnDestroy")
end

function Quest70150:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70150:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70150:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70150:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70150:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest70150:OnSubStart7015001(arg1)
    print("OnSubStart7015001")
    this:CreateQuestNpc(arg1, npcs.Npc17113_1.id, 0, false, 0)
end

function Quest70150:OnSubFinish7015001(arg1)
    print("OnSubFinish7015001")
    this:NpcDestroyImmediately(3, npcs.Npc17113_1.alias)
end

function Quest70150:OnSubStart7015002(arg1)
    print("OnSubStart7015002")
    this:CreateQuestNpc(arg1, npcs.Npc17113_1.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc17113_1.alias, 70150):DoFreeStyle(8010, true, nil, true, true, false, false)
end

function Quest70150:OnSubFinish7015002(arg1)
    print("OnSubFinish7015002")
    this:NpcDestroyImmediately(3, npcs.Npc17113_1.alias)
end

function Quest70150:OnSubFailed7015002(arg1)
    print("OnSubFailed7015002")
    this:RecycleAllRes()
end

return Quest70150
