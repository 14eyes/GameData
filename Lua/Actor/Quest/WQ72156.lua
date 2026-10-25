require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72156 = class("Quest72156", QuestActorProxy)
Quest72156.defaultAlias = "Quest72156"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72156:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72156:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7215602"] = self.OnSubStart7215602,
        ["7215603"] = self.OnSubStart7215603,
        ["7215604"] = self.OnSubStart7215604,
        ["7215607"] = self.OnSubStart7215607,
        ["7215601"] = self.OnSubStart7215601,
        ["7215609"] = self.OnSubStart7215609,
        ["7215610"] = self.OnSubStart7215610,
        ["7215605"] = self.OnSubStart7215605,
        ["7215608"] = self.OnSubStart7215608,
        ["7215606"] = self.OnSubStart7215606
    }
end

function Quest72156:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7215602"] = self.OnSubFinish7215602,
        ["7215603"] = self.OnSubFinish7215603,
        ["7215604"] = self.OnSubFinish7215604,
        ["7215607"] = self.OnSubFinish7215607,
        ["7215601"] = self.OnSubFinish7215601,
        ["7215609"] = self.OnSubFinish7215609,
        ["7215610"] = self.OnSubFinish7215610,
        ["7215605"] = self.OnSubFinish7215605,
        ["7215608"] = self.OnSubFinish7215608,
        ["7215606"] = self.OnSubFinish7215606
    }
end

function Quest72156:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7215602"] = self.OnSubFailed7215602,
        ["7215603"] = self.OnSubFailed7215603,
        ["7215604"] = self.OnSubFailed7215604,
        ["7215607"] = self.OnSubFailed7215607,
        ["7215601"] = self.OnSubFailed7215601,
        ["7215609"] = self.OnSubFailed7215609,
        ["7215610"] = self.OnSubFailed7215610,
        ["7215605"] = self.OnSubFailed7215605,
        ["7215608"] = self.OnSubFailed7215608,
        ["7215606"] = self.OnSubFailed7215606
    }
end

function Quest72156:Start()
    print("Start")
end

function Quest72156:OnDestroy()
    print("OnDestroy")
end

function Quest72156:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72156:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72156:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72156:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest72156:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72156:OnSubStart7215602(arg1)
    print("OnSubStart7215602")
    actorMgr:CreateActorWithPos("Q7215602Trigger", "Actor/Gadget/Q7215602Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQ72156_PanZuo2").pos, sceneData:GetDummyPoint(3, "WQ72156_PanZuo2").rot, true, false, 3)
end

function Quest72156:OnSubFinish7215602(arg1)
    print("OnSubFinish7215602")
    self:NarratorOnlyTask(datas.NarratorTableFirstZhenshi, nil, "")
end

function Quest72156:OnSubFailed7215602(arg1)
    print("OnSubFailed7215602")
end

function Quest72156:OnSubStart7215603(arg1)
    print("OnSubStart7215603")
end

function Quest72156:OnSubFinish7215603(arg1)
    print("OnSubFinish7215603")
    self:NarratorOnlyTask(datas.NarratorTableZDJieShu, nil, "")
end

function Quest72156:OnSubFailed7215603(arg1)
    print("OnSubFailed7215603")
end

function Quest72156:OnSubStart7215604(arg1)
    print("OnSubStart7215604")
end

function Quest72156:OnSubFinish7215604(arg1)
    print("OnSubFinish7215604")
end

function Quest72156:OnSubFailed7215604(arg1)
    print("OnSubFailed7215604")
end

function Quest72156:OnSubStart7215607(arg1)
    print("OnSubStart7215607")
end

function Quest72156:OnSubFinish7215607(arg1)
    print("OnSubFinish7215607")
end

function Quest72156:OnSubFailed7215607(arg1)
    print("OnSubFailed7215607")
end

function Quest72156:OnSubStart7215601(arg1)
    print("OnSubStart7215601")
end

function Quest72156:OnSubFinish7215601(arg1)
    print("OnSubFinish7215601")
end

function Quest72156:OnSubFailed7215601(arg1)
    print("OnSubFailed7215601")
end

function Quest72156:OnSubStart7215609(arg1)
    print("OnSubStart7215609")
end

function Quest72156:OnSubFinish7215609(arg1)
    print("OnSubFinish7215609")
end

function Quest72156:OnSubFailed7215609(arg1)
    print("OnSubFailed7215609")
end

function Quest72156:OnSubStart7215610(arg1)
    print("OnSubStart7215610")
end

function Quest72156:OnSubFinish7215610(arg1)
    print("OnSubFinish7215610")
end

function Quest72156:OnSubFailed7215610(arg1)
    print("OnSubFailed7215610")
end

function Quest72156:OnSubStart7215605(arg1)
    print("OnSubStart7215605")
end

function Quest72156:OnSubFinish7215605(arg1)
    print("OnSubFinish7215605")
end

function Quest72156:OnSubFailed7215605(arg1)
    print("OnSubFailed7215605")
end

function Quest72156:OnSubStart7215608(arg1)
    print("OnSubStart7215608")
    self:PlayCutsceneIndex("72156", function(arg1)
        arg1:FinishQuestID(false, 7215608)
    end, nil, nil, false)
end

function Quest72156:OnSubFinish7215608(arg1)
    print("OnSubFinish7215608")
end

function Quest72156:OnSubFailed7215608(arg1)
    print("OnSubFailed7215608")
end

function Quest72156:OnSubStart7215606(arg1)
    print("OnSubStart7215606")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc3180Data.id, 1)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc3181Data.id, 2)
    self:NpcCreateWithBlackscreen(arg1, 3180, 0)
    self:NpcCreateWithBlackscreen(arg1, 3181, 0)
    actorMgr:CreateActorWithPos("Q7215606Trigger", "Actor/Gadget/Q7215606Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQ72156_PanZuo2").pos, sceneData:GetDummyPoint(3, "WQ72156_PanZuo2").rot, true, false, 3)
end

function Quest72156:OnSubFinish7215606(arg1)
    print("OnSubFinish7215606")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3180Data.alias)
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3181Data.alias)
    self:NpcDestroyWithBlackscreen(3, "Npc3180")
    self:NpcDestroyWithBlackscreen(3, "Npc3181")
end

function Quest72156:OnSubFailed7215606(arg1)
    print("OnSubFailed7215606")
end

return Quest72156
