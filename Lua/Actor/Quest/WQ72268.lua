require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72268 = class("Quest72268", QuestActorProxy)
Quest72268.defaultAlias = "Quest72268"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72268:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72268:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7226808"] = self.OnSubStart7226808,
        ["7226809"] = self.OnSubStart7226809,
        ["7226801"] = self.OnSubStart7226801,
        ["7226802"] = self.OnSubStart7226802,
        ["7226803"] = self.OnSubStart7226803,
        ["7226804"] = self.OnSubStart7226804,
        ["7226805"] = self.OnSubStart7226805,
        ["7226806"] = self.OnSubStart7226806,
        ["7226807"] = self.OnSubStart7226807
    }
end

function Quest72268:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7226808"] = self.OnSubFinish7226808,
        ["7226809"] = self.OnSubFinish7226809,
        ["7226801"] = self.OnSubFinish7226801,
        ["7226802"] = self.OnSubFinish7226802,
        ["7226803"] = self.OnSubFinish7226803,
        ["7226804"] = self.OnSubFinish7226804,
        ["7226805"] = self.OnSubFinish7226805,
        ["7226806"] = self.OnSubFinish7226806,
        ["7226807"] = self.OnSubFinish7226807
    }
end

function Quest72268:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72268:Start()
    print("Start")
end

function Quest72268:OnDestroy()
    print("OnDestroy")
end

function Quest72268:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72268:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72268:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72268:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest72268:NpcDestroyWithDither(arg1, arg2)
    self:GetQuestNpcActor(arg1):DestroyWithDither(false, 1)
    self:CallDelay(1, function(arg1_2)
        arg1_2:DestroyQuestNpcActor(arg1, arg2)
    end)
end

function Quest72268:OnSubStart7226808(arg1)
    print("OnSubStart7226808")
    actorMgr:CreateActorWithPos("Q7226808Trigger", "Actor/Gadget/Q7226808Trigger", 70900002, 0, {x = 698.6118, y = 240.8, z = 549.3121}, {x = 0, y = 0, z = 0}, true, false, 5)
end

function Quest72268:OnSubFinish7226808(arg1)
    print("OnSubFinish7226808")
end

function Quest72268:OnSubStart7226809(arg1)
    print("OnSubStart7226809")
    actorMgr:CreateActorWithPos("Q7226809Trigger", "Actor/Gadget/Q7226809Trigger", 70900002, 0, {x = 698.9225, y = 320.7158, z = 549.1904}, {x = 0, y = 0, z = 0}, true, false, 5)
end

function Quest72268:OnSubFinish7226809(arg1)
    print("OnSubFinish7226809")
end

function Quest72268:OnSubStart7226801(arg1)
    print("OnSubStart7226801")
    self:NpcCreate(arg1, npcs.NPC20495Data.id, 1)
end

function Quest72268:OnSubFinish7226801(arg1)
    print("OnSubFinish7226801")
    self:GetQuestNpcActor(npcs.NPC20495Data.alias):DestroyWithDither(false, 0.5)
end

function Quest72268:OnSubStart7226802(arg1)
    print("OnSubStart7226802")
end

function Quest72268:OnSubFinish7226802(arg1)
    print("OnSubFinish7226802")
end

function Quest72268:OnSubStart7226803(arg1)
    print("OnSubStart7226803")
end

function Quest72268:OnSubFinish7226803(arg1)
    print("OnSubFinish7226803")
end

function Quest72268:OnSubStart7226804(arg1)
    print("OnSubStart7226804")
end

function Quest72268:OnSubFinish7226804(arg1)
    print("OnSubFinish7226804")
end

function Quest72268:OnSubStart7226805(arg1)
    print("OnSubStart7226805")
end

function Quest72268:OnSubFinish7226805(arg1)
    print("OnSubFinish7226805")
end

function Quest72268:OnSubStart7226806(arg1)
    print("OnSubStart7226806")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.NPC20495Data.id, 1)
    end)
end

function Quest72268:OnSubFinish7226806(arg1)
    print("OnSubFinish7226806")
end

function Quest72268:OnSubStart7226807(arg1)
    print("OnSubStart7226807")
end

function Quest72268:OnSubFinish7226807(arg1)
    print("OnSubFinish7226807")
    self:NpcDestroyWithDither(npcs.NPC20495Data.alias, 5)
    self:ActionSafeCall(function(arg1)
        arg1:PlayCutsceneIndex("7217705", nil, nil, nil, false)
    end)
end

return Quest72268
