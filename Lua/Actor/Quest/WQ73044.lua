require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73044 = class("Quest73044", QuestActorProxy)
Quest73044.defaultAlias = "Quest73044"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73044:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73044:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7304401"] = self.OnSubStart7304401,
        ["7304402"] = self.OnSubStart7304402,
        ["7304403"] = self.OnSubStart7304403,
        ["7304404"] = self.OnSubStart7304404
    }
end

function Quest73044:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7304401"] = self.OnSubFinish7304401,
        ["7304402"] = self.OnSubFinish7304402,
        ["7304403"] = self.OnSubFinish7304403,
        ["7304404"] = self.OnSubFinish7304404
    }
end

function Quest73044:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73044:Start()
    print("Start")
end

function Quest73044:OnDestroy()
    print("OnDestroy")
end

function Quest73044:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73044:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73044:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73044:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest73044:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73044:OnSubStart7304401(arg1)
    print("OnSubStart7304401")
end

function Quest73044:OnSubFinish7304401(arg1)
    print("OnSubFinish7304401")
end

function Quest73044:OnSubStart7304402(arg1)
    print("OnSubStart7304402")
    self:NpcCreate(arg1, npcs.Npc20659Data.id, 1)
    actorMgr:CreateActorWithPos("Q73044Trigger_01", "Actor/Gadget/Q73044Trigger_01", 70900002, 0, {x = -508.938, y = 201.1, z = 2935.372}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73044:OnSubFinish7304402(arg1)
    print("OnSubFinish7304402")
end

function Quest73044:OnSubStart7304403(arg1)
    print("OnSubStart7304403")
end

function Quest73044:OnSubFinish7304403(arg1)
    print("OnSubFinish7304403")
end

function Quest73044:OnSubStart7304404(arg1)
    print("OnSubStart7304404")
end

function Quest73044:OnSubFinish7304404(arg1)
    print("OnSubFinish7304404")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20659Data.alias)
end

return Quest73044
