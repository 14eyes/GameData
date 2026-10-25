require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest23036 = class("Quest23036", QuestActorProxy)
Quest23036.defaultAlias = "Quest23036"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest23036:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest23036:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2303601"] = self.OnSubStart2303601,
        ["2303602"] = self.OnSubStart2303602,
        ["2303603"] = self.OnSubStart2303603,
        ["2303604"] = self.OnSubStart2303604,
        ["2303605"] = self.OnSubStart2303605,
        ["2303606"] = self.OnSubStart2303606,
        ["2303607"] = self.OnSubStart2303607,
        ["2303608"] = self.OnSubStart2303608,
        ["2303609"] = self.OnSubStart2303609
    }
end

function Quest23036:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2303601"] = self.OnSubFinish2303601,
        ["2303602"] = self.OnSubFinish2303602,
        ["2303603"] = self.OnSubFinish2303603,
        ["2303604"] = self.OnSubFinish2303604,
        ["2303605"] = self.OnSubFinish2303605,
        ["2303606"] = self.OnSubFinish2303606,
        ["2303607"] = self.OnSubFinish2303607,
        ["2303608"] = self.OnSubFinish2303608,
        ["2303609"] = self.OnSubFinish2303609
    }
end

function Quest23036:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest23036:Start()
    print("Start")
end

function Quest23036:OnDestroy()
    print("OnDestroy")
end

function Quest23036:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest23036:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest23036:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc4163Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12710Data.alias, 3)
    actorMgr:DestroyEntityActor("Q2303604Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q2303607Trigger", 3, false)
end

function Quest23036:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest23036:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest23036:OnSubStart2303601(arg1)
    print("OnSubStart2303601")
    self:CreateQuestNpc(arg1, npcs.Npc4163Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12710Data.id, 2)
end

function Quest23036:OnSubFinish2303601(arg1)
    print("OnSubFinish2303601")
end

function Quest23036:OnSubStart2303602(arg1)
    print("OnSubStart2303602")
end

function Quest23036:OnSubFinish2303602(arg1)
    print("OnSubFinish2303602")
end

function Quest23036:OnSubStart2303603(arg1)
    print("OnSubStart2303603")
end

function Quest23036:OnSubFinish2303603(arg1)
    print("OnSubFinish2303603")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4163Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc12710Data.alias)
end

function Quest23036:OnSubStart2303604(arg1)
    print("OnSubStart2303604")
    actorMgr:CreateActorWithPos("Q2303604Trigger", "Actor/Gadget/Q2303604Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2303604_guide").pos, sceneData:GetDummyPoint(3, "Q2303604_guide").rot, true, false, 3)
end

function Quest23036:OnSubFinish2303604(arg1)
    print("OnSubFinish2303604")
    if actorMgr:GetActor("Q2303604Trigger") ~= nil then
        self:ActorDestroy("Q2303604Trigger")
    end
end

function Quest23036:OnSubStart2303605(arg1)
    print("OnSubStart2303605")
end

function Quest23036:OnSubFinish2303605(arg1)
    print("OnSubFinish2303605")
end

function Quest23036:OnSubStart2303606(arg1)
    print("OnSubStart2303606")
end

function Quest23036:OnSubFinish2303606(arg1)
    print("OnSubFinish2303606")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4163Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc12710Data.alias)
end

function Quest23036:OnSubStart2303607(arg1)
    print("OnSubStart2303607")
    actorMgr:CreateActorWithPos("Q2303607Trigger", "Actor/Gadget/Q2303607Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2303607_guide").pos, sceneData:GetDummyPoint(3, "Q2303607_guide").rot, true, false, 3)
end

function Quest23036:OnSubFinish2303607(arg1)
    print("OnSubFinish2303607")
    if actorMgr:GetActor("Q2303607Trigger") ~= nil then
        self:ActorDestroy("Q2303607Trigger")
    end
end

function Quest23036:OnSubStart2303608(arg1)
    print("OnSubStart2303608")
end

function Quest23036:OnSubFinish2303608(arg1)
    print("OnSubFinish2303608")
end

function Quest23036:OnSubStart2303609(arg1)
    print("OnSubStart2303609")
end

function Quest23036:OnSubFinish2303609(arg1)
    print("OnSubFinish2303609")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4163Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc12710Data.alias)
end

return Quest23036
