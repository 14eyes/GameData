require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72270 = class("Quest72270", QuestActorProxy)
Quest72270.defaultAlias = "Quest72270"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72270:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72270:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7227008"] = self.OnSubStart7227008,
        ["7227009"] = self.OnSubStart7227009,
        ["7227001"] = self.OnSubStart7227001,
        ["7227002"] = self.OnSubStart7227002,
        ["7227003"] = self.OnSubStart7227003,
        ["7227004"] = self.OnSubStart7227004,
        ["7227005"] = self.OnSubStart7227005,
        ["7227006"] = self.OnSubStart7227006,
        ["7227007"] = self.OnSubStart7227007
    }
end

function Quest72270:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7227008"] = self.OnSubFinish7227008,
        ["7227009"] = self.OnSubFinish7227009,
        ["7227001"] = self.OnSubFinish7227001,
        ["7227002"] = self.OnSubFinish7227002,
        ["7227003"] = self.OnSubFinish7227003,
        ["7227004"] = self.OnSubFinish7227004,
        ["7227005"] = self.OnSubFinish7227005,
        ["7227006"] = self.OnSubFinish7227006,
        ["7227007"] = self.OnSubFinish7227007
    }
end

function Quest72270:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72270:Start()
    print("Start")
end

function Quest72270:OnDestroy()
    print("OnDestroy")
end

function Quest72270:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72270:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72270:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72270:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest72270:NpcDestroyWithDither(arg1, arg2)
    self:GetQuestNpcActor(arg1):DestroyWithDither(false, 1)
    self:CallDelay(1, function(arg1_2)
        arg1_2:DestroyQuestNpcActor(arg1, arg2)
    end)
end

function Quest72270:OnSubStart7227008(arg1)
    print("OnSubStart7227008")
    actorMgr:CreateActorWithPos("Q7227008Trigger", "Actor/Gadget/Q7227008Trigger", 70900002, 0, {x = -323.5936, y = 213.1751, z = 366.6005}, {x = 0, y = 0, z = 0}, true, false, 5)
end

function Quest72270:OnSubFinish7227008(arg1)
    print("OnSubFinish7227008")
end

function Quest72270:OnSubStart7227009(arg1)
    print("OnSubStart7227009")
    actorMgr:CreateActorWithPos("Q7227009Trigger", "Actor/Gadget/Q7227009Trigger", 70900002, 0, {x = -322.6976, y = 316.3406, z = 367.2787}, {x = 0, y = 0, z = 0}, true, false, 5)
end

function Quest72270:OnSubFinish7227009(arg1)
    print("OnSubFinish7227009")
end

function Quest72270:OnSubStart7227001(arg1)
    print("OnSubStart7227001")
    self:NpcCreate(arg1, npcs.NPC20496Data.id, 1)
end

function Quest72270:OnSubFinish7227001(arg1)
    print("OnSubFinish7227001")
    self:GetQuestNpcActor(npcs.NPC20496Data.alias):DestroyWithDither(false, 0.5)
end

function Quest72270:OnSubStart7227002(arg1)
    print("OnSubStart7227002")
end

function Quest72270:OnSubFinish7227002(arg1)
    print("OnSubFinish7227002")
end

function Quest72270:OnSubStart7227003(arg1)
    print("OnSubStart7227003")
end

function Quest72270:OnSubFinish7227003(arg1)
    print("OnSubFinish7227003")
end

function Quest72270:OnSubStart7227004(arg1)
    print("OnSubStart7227004")
end

function Quest72270:OnSubFinish7227004(arg1)
    print("OnSubFinish7227004")
end

function Quest72270:OnSubStart7227005(arg1)
    print("OnSubStart7227005")
end

function Quest72270:OnSubFinish7227005(arg1)
    print("OnSubFinish7227005")
end

function Quest72270:OnSubStart7227006(arg1)
    print("OnSubStart7227006")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.NPC20496Data.id, 1)
    end)
end

function Quest72270:OnSubFinish7227006(arg1)
    print("OnSubFinish7227006")
end

function Quest72270:OnSubStart7227007(arg1)
    print("OnSubStart7227007")
end

function Quest72270:OnSubFinish7227007(arg1)
    print("OnSubFinish7227007")
    self:NpcDestroyWithDither(npcs.NPC20496Data.alias, 5)
    self:ActionSafeCall(function(arg1)
        arg1:PlayCutsceneIndex("7217706", nil, nil, nil, false)
    end)
end

return Quest72270
