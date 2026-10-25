require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73041 = class("Quest73041", QuestActorProxy)
Quest73041.defaultAlias = "Quest73041"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73041:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73041:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7304101"] = self.OnSubStart7304101,
        ["7304102"] = self.OnSubStart7304102,
        ["7304103"] = self.OnSubStart7304103,
        ["7304104"] = self.OnSubStart7304104
    }
end

function Quest73041:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7304101"] = self.OnSubFinish7304101,
        ["7304102"] = self.OnSubFinish7304102,
        ["7304103"] = self.OnSubFinish7304103,
        ["7304104"] = self.OnSubFinish7304104
    }
end

function Quest73041:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73041:Start()
    print("Start")
end

function Quest73041:OnDestroy()
    print("OnDestroy")
end

function Quest73041:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73041:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73041:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73041:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest73041:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73041:OnSubStart7304101(arg1)
    print("OnSubStart7304101")
    self:CreateQuestNpc(arg1, npcs.Npc20714Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20715Data.id, 2)
end

function Quest73041:OnSubFinish7304101(arg1)
    print("OnSubFinish7304101")
    self:CallDelay(1, function(arg1)
        arg1:NarratorOnlyTask(datas.hideandseek1, nil, "")
    end)

    self:SafeDestroyQuestNpc(npcs.Npc20715Data.alias, 3)
end

function Quest73041:OnSubStart7304102(arg1)
    print("OnSubStart7304102")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20714Data.id, 1)
end

function Quest73041:OnSubFinish7304102(arg1)
    print("OnSubFinish7304102")
    self:CallDelay(1, function(arg1)
        arg1:NarratorOnlyTask(datas.hideandseek2, nil, "")
    end)

    self:NpcDestroyWithBlackscreen(3, npcs.Npc20714Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20715Data.alias)
end

function Quest73041:OnSubStart7304103(arg1)
    print("OnSubStart7304103")
end

function Quest73041:OnSubFinish7304103(arg1)
    print("OnSubFinish7304103")
end

function Quest73041:OnSubStart7304104(arg1)
    print("OnSubStart7304104")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20715Data.id, 2)
end

function Quest73041:OnSubFinish7304104(arg1)
    print("OnSubFinish7304104")
end

return Quest73041
