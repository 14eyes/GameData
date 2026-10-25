require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72120 = class("Quest72120", QuestActorProxy)
Quest72120.defaultAlias = "Quest72120"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72120:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72120:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7212001"] = self.OnSubStart7212001,
        ["7212002"] = self.OnSubStart7212002,
        ["7212003"] = self.OnSubStart7212003,
        ["7212004"] = self.OnSubStart7212004,
        ["7212005"] = self.OnSubStart7212005,
        ["7212006"] = self.OnSubStart7212006,
        ["7212007"] = self.OnSubStart7212007,
        ["7212008"] = self.OnSubStart7212008,
        ["7212009"] = self.OnSubStart7212009
    }
end

function Quest72120:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7212001"] = self.OnSubFinish7212001,
        ["7212002"] = self.OnSubFinish7212002,
        ["7212003"] = self.OnSubFinish7212003,
        ["7212004"] = self.OnSubFinish7212004,
        ["7212005"] = self.OnSubFinish7212005,
        ["7212006"] = self.OnSubFinish7212006,
        ["7212007"] = self.OnSubFinish7212007,
        ["7212008"] = self.OnSubFinish7212008,
        ["7212009"] = self.OnSubFinish7212009
    }
end

function Quest72120:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7212001"] = self.OnSubFailed7212001,
        ["7212002"] = self.OnSubFailed7212002,
        ["7212003"] = self.OnSubFailed7212003,
        ["7212004"] = self.OnSubFailed7212004,
        ["7212005"] = self.OnSubFailed7212005,
        ["7212006"] = self.OnSubFailed7212006,
        ["7212007"] = self.OnSubFailed7212007,
        ["7212008"] = self.OnSubFailed7212008,
        ["7212009"] = self.OnSubFailed7212009
    }
end

function Quest72120:Start()
    print("Start")
end

function Quest72120:OnDestroy()
    print("OnDestroy")
end

function Quest72120:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72120:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72120:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72120:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest72120:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72120:OnSubStart7212001(arg1)
    print("OnSubStart7212001")
end

function Quest72120:OnSubFinish7212001(arg1)
    print("OnSubFinish7212001")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest72120:OnSubFailed7212001(arg1)
    print("OnSubFailed7212001")
end

function Quest72120:OnSubStart7212002(arg1)
    print("OnSubStart7212002")
    self:CallDelay(0.8, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3162Data.id, 1)
    end)
end

function Quest72120:OnSubFinish7212002(arg1)
    print("OnSubFinish7212002")
end

function Quest72120:OnSubFailed7212002(arg1)
    print("OnSubFailed7212002")
end

function Quest72120:OnSubStart7212003(arg1)
    print("OnSubStart7212003")
end

function Quest72120:OnSubFinish7212003(arg1)
    print("OnSubFinish7212003")
end

function Quest72120:OnSubFailed7212003(arg1)
    print("OnSubFailed7212003")
end

function Quest72120:OnSubStart7212004(arg1)
    print("OnSubStart7212004")
end

function Quest72120:OnSubFinish7212004(arg1)
    print("OnSubFinish7212004")
    self:ShowBlackScreen(0.5, 2, 1, nil, nil, nil, "", false, true)
end

function Quest72120:OnSubFailed7212004(arg1)
    print("OnSubFailed7212004")
end

function Quest72120:OnSubStart7212005(arg1)
    print("OnSubStart7212005")
end

function Quest72120:OnSubFinish7212005(arg1)
    print("OnSubFinish7212005")
    self:ShowBlackScreen(0.5, 2, 1, nil, nil, nil, "", false, true)
end

function Quest72120:OnSubFailed7212005(arg1)
    print("OnSubFailed7212005")
end

function Quest72120:OnSubStart7212006(arg1)
    print("OnSubStart7212006")
end

function Quest72120:OnSubFinish7212006(arg1)
    print("OnSubFinish7212006")
    self:ShowBlackScreen(0.5, 2, 1, nil, nil, nil, "", false, true)
end

function Quest72120:OnSubFailed7212006(arg1)
    print("OnSubFailed7212006")
end

function Quest72120:OnSubStart7212007(arg1)
    print("OnSubStart7212007")
end

function Quest72120:OnSubFinish7212007(arg1)
    print("OnSubFinish7212007")
end

function Quest72120:OnSubFailed7212007(arg1)
    print("OnSubFailed7212007")
end

function Quest72120:OnSubStart7212008(arg1)
    print("OnSubStart7212008")
end

function Quest72120:OnSubFinish7212008(arg1)
    print("OnSubFinish7212008")
end

function Quest72120:OnSubFailed7212008(arg1)
    print("OnSubFailed7212008")
end

function Quest72120:OnSubStart7212009(arg1)
    print("OnSubStart7212009")
end

function Quest72120:OnSubFinish7212009(arg1)
    print("OnSubFinish7212009")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3162Data.alias)
end

function Quest72120:OnSubFailed7212009(arg1)
    print("OnSubFailed7212009")
end

return Quest72120
