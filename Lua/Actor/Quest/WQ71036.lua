require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71036 = class("Quest71036", QuestActorProxy)
Quest71036.defaultAlias = "Quest71036"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71036:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71036:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7103601"] = self.OnSubStart7103601,
        ["7103602"] = self.OnSubStart7103602,
        ["7103604"] = self.OnSubStart7103604,
        ["7103605"] = self.OnSubStart7103605,
        ["7103606"] = self.OnSubStart7103606,
        ["7103607"] = self.OnSubStart7103607,
        ["7103608"] = self.OnSubStart7103608,
        ["7103609"] = self.OnSubStart7103609,
        ["7103611"] = self.OnSubStart7103611,
        ["7103610"] = self.OnSubStart7103610
    }
end

function Quest71036:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7103601"] = self.OnSubFinish7103601,
        ["7103602"] = self.OnSubFinish7103602,
        ["7103604"] = self.OnSubFinish7103604,
        ["7103605"] = self.OnSubFinish7103605,
        ["7103606"] = self.OnSubFinish7103606,
        ["7103607"] = self.OnSubFinish7103607,
        ["7103608"] = self.OnSubFinish7103608,
        ["7103609"] = self.OnSubFinish7103609,
        ["7103611"] = self.OnSubFinish7103611,
        ["7103610"] = self.OnSubFinish7103610
    }
end

function Quest71036:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71036:Start()
    print("Start")
end

function Quest71036:OnDestroy()
    print("OnDestroy")
end

function Quest71036:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71036:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71036:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71036:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest71036:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest71036:OnSubStart7103601(arg1)
    print("OnSubStart7103601")
    self:CreateQuestNpc(arg1, npcs.Npc20523Data.id, 1)
end

function Quest71036:OnSubFinish7103601(arg1)
    print("OnSubFinish7103601")
end

function Quest71036:OnSubStart7103602(arg1)
    print("OnSubStart7103602")
    self:CreateQuestNpc(arg1, npcs.Npc20523Data.id, 1)
end

function Quest71036:OnSubFinish7103602(arg1)
    print("OnSubFinish7103602")
    self:NpcDestroyWithBlackscreen(6, npcs.Npc20523Data.alias)
    self:ShowBlackScreen(0.2, 0.5, 0.2, nil, nil, nil, "", false, true)
end

function Quest71036:OnSubStart7103604(arg1)
    print("OnSubStart7103604")
end

function Quest71036:OnSubFinish7103604(arg1)
    print("OnSubFinish7103604")
end

function Quest71036:OnSubStart7103605(arg1)
    print("OnSubStart7103605")
end

function Quest71036:OnSubFinish7103605(arg1)
    print("OnSubFinish7103605")
end

function Quest71036:OnSubStart7103606(arg1)
    print("OnSubStart7103606")
end

function Quest71036:OnSubFinish7103606(arg1)
    print("OnSubFinish7103606")
end

function Quest71036:OnSubStart7103607(arg1)
    print("OnSubStart7103607")
end

function Quest71036:OnSubFinish7103607(arg1)
    print("OnSubFinish7103607")
end

function Quest71036:OnSubStart7103608(arg1)
    print("OnSubStart7103608")
end

function Quest71036:OnSubFinish7103608(arg1)
    print("OnSubFinish7103608")
end

function Quest71036:OnSubStart7103609(arg1)
    print("OnSubStart7103609")
end

function Quest71036:OnSubFinish7103609(arg1)
    print("OnSubFinish7103609")
end

function Quest71036:OnSubStart7103611(arg1)
    print("OnSubStart7103611")
end

function Quest71036:OnSubFinish7103611(arg1)
    print("OnSubFinish7103611")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20523Data.id, 1)
    self:TransmitPlayerById(arg1, 1)
end

function Quest71036:OnSubStart7103610(arg1)
    print("OnSubStart7103610")
end

function Quest71036:OnSubFinish7103610(arg1)
    print("OnSubFinish7103610")
    self:NpcDestroyWithBlackscreen(6, npcs.Npc20523Data.alias)
    self:ShowBlackScreen(0.2, 2, 0.2, nil, nil, nil, "", false, true)
end

return Quest71036
