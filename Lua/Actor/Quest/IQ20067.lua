require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20067 = class("Quest20067", QuestActorProxy)
Quest20067.defaultAlias = "Quest20067"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest20067:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest20067:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2006701"] = self.OnSubStart2006701,
        ["2006702"] = self.OnSubStart2006702,
        ["2006703"] = self.OnSubStart2006703,
        ["2006704"] = self.OnSubStart2006704,
        ["2006705"] = self.OnSubStart2006705,
        ["2006706"] = self.OnSubStart2006706
    }
end

function Quest20067:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2006701"] = self.OnSubFinish2006701,
        ["2006702"] = self.OnSubFinish2006702,
        ["2006703"] = self.OnSubFinish2006703,
        ["2006704"] = self.OnSubFinish2006704,
        ["2006705"] = self.OnSubFinish2006705,
        ["2006706"] = self.OnSubFinish2006706
    }
end

function Quest20067:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest20067:Start()
    print("Start")
end

function Quest20067:OnDestroy()
    print("OnDestroy")
end

function Quest20067:OnMainFinished(arg1)
    print("OnMainFinished")
    self:SafeDestroyQuestNpc(npcs.Npc1405Data.alias, 3)
end

function Quest20067:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest20067:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1405Data.alias, 3)
end

function Quest20067:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest20067:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest20067:OnSubStart2006701(arg1)
    print("OnSubStart2006701")
    self:NpcCreate(arg1, npcs.Npc1405Data.id, 1)
end

function Quest20067:OnSubFinish2006701(arg1)
    print("OnSubFinish2006701")
end

function Quest20067:OnSubStart2006702(arg1)
    print("OnSubStart2006702")
end

function Quest20067:OnSubFinish2006702(arg1)
    print("OnSubFinish2006702")
end

function Quest20067:OnSubStart2006703(arg1)
    print("OnSubStart2006703")
end

function Quest20067:OnSubFinish2006703(arg1)
    print("OnSubFinish2006703")
end

function Quest20067:OnSubStart2006704(arg1)
    print("OnSubStart2006704")
end

function Quest20067:OnSubFinish2006704(arg1)
    print("OnSubFinish2006704")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc1405Data.alias)
end

function Quest20067:OnSubStart2006705(arg1)
    print("OnSubStart2006705")
end

function Quest20067:OnSubFinish2006705(arg1)
    print("OnSubFinish2006705")
end

function Quest20067:OnSubStart2006706(arg1)
    print("OnSubStart2006706")
end

function Quest20067:OnSubFinish2006706(arg1)
    print("OnSubFinish2006706")
end

return Quest20067
