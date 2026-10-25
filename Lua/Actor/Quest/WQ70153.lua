require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70153 = class("Quest70153", QuestActorProxy)
Quest70153.defaultAlias = "Quest70153"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest70153:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest70153:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7015301"] = self.OnSubStart7015301,
        ["7015302"] = self.OnSubStart7015302,
        ["7015303"] = self.OnSubStart7015303
    }
end

function Quest70153:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7015301"] = self.OnSubFinish7015301,
        ["7015302"] = self.OnSubFinish7015302,
        ["7015303"] = self.OnSubFinish7015303
    }
end

function Quest70153:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7015301"] = self.OnSubFailed7015301, ["7015303"] = self.OnSubFailed7015303}
end

function Quest70153:Start()
    print("Start")
end

function Quest70153:OnDestroy()
    print("OnDestroy")
end

function Quest70153:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70153:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70153:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70153:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70153:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 101 then
        actorUtils.FinishQuestWithParam({false}, {7015301})
    elseif arg1 == 102 then
        actorUtils.FinishQuestWithParam({true}, {7015301})
    elseif arg1 == 201 then
        actorUtils.FinishQuestWithParam({false}, {7015302})
    end
end

function Quest70153:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest70153:OnSubStart7015301(arg1)
    print("OnSubStart7015301")
    this:CreateQuestNpc(arg1, npcs.Npc22831_1.id, 0, false, 0)
end

function Quest70153:OnSubFinish7015301(arg1)
    print("OnSubFinish7015301")
end

function Quest70153:OnSubFailed7015301(arg1)
    print("OnSubFailed7015301")
    this:RecycleAllRes()
end

function Quest70153:OnSubStart7015302(arg1)
    print("OnSubStart7015302")
    this:CreateQuestNpc(arg1, npcs.Npc22831_1.id, 0, false, 0)
end

function Quest70153:OnSubFinish7015302(arg1)
    print("OnSubFinish7015302")
end

function Quest70153:OnSubStart7015303(arg1)
    print("OnSubStart7015303")
    this:CreateQuestNpc(arg1, npcs.Npc22831_1.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22831_1.alias, 70153):DoFreeStyle(1003, true, nil, true, true, false, false)
end

function Quest70153:OnSubFinish7015303(arg1)
    print("OnSubFinish7015303")
    this:NpcDestroyImmediately(3, npcs.Npc22831_1.alias)
end

function Quest70153:OnSubFailed7015303(arg1)
    print("OnSubFailed7015303")
    this:RecycleAllRes()
end

return Quest70153
