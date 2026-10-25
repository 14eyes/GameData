require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72116 = class("Quest72116", QuestActorProxy)
Quest72116.defaultAlias = "Quest72116"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72116:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72116:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7211601"] = self.OnSubStart7211601,
        ["7211602"] = self.OnSubStart7211602,
        ["7211603"] = self.OnSubStart7211603,
        ["7211604"] = self.OnSubStart7211604
    }
end

function Quest72116:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7211601"] = self.OnSubFinish7211601,
        ["7211602"] = self.OnSubFinish7211602,
        ["7211603"] = self.OnSubFinish7211603,
        ["7211604"] = self.OnSubFinish7211604
    }
end

function Quest72116:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7211601"] = self.OnSubFailed7211601,
        ["7211602"] = self.OnSubFailed7211602,
        ["7211603"] = self.OnSubFailed7211603,
        ["7211604"] = self.OnSubFailed7211604
    }
end

function Quest72116:Start()
    print("Start")
end

function Quest72116:OnDestroy()
    print("OnDestroy")
end

function Quest72116:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72116:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72116:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72116:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72116:OnSubStart7211601(arg1)
    print("OnSubStart7211601")
end

function Quest72116:OnSubFinish7211601(arg1)
    print("OnSubFinish7211601")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest72116:OnSubFailed7211601(arg1)
    print("OnSubFailed7211601")
end

function Quest72116:OnSubStart7211602(arg1)
    print("OnSubStart7211602")
    self:CallDelay(0.8, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3162Data.id, 1)
    end)
end

function Quest72116:OnSubFinish7211602(arg1)
    print("OnSubFinish7211602")
end

function Quest72116:OnSubFailed7211602(arg1)
    print("OnSubFailed7211602")
end

function Quest72116:OnSubStart7211603(arg1)
    print("OnSubStart7211603")
end

function Quest72116:OnSubFinish7211603(arg1)
    print("OnSubFinish7211603")
end

function Quest72116:OnSubFailed7211603(arg1)
    print("OnSubFailed7211603")
end

function Quest72116:OnSubStart7211604(arg1)
    print("OnSubStart7211604")
end

function Quest72116:OnSubFinish7211604(arg1)
    print("OnSubFinish7211604")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3162Data.alias)
end

function Quest72116:OnSubFailed7211604(arg1)
    print("OnSubFailed7211604")
end

return Quest72116
