require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72117 = class("Quest72117", QuestActorProxy)
Quest72117.defaultAlias = "Quest72117"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72117:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72117:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7211701"] = self.OnSubStart7211701,
        ["7211702"] = self.OnSubStart7211702,
        ["7211703"] = self.OnSubStart7211703,
        ["7211704"] = self.OnSubStart7211704,
        ["7211705"] = self.OnSubStart7211705,
        ["7211706"] = self.OnSubStart7211706,
        ["7211707"] = self.OnSubStart7211707,
        ["7211708"] = self.OnSubStart7211708
    }
end

function Quest72117:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7211701"] = self.OnSubFinish7211701,
        ["7211702"] = self.OnSubFinish7211702,
        ["7211703"] = self.OnSubFinish7211703,
        ["7211704"] = self.OnSubFinish7211704,
        ["7211705"] = self.OnSubFinish7211705,
        ["7211706"] = self.OnSubFinish7211706,
        ["7211707"] = self.OnSubFinish7211707,
        ["7211708"] = self.OnSubFinish7211708
    }
end

function Quest72117:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7211701"] = self.OnSubFailed7211701,
        ["7211702"] = self.OnSubFailed7211702,
        ["7211703"] = self.OnSubFailed7211703,
        ["7211704"] = self.OnSubFailed7211704,
        ["7211705"] = self.OnSubFailed7211705,
        ["7211706"] = self.OnSubFailed7211706,
        ["7211707"] = self.OnSubFailed7211707,
        ["7211708"] = self.OnSubFailed7211708
    }
end

function Quest72117:Start()
    print("Start")
end

function Quest72117:OnDestroy()
    print("OnDestroy")
end

function Quest72117:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72117:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72117:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72117:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest72117:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72117:OnSubStart7211701(arg1)
    print("OnSubStart7211701")
end

function Quest72117:OnSubFinish7211701(arg1)
    print("OnSubFinish7211701")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest72117:OnSubFailed7211701(arg1)
    print("OnSubFailed7211701")
end

function Quest72117:OnSubStart7211702(arg1)
    print("OnSubStart7211702")
    self:CallDelay(0.8, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3162Data.id, 1)
    end)
end

function Quest72117:OnSubFinish7211702(arg1)
    print("OnSubFinish7211702")
end

function Quest72117:OnSubFailed7211702(arg1)
    print("OnSubFailed7211702")
end

function Quest72117:OnSubStart7211703(arg1)
    print("OnSubStart7211703")
end

function Quest72117:OnSubFinish7211703(arg1)
    print("OnSubFinish7211703")
end

function Quest72117:OnSubFailed7211703(arg1)
    print("OnSubFailed7211703")
end

function Quest72117:OnSubStart7211704(arg1)
    print("OnSubStart7211704")
end

function Quest72117:OnSubFinish7211704(arg1)
    print("OnSubFinish7211704")
end

function Quest72117:OnSubFailed7211704(arg1)
    print("OnSubFailed7211704")
end

function Quest72117:OnSubStart7211705(arg1)
    print("OnSubStart7211705")
end

function Quest72117:OnSubFinish7211705(arg1)
    print("OnSubFinish7211705")
end

function Quest72117:OnSubFailed7211705(arg1)
    print("OnSubFailed7211705")
end

function Quest72117:OnSubStart7211706(arg1)
    print("OnSubStart7211706")
end

function Quest72117:OnSubFinish7211706(arg1)
    print("OnSubFinish7211706")
end

function Quest72117:OnSubFailed7211706(arg1)
    print("OnSubFailed7211706")
end

function Quest72117:OnSubStart7211707(arg1)
    print("OnSubStart7211707")
end

function Quest72117:OnSubFinish7211707(arg1)
    print("OnSubFinish7211707")
end

function Quest72117:OnSubFailed7211707(arg1)
    print("OnSubFailed7211707")
end

function Quest72117:OnSubStart7211708(arg1)
    print("OnSubStart7211708")
end

function Quest72117:OnSubFinish7211708(arg1)
    print("OnSubFinish7211708")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3162Data.alias)
end

function Quest72117:OnSubFailed7211708(arg1)
    print("OnSubFailed7211708")
end

return Quest72117
