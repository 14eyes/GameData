require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest2016 = class("Quest2016", QuestActorProxy)
Quest2016.defaultAlias = "Quest2016"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest2016:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest2016:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["201601"] = self.OnSubStart201601,
        ["201606"] = self.OnSubStart201606,
        ["201608"] = self.OnSubStart201608,
        ["201602"] = self.OnSubStart201602,
        ["201607"] = self.OnSubStart201607,
        ["201603"] = self.OnSubStart201603,
        ["201604"] = self.OnSubStart201604,
        ["201605"] = self.OnSubStart201605,
        ["201609"] = self.OnSubStart201609
    }
end

function Quest2016:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["201601"] = self.OnSubFinish201601,
        ["201606"] = self.OnSubFinish201606,
        ["201608"] = self.OnSubFinish201608,
        ["201602"] = self.OnSubFinish201602,
        ["201607"] = self.OnSubFinish201607,
        ["201603"] = self.OnSubFinish201603,
        ["201604"] = self.OnSubFinish201604,
        ["201605"] = self.OnSubFinish201605,
        ["201609"] = self.OnSubFinish201609
    }
end

function Quest2016:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["201601"] = self.OnSubFailed201601,
        ["201606"] = self.OnSubFailed201606,
        ["201608"] = self.OnSubFailed201608,
        ["201602"] = self.OnSubFailed201602,
        ["201607"] = self.OnSubFailed201607,
        ["201603"] = self.OnSubFailed201603,
        ["201604"] = self.OnSubFailed201604,
        ["201605"] = self.OnSubFailed201605,
        ["201609"] = self.OnSubFailed201609
    }
end

function Quest2016:Start()
    print("Start")
end

function Quest2016:OnDestroy()
    print("OnDestroy")
end

function Quest2016:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest2016:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest2016:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest2016:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest2016:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest2016:OnSubStart201601(arg1)
    print("OnSubStart201601")
    self.LevelLoadFinishSafeCall(self, function()
        self:TransmitPlayerWithTextById(arg1, 1, {""}, 2.5, function()
            self:CreateQuestNpcById(201601, npcs.Npc1034Data.id, 0)
            self:RequestInteraction(npcs.Npc1034Data.alias)
        end)
    end)
end

function Quest2016:OnSubFinish201601(arg1)
    print("OnSubFinish201601")
end

function Quest2016:OnSubFailed201601(arg1)
    print("OnSubFailed201601")
end

function Quest2016:OnSubStart201606(arg1)
    print("OnSubStart201606")
    actorMgr:CreateActorWithPos("Q2016Trigger", "Actor/Gadget/Q2016Trigger", 70900002, 0, {x = -2681.929, y = 221.8723, z = -4260.19}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest2016:OnSubFinish201606(arg1)
    print("OnSubFinish201606")
end

function Quest2016:OnSubFailed201606(arg1)
    print("OnSubFailed201606")
end

function Quest2016:OnSubStart201608(arg1)
    print("OnSubStart201608")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1034Data.id, 1, npcs.Npc1034Data.alias)
end

function Quest2016:OnSubFinish201608(arg1)
    print("OnSubFinish201608")
    self.ActionSafeCall(self, function()
        self:ShowTutorialDialog(2024)
    end)
end

function Quest2016:OnSubFailed201608(arg1)
    print("OnSubFailed201608")
end

function Quest2016:OnSubStart201602(arg1)
    print("OnSubStart201602")
end

function Quest2016:OnSubFinish201602(arg1)
    print("OnSubFinish201602")
end

function Quest2016:OnSubFailed201602(arg1)
    print("OnSubFailed201602")
end

function Quest2016:OnSubStart201607(arg1)
    print("OnSubStart201607")
end

function Quest2016:OnSubFinish201607(arg1)
    print("OnSubFinish201607")
end

function Quest2016:OnSubFailed201607(arg1)
    print("OnSubFailed201607")
end

function Quest2016:OnSubStart201603(arg1)
    print("OnSubStart201603")
    self:CreateQuestNpc(arg1, npcs.Npc1034Data.id, 1)
end

function Quest2016:OnSubFinish201603(arg1)
    print("OnSubFinish201603")
end

function Quest2016:OnSubFailed201603(arg1)
    print("OnSubFailed201603")
end

function Quest2016:OnSubStart201604(arg1)
    print("OnSubStart201604")
    self:CreateQuestNpc(arg1, npcs.Npc1034Data.id, 1)
end

function Quest2016:OnSubFinish201604(arg1)
    print("OnSubFinish201604")
    self:NpcDestroy(npcs.Npc1034Data.alias, 3)
end

function Quest2016:OnSubFailed201604(arg1)
    print("OnSubFailed201604")
end

function Quest2016:OnSubStart201605(arg1)
    print("OnSubStart201605")
    actorMgr:CreateActorWithPos("Q2016Trigger1", "Actor/Gadget/Q2016Trigger1", 70900002, 0, {x = -2493.415, y = 443.1654, z = -4380.014}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest2016:OnSubFinish201605(arg1)
    print("OnSubFinish201605")
end

function Quest2016:OnSubFailed201605(arg1)
    print("OnSubFailed201605")
end

function Quest2016:OnSubStart201609(arg1)
    print("OnSubStart201609")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1034Data.id, 1, npcs.Npc1034Data.alias)
end

function Quest2016:OnSubFinish201609(arg1)
    print("OnSubFinish201609")
end

function Quest2016:OnSubFailed201609(arg1)
    print("OnSubFailed201609")
end

return Quest2016
