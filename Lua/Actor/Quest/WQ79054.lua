require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79054 = class("Quest79054", QuestActorProxy)
Quest79054.defaultAlias = "Quest79054"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest79054:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest79054:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7905401"] = self.OnSubStart7905401,
        ["7905402"] = self.OnSubStart7905402,
        ["7905403"] = self.OnSubStart7905403,
        ["7905404"] = self.OnSubStart7905404
    }
end

function Quest79054:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7905401"] = self.OnSubFinish7905401,
        ["7905402"] = self.OnSubFinish7905402,
        ["7905403"] = self.OnSubFinish7905403,
        ["7905404"] = self.OnSubFinish7905404
    }
end

function Quest79054:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7905403"] = self.OnSubFailed7905403}
end

function Quest79054:Start()
    print("Start")
end

function Quest79054:OnDestroy()
    print("OnDestroy")
end

function Quest79054:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79054:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79054:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79054:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg1):DestroyWithDither(false, 1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg1, arg2)
    end)
end

function Quest79054:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest79054:OnSubStart7905401(arg1)
    print("OnSubStart7905401")
    this:CreateQuestNpc(arg1, npcs.Npc13249Data.id, 0)
end

function Quest79054:OnSubFinish7905401(arg1)
    print("OnSubFinish7905401")
end

function Quest79054:OnSubStart7905402(arg1)
    print("OnSubStart7905402")
    this:CreateQuestNpc(arg1, npcs.Npc13249Data.id, 0)
end

function Quest79054:OnSubFinish7905402(arg1)
    print("OnSubFinish7905402")
end

function Quest79054:OnSubStart7905403(arg1)
    print("OnSubStart7905403")
    this:CreateQuestNpc(arg1, npcs.Npc20737Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13249Data.id, 0)
end

function Quest79054:OnSubFinish7905403(arg1)
    print("OnSubFinish7905403")
    this:CallDelayByQuest("7905403", 1, function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator7905402)
    end)
end

function Quest79054:OnSubFailed7905403(arg1)
    print("OnSubFailed7905403")
    this:NpcDestroyWithDither(npcs.Npc20737Data.alias, 10)
end

function Quest79054:OnSubStart7905404(arg1)
    print("OnSubStart7905404")
    this:CreateQuestNpc(arg1, npcs.Npc13249Data.id, 0)
end

function Quest79054:OnSubFinish7905404(arg1)
    print("OnSubFinish7905404")
    this:NpcDestroyWithBlackscreen(10, npcs.Npc13249Data.alias)
end

return Quest79054
