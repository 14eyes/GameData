require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41335 = class("Quest41335", QuestActorProxy)
Quest41335.defaultAlias = "Quest41335"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest41335:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest41335:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4133501"] = self.OnSubStart4133501,
        ["4133502"] = self.OnSubStart4133502,
        ["4133503"] = self.OnSubStart4133503,
        ["4133504"] = self.OnSubStart4133504,
        ["4133505"] = self.OnSubStart4133505,
        ["4133506"] = self.OnSubStart4133506,
        ["4133507"] = self.OnSubStart4133507,
        ["4133508"] = self.OnSubStart4133508
    }
end

function Quest41335:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4133501"] = self.OnSubFinish4133501,
        ["4133502"] = self.OnSubFinish4133502,
        ["4133503"] = self.OnSubFinish4133503,
        ["4133504"] = self.OnSubFinish4133504,
        ["4133505"] = self.OnSubFinish4133505,
        ["4133506"] = self.OnSubFinish4133506,
        ["4133507"] = self.OnSubFinish4133507,
        ["4133508"] = self.OnSubFinish4133508
    }
end

function Quest41335:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4133501"] = self.OnSubFailed4133501,
        ["4133502"] = self.OnSubFailed4133502,
        ["4133503"] = self.OnSubFailed4133503,
        ["4133504"] = self.OnSubFailed4133504,
        ["4133505"] = self.OnSubFailed4133505,
        ["4133506"] = self.OnSubFailed4133506,
        ["4133507"] = self.OnSubFailed4133507,
        ["4133508"] = self.OnSubFailed4133508
    }
end

function Quest41335:Start()
    print("Start")
end

function Quest41335:OnDestroy()
    print("OnDestroy")
end

function Quest41335:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41335:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41335:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self.ActionSafeCall(self, function()
        self:DestroyQuestNpcActor(npcs.Npc240901Data.alias, 3)
        self:DestroyQuestNpcActor(npcs.Npc220501Data.alias, 3)
        self:NotifyTo(npcs.Npc2409Data.alias, 0, true)
        self:NotifyTo(npcs.Npc2205Data.alias, 0, true)
    end)
end

function Quest41335:OnSubStart4133501(arg1)
    print("OnSubStart4133501")
    self:CreateQuestNpc(arg1, 240901, 0)
    self:NotifyTo(npcs.Npc2409Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc240901Data.alias):DoFreeStyle(1120, false, nil, true, true)
end

function Quest41335:OnSubFinish4133501(arg1)
    print("OnSubFinish4133501")
end

function Quest41335:OnSubFailed4133501(arg1)
    print("OnSubFailed4133501")
end

function Quest41335:OnSubStart4133502(arg1)
    print("OnSubStart4133502")
    self:NotifyTo(npcs.Npc2205Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2409Data.alias, 1, true)
    self:CreateQuestNpc(arg1, 220501, 0)
    actorMgr:CreateActorWithPos("Q41335Trigger", "Actor/Gadget/Q41335Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4133503QingZhou").pos, sceneData:GetDummyPoint(3, "Q4133503QingZhou").rot, true, false, 3)
end

function Quest41335:OnSubFinish4133502(arg1)
    print("OnSubFinish4133502")
end

function Quest41335:OnSubFailed4133502(arg1)
    print("OnSubFailed4133502")
end

function Quest41335:OnSubStart4133503(arg1)
    print("OnSubStart4133503")
    self:NotifyTo(npcs.Npc2205Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2409Data.alias, 1, true)
end

function Quest41335:OnSubFinish4133503(arg1)
    print("OnSubFinish4133503")
    self.ActionSafeCall(self, function()
        self:NotifyTo(npcs.Npc2205Data.alias, 0, true)
    end)
end

function Quest41335:OnSubFailed4133503(arg1)
    print("OnSubFailed4133503")
end

function Quest41335:OnSubStart4133504(arg1)
    print("OnSubStart4133504")
    actorMgr:CreateActorWithPos("Q41335Trigger1", "Actor/Gadget/Q41335Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q4133505Fanmier").pos, sceneData:GetDummyPoint(3, "Q4133505Fanmier").rot, true, false, 0)
end

function Quest41335:OnSubFinish4133504(arg1)
    print("OnSubFinish4133504")
end

function Quest41335:OnSubFailed4133504(arg1)
    print("OnSubFailed4133504")
end

function Quest41335:OnSubStart4133505(arg1)
    print("OnSubStart4133505")
    self:CreateQuestNpc(arg1, npcs.Npc240901Data.id, 0)
    self:RequestInteraction(npcs.Npc240901Data.alias)
end

function Quest41335:OnSubFinish4133505(arg1)
    print("OnSubFinish4133505")
end

function Quest41335:OnSubFailed4133505(arg1)
    print("OnSubFailed4133505")
end

function Quest41335:OnSubStart4133506(arg1)
    print("OnSubStart4133506")
    self:NotifyTo(npcs.Npc2409Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc240901Data.alias):DoFreeStyle(1190, false, nil, true, true)
end

function Quest41335:OnSubFinish4133506(arg1)
    print("OnSubFinish4133506")
end

function Quest41335:OnSubFailed4133506(arg1)
    print("OnSubFailed4133506")
end

function Quest41335:OnSubStart4133507(arg1)
    print("OnSubStart4133507")
    self:NotifyTo(npcs.Npc2409Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc240901Data.alias):DoFreeStyle(1190, false, nil, true, true)
end

function Quest41335:OnSubFinish4133507(arg1)
    print("OnSubFinish4133507")
end

function Quest41335:OnSubFailed4133507(arg1)
    print("OnSubFailed4133507")
end

function Quest41335:OnSubStart4133508(arg1)
    print("OnSubStart4133508")
    self:NotifyTo(npcs.Npc2409Data.alias, 1, true)
end

function Quest41335:OnSubFinish4133508(arg1)
    print("OnSubFinish4133508")
    self.ActionSafeCall(self, function()
        self:ShowBlackScreen(0.5, 1.0, 0.5, function()
            self:DestroyQuestNpcActor(npcs.Npc240901Data.alias, 3)
            self:NotifyTo(npcs.Npc2409Data.alias, 0, true)
        end)
    end)
end

function Quest41335:OnSubFailed4133508(arg1)
    print("OnSubFailed4133508")
end

return Quest41335
